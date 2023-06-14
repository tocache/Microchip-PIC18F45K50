#include <xc.h>
#include "cabecera.h"
#include "LCD.h"
#define _XTAL_FREQ 4000000UL

void configuro(void){
    OSCCON = 0x52;
    TRISE = 0xF8;
    ANSELE = 0xF8;
    TRISD = 0x0F;
    ANSELD = 0x0F;
    TRISBbits.TRISB0 = 1;
    ANSELBbits.ANSB0 = 0;
    TRISBbits.TRISB1 = 1;
    ANSELBbits.ANSB1 = 0;
    INTCON2bits.RBPU = 0;
    WPUBbits.WPUB4 = 1;
    RCONbits.IPEN = 1;
    INTCONbits.GIEL = 1;
    INTCON3bits.INT1E = 1;
    INTCON3bits.INT1IP = 0;
    LCD_INIT();
}

void pantallazo(void){
    POS_CURSOR(1,0);
    ESCRIBE_MENSAJE2("Hola Mundo!");
    POS_CURSOR(2,0);
    ESCRIBE_MENSAJE2("Micro semana 13");
    __delay_ms(4000);
    BORRAR_LCD();
}


void main(void) {
    configuro();
    pantallazo();
    while(1){
        
    }
}

void __interrupt(low_priority) INT1_ISR(void){
    INTCON3bits.INT1IF = 0;
    pantallazo();
}