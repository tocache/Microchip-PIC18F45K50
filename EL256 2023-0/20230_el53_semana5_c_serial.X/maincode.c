#include "cabecera.h"
#include "LCD.h"
#include "string.h"
#define _XTAL_FREQ 4000000UL

unsigned char centenas = 0;
unsigned char decenas = 0;
unsigned char unidades = 0;

void configuro(void){
    OSCCON = 0x52;               //Este es un comentario
    SPBRG1 = 25;                 //9600 teniendo en cuenta BRGH=1
    TXSTA1bits.BRGH = 1;
    RCSTA1bits.SPEN = 1;        //Encender puerto serial
    TXSTA1bits.TXEN = 1;        //Encender el transmisor del puerto serial
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

void SERIAL_ESCRIBE_MENSAJE(const char *cadena)
{
	unsigned char tam;
    unsigned char i = 0;
    tam = strlen(cadena);
	for(i = 0; i<tam; i++)
	{
        TXREG = cadena[i];
        while(TXSTA1bits.TRMT == 0);
	}
}

void SERIAL_NEWLINE(void){
    TXREG = 10;
    while(TXSTA1bits.TRMT == 0);
    TXREG = 13;
    while(TXSTA1bits.TRMT == 0);
}


void main(void) {
    configuro();
    LCD_Init();
    POS_CURSOR(1,0);
    ESCRIBE_MENSAJE("Hola mundo",10);
    POS_CURSOR(2,0);
    ESCRIBE_MENSAJE("UPC Semana5 2023",16);
    __delay_ms(2000);
    BORRAR_LCD();
    while(1){
        TXREG = 'H';
        while(TXSTA1bits.TRMT == 0);
        TXREG = 'O';
        while(TXSTA1bits.TRMT == 0);
        TXREG = 'L';
        while(TXSTA1bits.TRMT == 0);
        TXREG = 'A';
        while(TXSTA1bits.TRMT == 0);
        SERIAL_NEWLINE();
        SERIAL_ESCRIBE_MENSAJE("UPC Mecatronica");
        SERIAL_NEWLINE();
        __delay_ms(2000);
    }
}
