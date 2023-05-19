#include <xc.h>
#include "cabecera.h"
#define _XTAL_FREQ 4000000UL    //frecuencia de trabajo del microcontrolador

void configuro(void){
    //configuracion del INTSOSC
    OSCCON = 0x52;
    //configuracion de las E/S
    TRISD = 0x00;           //RD como salidas
    ANSELD = 0x00;          //RD como digitales
    TRISBbits.RB0 = 1;      //RB0 como entrada
    ANSELBbits.ANSB0 = 0;   //RB0 como digital
    INTCON2bits.RBPU = 0;   //RB con pullup activados
    TRISEbits.RE0 = 0;      //RE0 como salida
    ANSELEbits.ANSE0 = 0;   //RE0 como digital
    TRISCbits.RC2 = 0;      //RC2 como salida
    ANSELCbits.ANSC2 = 0;   //RC2 como digital
    TRISAbits.RA0 = 1;      //RA0 como entrada
    ANSELAbits.ANSA0 = 1;   //RA0 como analogica
}

void main(void) {
    configuro();
    while(1){
        __delay_ms(200);
        LATEbits.LE0 = ~LATEbits.LE0;
    }
}
