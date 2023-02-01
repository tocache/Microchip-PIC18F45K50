#include "cabecera.h"
#include "LCD.h"
#define _XTAL_FREQ 4000000UL

unsigned char centenas = 0;
unsigned char decenas = 0;
unsigned char unidades = 0;

void configuro(void){
    OSCCON = 0x52;               //Este es un comentario
    TRISAbits.RA0 = 1;          //Entrada RA0
    ANSELAbits.ANSA0 = 1;            //Analogica RA0
    TRISAbits.RA1 = 1;          //Entrada RA1
    ANSELAbits.ANSA1 = 1;            //Analogica RA1
    ADCON2 = 0x24;              //Tiempo de conversion y justificacion
    ADCON1 = 0x00;              //configuracion de vref
    ADCON0 = 0x01;              //encendido del a/d    
}

void LCD_Init(void){
    TRISD = 0x00;
    __delay_ms(29);
    LCD_CONFIG();
    BORRAR_LCD();
    CURSOR_HOME();
    CURSOR_ONOFF(OFF);
}

convierte(unsigned char numero){
    centenas = numero / 100;
    decenas = (numero % 100) / 10;
    unidades = numero % 10;
}

void main(void) {
    configuro();
    LCD_Init();
    POS_CURSOR(1,0);
    ESCRIBE_MENSAJE("Hola mundo",10);
    POS_CURSOR(2,0);
    ESCRIBE_MENSAJE("UPC Verano 2023",15);
    __delay_ms(2000);
    BORRAR_LCD();
    while(1){
        ADCON0 = 0x01;
        ADCON0bits.GO_DONE = 1;         //Inicio la toma de una muestra en AN0
        while(ADCON0bits.GO_DONE == 1); //Espero a que termine de convertir
        convierte(ADRESH);
        POS_CURSOR(1,0);
        ESCRIBE_MENSAJE("Canal 0:",8);
        ENVIA_CHAR(centenas+0x30);
        ENVIA_CHAR(decenas+0x30);        
        ENVIA_CHAR(unidades+0x30);        
        ADCON0 = 0x05;
        ADCON0bits.GO_DONE = 1;         //Inicio la toma de una muestra en AN0
        while(ADCON0bits.GO_DONE == 1); //Espero a que termine de convertir
        convierte(ADRESH);
        POS_CURSOR(2,0);
        ESCRIBE_MENSAJE("Canal 1:",8);
        ENVIA_CHAR(centenas+0x30);
        ENVIA_CHAR(decenas+0x30);        
        ENVIA_CHAR(unidades+0x30);       
    }
}
