#include "cabecera.h"
#define _XTAL_FREQ 4000000UL

void configuro(void){
    OSCCON = 0x52;               //Este es un comentario
    TRISAbits.RA0 = 1;          //Entrada RA0
    ANSELAbits.ANSA0 = 1;            //Analogica RA0
    TRISAbits.RA1 = 1;          //Entrada RA1
    ANSELAbits.ANSA1 = 1;            //Analogica RA1
    TRISB = 0x00;               //RD como salida
    TRISD = 0x00;               //RD como salida
    ADCON2 = 0x24;              //Tiempo de conversion y justificacion
    ADCON1 = 0x00;              //configuracion de vref
    ADCON0 = 0x01;              //encendido del a/d
}

void main(void){
    configuro();
    while(1){
        ADCON0 = 0x01;
        ADCON0bits.GO_DONE = 1;         //Inicio la toma de una muestra en AN0
        while(ADCON0bits.GO_DONE == 1); //Espero a que termine de convertir
        LATD = ADRESH;
        __delay_ms(10);
        ADCON0 = 0x05;
        ADCON0bits.GO_DONE = 1;         //Inicio la toma de una muestra en AN0
        while(ADCON0bits.GO_DONE == 1); //Espero a que termine de convertir
        LATB = ADRESH;
        __delay_ms(10);
    }
}
