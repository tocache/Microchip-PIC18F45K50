#include <xc.h>
#include <string.h>
#include "cabecera.h"
#include "LCD.h"
#define _XTAL_FREQ 4000000UL

void configuro(void){
    OSCCON = 0x52;              //configuracion del oscilador interno a 4MHz
    TRISAbits.RA0 = 0;          //ra0 salida
    ANSELAbits.ANSA0 = 0;       //ra0 digital
    TRISBbits.RB1 = 1;          //rb1 entrada
    ANSELBbits.ANSB1 = 0;       //rb1 digital
    TRISBbits.RB0 = 1;          //rb0 entrada
    ANSELBbits.ANSB0 = 0;       //rb0 digital
    TRISCbits.RC6 = 0;          //rc6 salida
    ANSELCbits.ANSC6 = 0;       //rc6 digital
    TRISCbits.RC7 = 1;          //rc7 entrada
    ANSELCbits.ANSC7 = 0;       //rc7 digital
    TRISD = 0x0F;               //rd4-rd7 salidas
    ANSELD = 0x0F;              //rd4-rd7 digitales
    TRISE = 0xF8;               //re0-re2 salidas
    ANSELE = 0xF8;              //re0-re2 digitales
    LCD_INIT();                 //inicializacion del LCD
    //configuracion de interrupciones
    INTCON2bits.RBPU = 0;       //pullup activadas en rb
    WPUB = 0x03;                //pullup habilitadas para rb0 y rb1
    INTCONbits.INT0IE = 1;      //INT0 activada
    INTCON3bits.INT1IE = 1;     //INT1 activada
    INTCONbits.GIE = 1;         //habilitador global de ints activada
    INTCONbits.PEIE = 1;        //habilitador de interrupciones de perifericos
    //configuracion del EUSART
    TXSTAbits.BRGH = 1;
    SPBRGH1 = 0;
    SPBRG1 = 25;                //vtx es 9600 baudios
    TXSTAbits.TXEN = 1;         //transmisor del EUSART encendido
    RCSTAbits.SPEN = 1;         //EUSART encendido
    RCSTAbits.CREN = 1;         //receptor del EUSART encendido
    PIE1bits.RC1IE = 1;         //interrupcion de recepcion encendida
}

void EUSART_ByteSend(unsigned char dato){
    TXREG1 = dato;
    while(TXSTAbits.TRMT == 0);
}

void EUSART_NewLine(void){
    TXREG1 = 0x0A;
    while(TXSTAbits.TRMT == 0);
    TXREG1 = 0x0D;
    while(TXSTAbits.TRMT == 0);
}

void EUSART_StringSend(unsigned char *cadenon){
    unsigned char tamano;
    tamano = strlen(cadenon);
    unsigned char x;
    for(x=0;x<tamano;x++){
        EUSART_ByteSend(cadenon[x]);
    }
}

void splash_screen(void){
    POS_CURSOR(1,0);
    ESCRIBE_MENSAJE2("Hola mundo");
    POS_CURSOR(2,0);
    ESCRIBE_MENSAJE2("UPC Monterrico");
    EUSART_StringSend("Hola mundo");
    EUSART_NewLine();
    EUSART_StringSend("UPC Monterrico");
    EUSART_NewLine();
    __delay_ms(3000);
    POS_CURSOR(1,0);
    ESCRIBE_MENSAJE2("Micro 2023-1");
    POS_CURSOR(2,0);
    ESCRIBE_MENSAJE2("Esforzandome!!!");
    EUSART_StringSend("Micro 2023-1");
    EUSART_NewLine();
    EUSART_StringSend("Esforzandome!!!");
    EUSART_NewLine();
    __delay_ms(3000);
    BORRAR_LCD();
}

void main(void) {
    configuro();
    splash_screen();
    while(1);
}

void __interrupt() INT0_INT1_ISR(void){
    unsigned char x;
    if(PIR1bits.RC1IF == 1){
        switch(RCREG1){
            case 'A':
                EUSART_StringSend("Presionaste A");
                EUSART_NewLine();
                break;
            case 'E':
                EUSART_StringSend("Presionaste E");
                EUSART_NewLine();
                break;
            case 'I':
                EUSART_StringSend("Presionaste I");
                EUSART_NewLine();
                break;
            case 'O':
                EUSART_StringSend("Presionaste O");
                EUSART_NewLine();
                break;
            case 'U':
                EUSART_StringSend("Presionaste U");
                EUSART_NewLine();
                break;
            default:
                EUSART_StringSend("Tecla errada intente de nuevo");
                EUSART_NewLine();
                break;
        }
    }
    else if(INTCONbits.INT0IF == 1){
        //cuando hayas machucado BTN0
        INTCONbits.INT0IF = 0;
        POS_CURSOR(1,0);
        ESCRIBE_MENSAJE2("Moviendo servo");
        POS_CURSOR(2,0);
        ESCRIBE_MENSAJE2("Angulo: 000");
        ENVIA_CHAR(0xDF);
        EUSART_StringSend("Moviendo servo a 0 grados");
        EUSART_NewLine();
        for(x=0;x<80;x++){
            LATAbits.LA0 = 1;
            __delay_us(700);
            LATAbits.LA0 = 0;
            __delay_us(19300);
        }
        BORRAR_LCD();
    }
    else if(INTCON3bits.INT1IF == 1){
        //cuando hayas machucado BTN1
        INTCON3bits.INT1IF = 0;
        POS_CURSOR(1,0);
        ESCRIBE_MENSAJE2("Moviendo servo");
        POS_CURSOR(2,0);
        ESCRIBE_MENSAJE2("Angulo: 180");
        ENVIA_CHAR(0xDF);
        EUSART_StringSend("Moviendo servo a 180 grados");
        EUSART_NewLine();
        for(x=0;x<80;x++){
            LATAbits.LA0 = 1;
            __delay_us(2300);
            LATAbits.LA0 = 0;
            __delay_us(17700);
        }
        BORRAR_LCD();
    }
}