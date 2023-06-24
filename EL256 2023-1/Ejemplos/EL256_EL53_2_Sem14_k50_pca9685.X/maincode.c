#include <xc.h>
#include "cabecera.h"
#include "LCD.h"
#define _XTAL_FREQ 4000000UL

void configuro(void){
    OSCCON = 0x52;
    LCD_INIT();
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
        ESCRIBE_MENSAJE2("Contador auto");
        unsigned int cuenta;
        for(cuenta=0;cuenta<=65535;cuenta++){
            POS_CURSOR(2,0);
            LCD_ESCRIBE_VAR_INT(cuenta,0);
            //__delay_ms(200);
        }
    }
    
}
