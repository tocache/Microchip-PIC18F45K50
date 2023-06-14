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
    WPUBbits.WPUB0 = 1;
    WPUBbits.WPUB1 = 1;
    RCONbits.IPEN = 1;
    INTCONbits.GIEH = 1;
    INTCONbits.GIEL = 1;
    INTCONbits.INT0IE = 1;
    INTCON2bits.INTEDG0 = 0;
    INTCON3bits.INT1E = 1;
    INTCON3bits.INT1IP = 0;
    INTCON2bits.INTEDG1 = 0;
    TRISCbits.RC6 = 0;
    ANSELCbits.ANSC6 = 0;
    SPBRGH1 = 0;
    SPBRG1 = 25;        //baudrate 9600
    TXSTA1 = 0x24;      //TXEN=1, BRGH=1; aync
    RCSTA1 = 0x80;      //SPEN=1;
    LCD_INIT();
}

void pantallazo(void){
    POS_CURSOR(1,0);
    ESCRIBE_MENSAJE2("Hola Mundo!");
    POS_CURSOR(2,0);
    ESCRIBE_MENSAJE2("Micro semana 13");
    __delay_ms(2000);
    BORRAR_LCD();
}

void EUSART_Sendbyte(unsigned char dato){
    TXREG1 = dato;
    while(TXSTA1bits.TRMT == 0);
}

void main(void) {
    configuro();
    pantallazo();
    while(1){
        
    }
}

void __interrupt(high_priority) INT0_ISR(void){
    INTCONbits.INT0IF = 0;
    EUSART_Sendbyte('H');
    EUSART_Sendbyte('o');
    EUSART_Sendbyte('l');
    EUSART_Sendbyte('a');
    pantallazo();
}

void __interrupt(low_priority) INT1_ISR(void){
    INTCON3bits.INT1IF = 0;
    EUSART_Sendbyte('m');
    EUSART_Sendbyte('u');
    EUSART_Sendbyte('n');
    EUSART_Sendbyte('d');
    EUSART_Sendbyte('o');
    pantallazo();
}