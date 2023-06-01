#include <xc.h>
#include "cabecera.h"
#include "LCD.h"
#define _XTAL_FREQ 4000000UL

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
    //pendiente
    //configuracion del LCD
    LCD_INIT();
    //LATCbits.LATC2 = 0;
    //configuracion del CCP1 para PWM
    PR2 = 62;
    CCPR1L = 31;                //duty cycle inicial 50%
    T2CON = 0x06;               //TMR2 on, 1:16 psc
    CCP1CON = 0x0C;             //CCP1 en modo PWM
}

void main(void) {
    configuro();
    POS_CURSOR(1,0);
    ESCRIBE_MENSAJE2("Micro Semana 11");
    while(1){
        POS_CURSOR(2,0);
        ESCRIBE_MENSAJE2("Contraste al max");
    }
}
