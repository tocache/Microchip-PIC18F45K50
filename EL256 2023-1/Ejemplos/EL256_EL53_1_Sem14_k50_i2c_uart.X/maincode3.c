#include <xc.h>
#include "cabecera.h"
#include "LCD.h"
#include "pcf8574.h"
#define _XTAL_FREQ 4000000UL

void configuro(void){
    OSCCON = 0x52;
    LCD_INIT();
    pcf8574_init();
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
        pcf8574_write(0x40, pcf8574_read(0x43));
        POS_CURSOR(1,0);
        ESCRIBE_MENSAJE2("BIN:");
        LCD_VARCHAR_BITS(pcf8574_read(0x43));
        POS_CURSOR(2,0);
        ESCRIBE_MENSAJE2("DEC:");
        LCD_ESCRIBE_VAR_CHAR(pcf8574_read(0x43),3);
    }
}



