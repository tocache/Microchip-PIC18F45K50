#include <xc.h>
#include "cabecera.h"
#include "LCD.h"
#define _XTAL_FREQ 4000000UL

unsigned char nivel = 0;
unsigned char diezmillar,millar,centena,decena,unidad;

void configuro(void){
    //configuracion del reloj principal
    OSCCON = 0x52;
    //configuracion de las E/S
    TRISAbits.RA0 = 1;
    ANSELAbits.ANSA0 = 1;
    TRISBbits.RB0 = 1;
    ANSELBbits.ANSB0 = 0;
    INTCON2bits.RBPU = 0;
    WPUBbits.WPUB0 = 1;
    TRISC = 0xBB;
    ANSELC = 0x3B;
    TRISD = 0x08;
    ANSELD = 0x00;
    //configuracion del ADC
    ADCON0 = 0x01;
    ADCON1 = 0x04;      //vref+ habilitado
    ADCON2 = 0xA4;      //just der
    //configuracion del LCD
    LCD_INIT();
    //LATCbits.LATC2 = 0;
    //configuracion del CCP1 para PWM
    PR2 = 62;
    CCPR1L = 31;                //duty cycle inicial 50%
    T2CON = 0x06;               //TMR2 on, 1:16 psc
    CCP1CON = 0x0C;             //CCP1 en modo PWM
    //confuguracion de interrupciones
    INTCONbits.GIE = 1;
    INTCONbits.INT0IE = 1;
    INTCON2bits.INTEDG0 = 0;
}

unsigned int tomamuestra_ADC(void){
    ADCON0bits.GO = 1;
    while(ADCON0bits.GO == 1);
    return ((ADRESH << 8) + ADRESL);
}

void convierte(unsigned int numero){
    diezmillar = numero / 10000;
    millar = (numero % 10000) / 1000;
    centena = (numero % 1000) / 100;
    decena = (numero % 100) / 10;
    unidad = numero % 10;
}

void main(void) {
    configuro();
    POS_CURSOR(1,0);
    ESCRIBE_MENSAJE2("Micro Semana 11");
    while(1){
        convierte(tomamuestra_ADC()/10);
        POS_CURSOR(2,0);
        ESCRIBE_MENSAJE2("LM35:");
        ENVIA_CHAR(centena+0x30);
        ENVIA_CHAR(decena+0x30);
        ENVIA_CHAR(unidad+0x30);
        ENVIA_CHAR(0xDF);
        ENVIA_CHAR('C');
    }
}

void __interrupt() INT0_ISR(void){
    INTCONbits.INT0IF = 0;
    switch(nivel){
        case 0:
            CCPR1L = 5;
            nivel = 1;
            break;
        case 1:
            CCPR1L = 15;
            nivel = 2;
            break;
        case 2:
            CCPR1L = 25;
            nivel = 3;
            break;
        case 3:
            CCPR1L = 35;
            nivel = 4;
            break;
        case 4:
            CCPR1L = 45;
            nivel = 5;
            break;
        case 5:
            CCPR1L = 55;
            nivel = 6;
            break;
        case 6:
            CCPR1L = 62;
            nivel = 0;
            break;
    }
}