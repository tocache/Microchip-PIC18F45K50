#include "cabecera.h"
#define _XTAL_FREQ 4000000UL
#define APAGADO 0
#define PRENDIDO 1
#define FOQUITO LATAbits.LA6
#define BOTONCITO PORTBbits.RB7

void configuro(void){
    OSCCON = 0x52;               //Este es un comentario
    //ANSELAbits. = 0;
    TRISAbits.RA6 = 0;
    //ANSELBbits. = 0;
}

void retardo_lento(void){
    __delay_ms(300);
}

void retardo_rapido(void){
    __delay_ms(100);
}

void main(void){
    configuro();
    while(1){
        if(BOTONCITO == 1){
            FOQUITO = PRENDIDO;
            retardo_lento();
            FOQUITO = APAGADO;
            retardo_lento();
        }
        else{
            FOQUITO = PRENDIDO;
            retardo_rapido();
            FOQUITO = APAGADO;
            retardo_rapido();
        }
    }
}