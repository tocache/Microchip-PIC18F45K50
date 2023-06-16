#include <xc.h>
#include "cabecera.h"
#include "LCD.h"
#define _XTAL_FREQ 4000000UL

void configuro(void){
    OSCCON = 0x52;              //configuracion del oscilador interno a 4MHz
    TRISAbits.RA0 = 0;          //ra0 salida
    ANSELAbits.ANSA0 = 0;       //ra0 digital
    TRISBbits.RB1 = 1;          //rb1 entrada
    ANSELBbits.ANSB1 = 0;       //rb1 digital
    TRISBbits.RB0 = 1;          //rb0 entrada
    ANSELBbits.ANSB0 = 0;       //rb0 digital
    TRISCbits.RC6 = 0;          //rc6 salida
    ANSELCbits.ANSC6 = 0;       //rc6 digital
    TRISCbits.RC7 = 1;          //rc7 entrada
    ANSELCbits.ANSC7 = 0;       //rc7 digital
    TRISD = 0x0F;               //rd4-rd7 salidas
    ANSELD = 0x0F;              //rd4-rd7 digitales
    TRISE = 0xF8;               //re0-re2 salidas
    ANSELE = 0xF8;              //re0-re2 digitales
    LCD_INIT();                 //inicializacion del LCD
}

void splash_screen(void){
    POS_CURSOR(1,0);
    ESCRIBE_MENSAJE2("Hola mundo");
    POS_CURSOR(2,0);
    ESCRIBE_MENSAJE2("UPC Monterrico");
    __delay_ms(3000);
    POS_CURSOR(1,0);
    ESCRIBE_MENSAJE2("Micro 2023-1");
    POS_CURSOR(2,0);
    ESCRIBE_MENSAJE2("Esforzandome!!!");
    __delay_ms(3000);
    BORRAR_LCD();
}

void main(void) {
    configuro();
    splash_screen();
    while(1);
}
