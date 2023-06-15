#include <xc.h>
#include <string.h>
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
    TRISCbits.RC6 = 0;          //rc6 es salida
    ANSELCbits.ANSC6 = 0;       //rc6 es digital
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
    SPBRGH1 = 0;
    SPBRG1 = 25;            //vtx 9600
    TXSTA1bits.BRGH = 1;    //brgh = 1
    TXSTA1bits.TXEN = 1;    //tx enabled
    RCSTA1bits.SPEN = 1;    //serial port enabled
    LCD_INIT();
}

void EUSART_Datasend(unsigned char dato){
    TXREG1 = dato;
    while(TXSTA1bits.TRMT == 0);
}

void EUSART_Newline(void){
    TXREG1 = 0x0A;
    while(TXSTA1bits.TRMT == 0);
    TXREG1 = 0x0D;
    while(TXSTA1bits.TRMT == 0);
}

void EUSART_Stringsend(unsigned char *cadena){
    unsigned char tam;
    tam = strlen(cadena);
    unsigned char x_var;
    for(x_var=0;x_var<tam;x_var++){
        EUSART_Datasend(cadena[x_var]);
    }
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
    ESCRIBE_MENSAJE2("Servo a 0");
    ENVIA_CHAR(0xDF);
    EUSART_Stringsend("moviendo servo a 0 grados");
    EUSART_Newline();
    unsigned char x_var;
    for(x_var=0;x_var<50;x_var++){
        LATAbits.LA0 = 1;
        __delay_us(700);
        LATAbits.LA0 = 0;
        __delay_us(19300);
    }
    BORRAR_LCD();
}

void __interrupt(low_priority) INT1_ISR(void){
    INTCON3bits.INT1IF = 0;
    POS_CURSOR(1,0);
    ESCRIBE_MENSAJE2("Servo a 180");
    ENVIA_CHAR(0xDF);
    EUSART_Stringsend("moviendo servo a 180 grados");
    EUSART_Newline();
    unsigned char x_var;
    for(x_var=0;x_var<50;x_var++){
        LATAbits.LA0 = 1;
        __delay_us(2300);
        LATAbits.LA0 = 0;
        __delay_us(17700);
    }
    BORRAR_LCD();
}