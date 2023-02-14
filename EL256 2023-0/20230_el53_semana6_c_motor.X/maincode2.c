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
    ANSELB = 0XFC;              //RB0  y RB1 como entradas digitales
    TRISCbits.RC2 = 0;
    ANSELCbits.ANSC2 = 0;       //RC2 como salida digital
    TRISEbits.RE0 = 0;
    ANSELEbits.ANSE0 = 0;       //RE0 como salida digital
    PR2 = 62;                   //frecuencia de pwm a 1KHz
    CCP1CON = 0x0C;             //CCP1 en PWM
    CCPR1L = 31;                //Duty Cycle de 50%
    T2CON = 0x06;               //Timer2 ON, PSC 1:16
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
    ESCRIBE_MENSAJE("UPC Semana6 2023",16);
    SERIAL_ESCRIBE_MENSAJE("UPC Mecatronica");
    __delay_ms(2000);
    BORRAR_LCD();
    SERIAL_NEWLINE();
    while(1){
        if(PORTBbits.RB0 == 1){
            LATCbits.LC2 = 1;
            POS_CURSOR(1,0);
            ESCRIBE_MENSAJE("Motor Encendido",15);
        }
        else{
            LATCbits.LC2 = 0;
            POS_CURSOR(1,0);
            ESCRIBE_MENSAJE("Motor Apagado  ",15);
        }
        if(PORTBbits.RB1 == 1){
            LATEbits.LE0 = 1;
            POS_CURSOR(2,0);
            ESCRIBE_MENSAJE("Sentido horario ",16);
        }
        else{
            LATEbits.LE0 = 0;
            POS_CURSOR(2,0);
            ESCRIBE_MENSAJE("Sentido al reves",16);
        }
    }
}
