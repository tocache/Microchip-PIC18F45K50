#include <xc.h>
#include "cabecera.h"
#include "LCD.h"
#define _XTAL_FREQ 4000000UL

unsigned char millar, centena, decena, unidad, nivel=5;

void configuro(void){
    OSCCON = 0x52;
    TRISB = 0x0F;
    ANSELB = 0x08;
    TRISE = 0xF8;
    ANSELE = 0x03;
    TRISAbits.RA1 = 1;
    ANSELAbits.ANSA1 = 1;
    INTCON2bits.RBPU = 0;
    WPUB = 0x03;
    INTCON2bits.INTEDG0 = 0;
    INTCON2bits.INTEDG1 = 0;
    INTCON2bits.INTEDG2 = 0;
    INTCONbits.GIE = 1;
    INTCONbits.INT0IE = 1;
    INTCON3bits.INT1IE = 1;
    INTCON3bits.INT2IE = 1;
    ADCON2 = 0xA4;
    ADCON1 = 0x00;
    ADCON0 = 0x01;
    //configuracion del CCP para PWM
    TRISCbits.RC2 = 0;
    ANSELCbits.ANSC2 = 0;
    PR2 = 62;
    CCPR1L = 31;                //duty cycle inicial 50%
    T2CON = 0x06;               //TMR2 on, 1:16 psc
    CCP1CON = 0x0C;             //CCP1 en modo PWM
    LCD_INIT();
}

void splash_screen(void){
    POS_CURSOR(1,0);
    ESCRIBE_MENSAJE2("Laboratorio 3");
    POS_CURSOR(2,0);
    ESCRIBE_MENSAJE2("Me voy a la bica");
}

void convierte(unsigned int numero){
    millar = numero / 1000;
    centena = (numero % 1000) / 100;
    decena = (numero % 100) / 10;
    unidad = numero % 10;
}

unsigned int tomamuestra_ADC(unsigned char canal){
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
        case 9:
            ADCON0 = 0x25;
            break;
    }
    ADCON0bits.GO = 1;
    while(ADCON0bits.GO == 1);
    return (ADRESH << 8) + ADRESL;
}

void main(void) {
    configuro();
    splash_screen();
    __delay_ms(2000);
    BORRAR_LCD();
    while(1){
        POS_CURSOR(1,0);
        ESCRIBE_MENSAJE2("AN1:");
        convierte(tomamuestra_ADC(1));
        ENVIA_CHAR(millar+0x30);
        ENVIA_CHAR(centena+0x30);
        ENVIA_CHAR(decena+0x30);
        ENVIA_CHAR(unidad+0x30);
        ESCRIBE_MENSAJE2(" CTR:");
        convierte(nivel*10);
        ENVIA_CHAR(decena+0x30);
        ENVIA_CHAR(unidad+0x30);
        ENVIA_CHAR('%');
        POS_CURSOR(2,0);
        ESCRIBE_MENSAJE2("AN9:");
        convierte(tomamuestra_ADC(9));
        ENVIA_CHAR(millar+0x30);
        ENVIA_CHAR(centena+0x30);
        ENVIA_CHAR(decena+0x30);
        ENVIA_CHAR(unidad+0x30);
    }
}

void __interrupt() ISRs(void){
    if(INTCONbits.INT0IF == 1){
        INTCONbits.INT0IF = 0;
        if(nivel == 9){
            nivel = 0;
        }
        else{
            nivel++;
        }
    }
    else if(INTCON3bits.INT1IF == 1){
        INTCON3bits.INT1IF = 0;
        if(nivel == 0){
            nivel = 9;
        }
        else{
            nivel--;
        }
    }
    else if(INTCON3bits.INT2IF == 1){
        INTCON3bits.INT2IF = 0;
        BORRAR_LCD();
        POS_CURSOR(1,0);
        ESCRIBE_MENSAJE2("Kalun Jose");
        POS_CURSOR(2,0);
        ESCRIBE_MENSAJE2("Lau Gan");
        __delay_ms(5000);
        BORRAR_LCD();
    }
    switch(nivel){
        case 0:
            CCPR1L = 0;
            break;
        case 1:
            CCPR1L = 7;
            break;
        case 2:
            CCPR1L = 14;
            break;
        case 3:
            CCPR1L = 21;
            break;
        case 4:
            CCPR1L = 28;
            break;
        case 5:
            CCPR1L = 35;
            break;
        case 6:
            CCPR1L = 42;
            break;
        case 7:
            CCPR1L = 49;
            break;
        case 8:
            CCPR1L = 56;
            break;
        case 9:
            CCPR1L = 62;
            break;
    }
}