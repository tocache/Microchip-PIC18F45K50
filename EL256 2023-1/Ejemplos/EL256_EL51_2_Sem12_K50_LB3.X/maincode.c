#include <xc.h>
#include "cabecera.h"
#include "LCD.h"
#define _XTAL_FREQ 4000000UL

unsigned int resultado_ADC = 0;
unsigned char millar, centenas, decenas, unidades;
unsigned char modo_CH0=0,modo_CH1=0;

void configuro(void){
    OSCCON = 0x52;
    TRISD = 0x00;
    ANSELD = 0x00;
    TRISAbits.RA0 = 1;
    ANSELAbits.ANSA0 = 1;
    TRISAbits.RA1 = 1;
    ANSELAbits.ANSA1 = 1;
    TRISBbits.RB0 = 1;
    ANSELBbits.ANSB0 = 0;
    TRISBbits.RB1 = 1;
    ANSELBbits.ANSB1 = 0;
    INTCON2bits.RBPU = 1;
    WPUBbits.WPUB0 = 1;
    WPUBbits.WPUB1 = 1;
    INTCON2bits.INTEDG0 = 0;
    INTCON2bits.INTEDG1 = 0;
    RCONbits.IPEN = 1;
    INTCONbits.GIEH = 1;
    INTCONbits.GIEL = 1;
    INTCON3bits.INT1IP = 0;
    INTCONbits.INT0IE = 1;
    INTCON3bits.INT1IE = 1;
    LCD_INIT();
    ADCON2 = 0xA4;
    ADCON1 = 0x00;
    ADCON0 = 0x01;
}

void convierte(unsigned int numero){
    millar = numero / 1000;
    centenas = (numero % 1000) / 100;
    decenas = (numero % 100) / 10;
    unidades = numero % 10;
}

void tomamuestra_ADC(unsigned char canal){
    switch(canal){
        case 0:
            ADCON0 = 0x01;
            break;
        case 1:
            ADCON0 = 0x05;
            break;
        case 2:
            ADCON0 = 0x09;
            break;
    }
    ADCON0bits.GO = 1;
    while(ADCON0bits.GO == 1);
    resultado_ADC = (ADRESH << 8) + ADRESL;
}

void main(void) {
    configuro();
    POS_CURSOR(1,0);
    ESCRIBE_MENSAJE2("Laboratorio 3");
    POS_CURSOR(2,0);
    ESCRIBE_MENSAJE2("ya jale");
    __delay_ms(3000);
    BORRAR_LCD();
    while(1){
        POS_CURSOR(1,0);
        ESCRIBE_MENSAJE2("CH0:");
        tomamuestra_ADC(0);
        if(modo_CH0 == 0){
            convierte(resultado_ADC);
            ENVIA_CHAR(millar+0x30);
            ENVIA_CHAR(centenas+0x30);
            ENVIA_CHAR(decenas+0x30);
            ENVIA_CHAR(unidades+0x30);
            ESCRIBE_MENSAJE2(" 10bit");
        }
        else{
            convierte(resultado_ADC>>2);
            ENVIA_CHAR(centenas+0x30);
            ENVIA_CHAR(decenas+0x30);
            ENVIA_CHAR(unidades+0x30);
            ESCRIBE_MENSAJE2("   8bit");
        }
        POS_CURSOR(2,0);
        ESCRIBE_MENSAJE2("CH1:");
        tomamuestra_ADC(1);
        if(modo_CH1 == 0){
            convierte(resultado_ADC);
            ENVIA_CHAR(millar+0x30);
            ENVIA_CHAR(centenas+0x30);
            ENVIA_CHAR(decenas+0x30);
            ENVIA_CHAR(unidades+0x30);
            ESCRIBE_MENSAJE2(" 10bit");
        }
        else{
            convierte(resultado_ADC>>2);
            ENVIA_CHAR(centenas+0x30);
            ENVIA_CHAR(decenas+0x30);
            ENVIA_CHAR(unidades+0x30);
            ESCRIBE_MENSAJE2("   8bit");
        }
    }
}

void __interrupt(high_priority) INT0_ISR(void){
    INTCONbits.INT0IF = 0;
    if(modo_CH0 == 0){
        modo_CH0 = 1;
    }
    else{
        modo_CH0 = 0;
    }
}

void __interrupt(low_priority) INT1_ISR(void){
    INTCON3bits.INT1IF = 0;
    if(modo_CH1 == 0){
        modo_CH1 = 1;
    }
    else{
        modo_CH1 = 0;
    }
}
