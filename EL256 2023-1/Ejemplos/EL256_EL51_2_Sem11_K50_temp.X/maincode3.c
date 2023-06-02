#include <xc.h>
#include "cabecera.h"
#include "LCD.h"
#define _XTAL_FREQ 4000000UL

unsigned int resultado_ADC = 0;
unsigned char millar, centena, decena, unidad;

void configuro(void){
    //configuracion del reloj principal
    OSCCON = 0x52;
    //configuracion de las E/S
    TRISAbits.RA0 = 1;      //RA0 como entrada
    ANSELAbits.ANSA0 = 1;   //RA0 como analogica
    TRISBbits.RB0 = 1;      //RB0 como entrada
    ANSELBbits.ANSB0 = 0;   //RB0 como digital
    INTCON2bits.RBPU = 0;   //weak pullup habilitados en RB
    WPUBbits.WPUB0 = 1;     //weak pullup habilitado para RB0/INT0
    TRISCbits.RC6 = 0;      //RC6 como salida
    ANSELCbits.ANSC6 = 0;   //RC6 como digital
    TRISCbits.RC7 = 1;      //RC7 como entrada
    ANSELCbits.ANSC7 = 0;   //RC7 como digital
    TRISD = 0x00;           //RD como salidas
    ANSELD = 0x00;          //RD como digitales
    //configuracion del ADC
    ADCON0 = 0x01;           //adc encendido y apuntando a AN0
    ADCON1 = 0x08;          //vref+ para FVR_buf2 y vref- para vss
    ADCON2 = 0xA4;          //just derecha, 8tad, fosc/4
    VREFCON0 = 0xD0;        //VRef habilitado con salida 1.024V para FVR_buf2
    //configuracion inicial del LCD
    LCD_INIT();
    //configuracion del TX del EUSART
    TXSTA1bits.BRGH = 1;
    SPBRGH1 = 0x00;
    SPBRG1 = 25;            //baudrate 9600
    TXSTA1bits.TXEN = 1;    //habilitamos el transmisor
    RCSTA1bits.SPEN = 1;    //habilitamos el EUSART
}

void envia_dato_EUSART(void){
    TXREG = 'H';
    while(TXSTA1bits.TRMT == 0);
    TXREG = 'O';
    while(TXSTA1bits.TRMT == 0);
    TXREG = 'L';
    while(TXSTA1bits.TRMT == 0);
    TXREG = 'A';
    while(TXSTA1bits.TRMT == 0);

}

void convierte(unsigned int numero){
    millar = numero / 1000;
    centena = (numero % 1000) / 100;
    decena = (numero % 100) / 10;
    unidad = numero % 10;
}

void tomamuestra_ADC(void){
    ADCON0bits.GO = 1;
    while(ADCON0bits.GO == 1);
    resultado_ADC = (ADRESH << 8) + ADRESL;
}

void main(void) {
    configuro();
    POS_CURSOR(1,0);
    ESCRIBE_MENSAJE2("Primer ejemplo");
    while(1){
        tomamuestra_ADC();
        resultado_ADC = resultado_ADC / 10;
        convierte(resultado_ADC);
        POS_CURSOR(2,0);
        ESCRIBE_MENSAJE2("Temp LM35:");
        ENVIA_CHAR(centena+0x30);
        ENVIA_CHAR(decena+0x30);
        ENVIA_CHAR(unidad+0x30);
        ENVIA_CHAR(0xDF);
        ENVIA_CHAR('C');
        envia_dato_EUSART();
        __delay_ms(1000);
    }
}
