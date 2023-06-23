#include <xc.h>
#include "cabecera.h"
#include "LCD.h"
#define _XTAL_FREQ 4000000UL

const unsigned char prueba = 15;

void configuro(void){
    OSCCON = 0x52;
    LCD_INIT();
}

void splash_msg(void){
    POS_CURSOR(1,0);
    ESCRIBE_MENSAJE2("Micro 2023-1");
    POS_CURSOR(2,0);
    ESCRIBE_MENSAJE2("Semana 14 i2c");
    __delay_ms(2000);
    BORRAR_LCD();
}

void main(void) {
    configuro();
    splash_msg();
    while(1){
        POS_CURSOR(1,0);
        LCD_ESCRIBE_VAR_CHAR(prueba,2);
    }
}
