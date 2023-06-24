#include <xc.h>
#include "cabecera.h"
#include "LCD.h"
#include "PCF8574.h"
#define _XTAL_FREQ 4000000UL

void configuro(void){
    OSCCON = 0x62;
    LCD_INIT();
    MSSP_INIT();
    PCA9685_WR(0x80,0x00,0x21);     //inicializacion del PCA9685
    PCA9685_WR(0x80,0x06,0x99);     //ledon L
    PCA9685_WR(0x80,0x07,0x01);     //ledon H
    PCA9685_WR(0x80,0x08,0x66);     //ledof L
    PCA9685_WR(0x80,0x09,0x06);     //ledof H
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
        LCD_VARCHAR_BITS(PCF8574_RD(0x43));
        PCF8574_WR(0x40,PCF8574_RD(0x43));
    }
}
