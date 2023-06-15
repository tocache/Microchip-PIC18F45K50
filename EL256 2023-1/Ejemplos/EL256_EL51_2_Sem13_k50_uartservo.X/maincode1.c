#include <xc.h>
#include "cabecera.h"
#include "LCD.h"
#define _XTAL_FREQ 4000000UL

void configuro(void){
    OSCCON = 0x52;
    TRISAbits.RA0 = 0;
    ANSELAbits.ANSA0 = 0;
    TRISBbits.RB1 = 1;
    ANSELBbits.ANSB1 = 0;
    TRISBbits.RB0 = 1;
    ANSELBbits.ANSB0 = 0;
    INTCON2bits.RBPU = 0;
    WPUBbits.WPUB1 = 1;
    WPUBbits.WPUB0 = 1;
    TRISCbits.RC7 = 1;
    ANSELCbits.ANSC7 = 0;
    TRISCbits.RC6 = 0;
    ANSELCbits.ANSC6 = 0;
    TRISD = 0x0F;
    ANSELD = 0x0F;
    TRISE = 0xF8;
    ANSELE = 0xF8;
    INTCON2bits.INTEDG1 = 0;
    INTCON2bits.INTEDG0 = 0;
    RCONbits.IPEN = 1;
    INTCONbits.GIEH = 1;
    INTCONbits.GIEL = 1;
    INTCONbits.INT0IE = 1;
    INTCON3bits.INT1IE = 1;
    INTCON3bits.INT1IP = 0;
    LCD_INIT();
}

void pantallazo(void){
    POS_CURSOR(1,0);
    ESCRIBE_MENSAJE2("Semana 13");
    POS_CURSOR(2,0);
    ESCRIBE_MENSAJE2("Micro PIC18");
    __delay_ms(3000);
    BORRAR_LCD();
}

void main(void) {
    configuro();
    pantallazo();
    while(1);
}

void __interrupt(high_priority) INT0_ISR(void){
    INTCONbits.INT0IF = 0;
    POS_CURSOR(1,0);
    ESCRIBE_MENSAJE2("Presionaste INT0");
    __delay_ms(3000);
    BORRAR_LCD();
}

void __interrupt(low_priority) INT1_ISR(void){
    INTCON3bits.INT1IF = 0;
    POS_CURSOR(1,0);
    ESCRIBE_MENSAJE2("Presionaste INT1");
    __delay_ms(3000);
    BORRAR_LCD();
}