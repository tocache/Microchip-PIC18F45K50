#include <xc.h>
#include <string.h>
#include "cabecera.h"
#include "LCD.h"
#define _XTAL_FREQ 4000000UL

void configuro(void){
    OSCCON = 0x52;
    TRISAbits.RA0 = 0;      //ra0 salida
    ANSELAbits.ANSA0 = 0;   //ra0 digital
    TRISB = 0xFF;           //rb0 y rb1 entradas
    ANSELB = 0xFC;          //rb0 y rb1 digitales
    INTCON2bits.RBPU = 0;   //rb pullup activadas
    WPUB = 0x03;            //rb1 y rb0 pullup habilitadas
    TRISCbits.RC6 = 0;      //rc6 salida
    ANSELCbits.ANSC6 = 0;   //rc6 digital
    TRISCbits.RC7 = 1;      //rc7 entrada
    ANSELCbits.ANSC7 = 0;   //rc7 digital
    TRISD = 0x0F;           //rd4 al rd7 salidas
    ANSELD = 0x0F;          //rd4 al rd7 digitales
    TRISE = 0xF8;           //re0 al re2 salidas
    ANSELE = 0xF8;          //re0 al re2 digitales
    //configuracion del puerto serial uart
    SPBRGH1 = 0;             //9600 la velocidad de transmision de datos
    SPBRG1 = 25;
    TXSTAbits.BRGH = 1;
    RCSTAbits.SPEN = 1;     //puerto serial encendido
    TXSTAbits.TXEN = 1;     //transmisor encendido
    RCSTAbits.CREN = 1;     //receptor habilitado
    PIE1bits.RC1IE = 1;     //interrupcion de recepcion
    INTCONbits.GIE = 1;
    
    LCD_INIT();

}

void EUSART_Datasend(unsigned char dato){
    TXREG1 = dato;
    while(TXSTAbits.TRMT == 0);
}

void EUSART_Stringsend(unsigned *cadena){
    unsigned char tam=0;
    tam = strlen(cadena);
    unsigned x_var=0;
    for(x_var=0;x_var<tam;x_var++){
        EUSART_Datasend(cadena[x_var]);
    }
}

void EUSART_Newline(void){
    TXREG1 = 0x0A;
    while(TXSTAbits.TRMT == 0);
    TXREG1 = 0x0D;
    while(TXSTAbits.TRMT == 0);
}

void pantallazo_inicial(void){
    POS_CURSOR(1,0);
    ESCRIBE_MENSAJE2("Micro semana 13");
    POS_CURSOR(2,0);
    ESCRIBE_MENSAJE2("rendirse jamas");
    __delay_ms(3000);
    BORRAR_LCD();
}

void main(void) {
    configuro();
    pantallazo_inicial();
    while(1){
        if(PORTBbits.RB0 == 0){
            POS_CURSOR(1,0);
            ESCRIBE_MENSAJE2("mandando hola");
            EUSART_Stringsend("Hola mundo");
            EUSART_Newline();
            __delay_ms(1000);
            BORRAR_LCD();
        }
    }
}

void __interrupt() EUSART_RX_ISR(void){
    PIR1bits.RC1IF = 0;
    switch(RCREG1){
        case 'A':
            EUSART_Stringsend("Machucaste la A");
            EUSART_Newline();
            break;
        case 'B':
            EUSART_Stringsend("Machucaste la B");
            EUSART_Newline();
            break;
        case 'c':
            EUSART_Stringsend("Machucaste la C");
            EUSART_Newline();
            break;
        default:
            EUSART_Stringsend("Teclada errada wean");
            EUSART_Newline();
            break;
    }
}