#include <xc.h>
#include "cabecera.h"
#include "LCD.h"

#define _XTAL_FREQ 4000000UL
#define DISPARO 1
#define ESPERA_FLANCO_SUB 2
#define ESPERA_FLANCO_BAJ 3
#define CALCULAR          4
#define MOSTRAR_DISTANCIA 5

unsigned char estado = 0;
float tiempo = 0.00;
unsigned int distancia = 0;

void configuro(void){
    OSCCON = 0x52;
    TRISD = 0x00;
    ANSELD = 0x00;
    TRISBbits.TRISB0 = 0;
    ANSELBbits.ANSB0 = 0;
    TRISCbits.RC2 = 1;
    ANSELCbits.ANSC2 = 0;
    LCD_INIT();
}

void splash_screen(void){
    POS_CURSOR(1,0);
    ESCRIBE_MENSAJE2("Ultrasonido");
    POS_CURSOR(2,0);
    ESCRIBE_MENSAJE2("con HC-SR04");
    __delay_ms(3000);
    CCP1CON = 0x05;     //Entrada CAPTURA FLANCO SUB.
    T1CON = 0x63;       //fuente FOSC, 1:4 prescaler, lectura 16bits 1us x cta
    BORRAR_LCD();
    INTCONbits.GIE = 1;
    INTCONbits.PEIE = 1;
    PIE1bits.TMR1IE=1;
    PIE1bits.CCP1IE=1;
    estado = DISPARO;
}

void main(void) {
    configuro();
    splash_screen();
    while(1){
        switch(estado)
        {
            case DISPARO:
                LATBbits.LATB0=1;
                __delay_us(10);
                LATBbits.LATB0=0;
                estado=ESPERA_FLANCO_SUB;
                break;
            case CALCULAR:
                tiempo=(float)distancia;
                tiempo=tiempo / 58;
                distancia = (int)tiempo + 1;
                estado = MOSTRAR_DISTANCIA;
                break;
            case MOSTRAR_DISTANCIA:
                POS_CURSOR(1,0);
                ESCRIBE_MENSAJE2("Midiendo...");
                POS_CURSOR(2,0);
                ENVIA_CHAR(distancia/100+'0');
                ENVIA_CHAR((distancia%100)/10+'0');
                ENVIA_CHAR((distancia%100)%10+'0');
                ESCRIBE_MENSAJE2(" cm");
                __delay_ms(200);
                estado = DISPARO;
                break;
        }
    }
}

void __interrupt() ISRs(void)
{
    char dato=0;
    if(PIR1bits.CCP1IF==1)
    {
        PIR1bits.CCP1IF=0;
        switch(estado)
        {
            case ESPERA_FLANCO_SUB:
                TMR1H=0;
                TMR1L=0;
                CCP1CON=0x04;
                estado = ESPERA_FLANCO_BAJ;
                break;
            case ESPERA_FLANCO_BAJ:
                distancia=CCPR1;
                estado = CALCULAR;
                CCP1CON = 0x05;
                break;
        }
    }
    else if(PIR1bits.TMR1IF==1)
    {
        PIR1bits.TMR1IF=0;
    }
}