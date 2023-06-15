#include <xc.h>
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
    LCD_INIT();
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
        unsigned char x_var;
        POS_CURSOR(1,0);
        ESCRIBE_MENSAJE2("Movimiento servo");
        POS_CURSOR(2,0);
        ESCRIBE_MENSAJE2("Posicion 000");
        ENVIA_CHAR(0xDF);
        for(x_var=0;x_var<100;x_var++){
            LATAbits.LA0 = 1;
            __delay_us(700);
            LATAbits.LA0 = 0;
            __delay_us(19300);
        }
        POS_CURSOR(1,0);
        ESCRIBE_MENSAJE2("Movimiento servo");
        POS_CURSOR(2,0);
        ESCRIBE_MENSAJE2("Posicion 180");
        ENVIA_CHAR(0xDF);
        for(x_var=0;x_var<100;x_var++){
            LATAbits.LA0 = 1;
            __delay_us(2300);
            LATAbits.LA0 = 0;
            __delay_us(17700);
        }
    }
}
