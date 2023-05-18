#include <xc.h>
#include "cabecera.h"
#include "LCD.h"
#define _XTAL_FREQ 4000000UL

unsigned char e_acento[]={0x02,0x04,0x0E,0x11,0x1F,0x10,0x0E,0x00};
unsigned char cuenta = 0;
unsigned char centena = 0;
unsigned char decena = 0;
unsigned char unidad = 0;

void configuro(void){
    OSCCON = 0x52;              //INTOSC a 4MHz
    TRISD = 0x00;               //RD como salida
    ANSELD = 0x00;              //RD como digital
    TRISBbits.RB0 = 1;          //RB0 como entrada
    ANSELBbits.ANSB0 = 0;       //RB0 como digital
    INTCON2bits.RBPU = 0;       //weak pullup en RB activados
    TRISCbits.RC2 = 0;          //RC2 como salida
    ANSELCbits.ANSC2 = 0;       //RC2 como digital
    TRISAbits.RA0 = 1;          //RA0 como entrada
    ANSELAbits.ANSA0 = 1;       //RA0 como analogica
}

void LCD_init(void){
    __delay_ms(18);
    LCD_CONFIG();
    BORRAR_LCD();
    CURSOR_HOME();
    CURSOR_ONOFF(OFF);
    LATCbits.LC2 = 1;
    GENERACARACTER(e_acento,0);
}

void convierte(char numero){
    centena = numero / 100;
    decena = (numero % 100) / 10;
    unidad = numero % 10;
}

void main(void) {
    configuro();
    LCD_init();
    POS_CURSOR(1,0);
    ESCRIBE_MENSAJE("Con fe aprobar",14);
    ENVIA_CHAR(0);
    while(1){
        POS_CURSOR(2,0);
        ESCRIBE_MENSAJE("Cuenta:",7);
        convierte(cuenta);
        ENVIA_CHAR(centena+0x30);
        ENVIA_CHAR(decena+0x30);
        ENVIA_CHAR(unidad+0x30);
        if(cuenta==60){
            cuenta=0;
        }
        else{
            cuenta++;
        }
        __delay_ms(50);
    }
}
