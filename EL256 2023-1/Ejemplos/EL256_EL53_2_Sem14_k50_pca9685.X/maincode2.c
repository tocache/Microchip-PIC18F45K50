#include <xc.h>
#include "cabecera.h"
#include "LCD.h"
#include "PCF8574.h"
#define _XTAL_FREQ 4000000UL

void configuro(void){
    OSCCON = 0x52;
    LCD_INIT();
    MSSP_INIT();
}

void splash_msg(void){
    POS_CURSOR(1,0);
    ESCRIBE_MENSAJE2("Micro 20231 EL53");
    POS_CURSOR(2,0);
    ESCRIBE_MENSAJE2("Semana 14 ya fui");
    __delay_ms(3000);
    BORRAR_LCD();
}

void main(void) {
    configuro();
    splash_msg();
    while(1){
        POS_CURSOR(1,0);
        ESCRIBE_MENSAJE2("Prueba PCF8574");
        POS_CURSOR(2,0);
        ESCRIBE_MENSAJE2("Escribiendo 0x55");
        PCF8574_WR(0x40,0x55);
    }
    
}
