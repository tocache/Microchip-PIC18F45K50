#include <xc.h>
#include <string.h>
#include "cabecera.h"
#include "LCD.h"
#define _XTAL_FREQ 4000000UL

void configuro(void){
    //configuracion del oscilador interno
    OSCCON = 0x52;
    //configuracion de las E/S
    TRISAbits.RA0 = 0;          //ra0 salida
    ANSELAbits.ANSA0 = 0;       //ra0 digital
    TRISB = 0xF3;               //rb0 y rb1 entradas, rb2 y rb3 salidas
    ANSELB = 0xF0;              //rb0 al rb3 digitales
    TRISCbits.RC6 = 0;          //rc6 salida
    ANSELCbits.ANSC6 = 0;       //rc6 digital
    TRISCbits.RC7 = 1;          //rc7 entrada
    ANSELCbits.ANSC7 = 0;       //rc7 digital
    TRISD = 0x0F;               //rd4 al rd7 salidas
    ANSELD = 0x0F;              //rd4 al rd7 digitales
    TRISE = 0xF8;               //re0 al re2 salidas
    ANSELE = 0xF8;              //re0 al re2 digitales
    //configuracion de las interrupciones
    INTCON2bits.nRBPU = 0;      //pullup de rb enabled
    WPUB = 0x03;                //pullup de rb0 y rb1 activadas
    INTCON2bits.INTEDG0 = 0;    //falling edge para INT0
    INTCON2bits.INTEDG1 = 0;    //falling edge para INT1
    RCONbits.IPEN = 1;          //interrupt priority enabled
    INTCONbits.GIEH = 1;        //global high priority interrupt enabled
    INTCONbits.GIEL = 1;        //global low priority interrupt enabled 
    INTCONbits.INT0IE = 1;      //INT0 enabled
    INTCON3bits.INT1IE = 1;     //INT1 enabled
    INTCON3bits.INT1IP = 0;     //INT1 para la low priority
    LCD_INIT();
    //configuracion del EUSART
    TXSTAbits.BRGH = 1;
    SPBRGH1 = 0;
    SPBRG1 = 25;                //vtx es 9600
    TXSTAbits.TXEN = 1;         //transmisor del eusart enabled
    RCSTAbits.SPEN = 1;         //puerto serial enabled
}

void EUSART_SendByte(unsigned char dato){
    TXREG1 = dato;
    while(TXSTAbits.TRMT == 0);
}

void EUSART_SendString(unsigned char *cadenasa){
    unsigned char tam;
    tam = strlen(cadenasa);
    unsigned char x;
    for(x=0;x<tam;x++){
        EUSART_SendByte(cadenasa[x]);
    }
}

void EUSART_NewLine(void){
    TXREG1 = 0x0D;
    while(TXSTAbits.TRMT == 0);
    TXREG1 = 0x0A;
    while(TXSTAbits.TRMT == 0);
}

void pantallazo(void){
    POS_CURSOR(1,0);
    ESCRIBE_MENSAJE2("Micro 2023-1");
    POS_CURSOR(2,0);
    ESCRIBE_MENSAJE2("Semana 13");
    EUSART_SendString("Hola mundo");
    EUSART_NewLine();
    EUSART_SendString("Soy el pic18, hazme caso");
    EUSART_NewLine();
    __delay_ms(3000);
    BORRAR_LCD();
}

void main(void) {
    configuro();
    pantallazo();
    while(1);
}

void __interrupt(high_priority) INT0_ISR(void){
    INTCONbits.INT0IF = 0;
    POS_CURSOR(1,0);
    ESCRIBE_MENSAJE2("Servomotor      ");
    POS_CURSOR(2,0);
    ESCRIBE_MENSAJE2("moviendose a  0");
    ENVIA_CHAR(0xDF);
    EUSART_SendString("Moviendo servomotor a cero grados");
    EUSART_NewLine();
    unsigned char x;
    for(x=0;x<50;x++){
        LATAbits.LA0 = 1;
        __delay_us(700);
        LATAbits.LA0 = 0;
        __delay_us(19300);
    }
    BORRAR_LCD();
}

void __interrupt(low_priority) INT1_ISR(void){
    INTCON3bits.INT1IF = 0;
    POS_CURSOR(1,0);
    ESCRIBE_MENSAJE2("Servomotor      ");
    POS_CURSOR(2,0);
    ESCRIBE_MENSAJE2("moviendo a  180");
    ENVIA_CHAR(0xDF);
    EUSART_SendString("Moviendo servomotor a 180 grados");
    EUSART_NewLine();
    unsigned char x;
    for(x=0;x<50;x++){
        LATAbits.LA0 = 1;
        __delay_us(2300);
        LATAbits.LA0 = 0;
        __delay_us(17700);
    }
    BORRAR_LCD();
}