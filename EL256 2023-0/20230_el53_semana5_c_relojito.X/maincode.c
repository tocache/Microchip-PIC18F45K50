#include "cabecera.h"
#include "LCD.h"
#define _XTAL_FREQ 4000000UL

unsigned char centenas = 0;
unsigned char decenas = 0;
unsigned char unidades = 0;
unsigned char horas = 14, minutos = 16, segundos = 0, ticks = 0;

void configuro(void){
    OSCCON = 0x52;               //Este es un comentario
    T1CON = 0x01;               //TMR1 On, fosc/4 psc 1:1
    CCP1CON = 0x0B;             //Modo comparador evento especial de disparo
    CCPR1H = 0x27;
    CCPR1L = 0x10;              //valor de referencia de comparacion 10000
    INTCONbits.GIE = 1;
    INTCONbits.PEIE = 1;
    PIE1bits.CCP1IE = 1;
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
    POS_CURSOR(1,2);
    ESCRIBE_MENSAJE("Relojito UPC",12);
    while(1){
    POS_CURSOR(2,0);
    convierte(horas);
    ENVIA_CHAR(decenas+0x30);
    ENVIA_CHAR(unidades+0x30);
    ENVIA_CHAR(':');
    convierte(minutos);
    ENVIA_CHAR(decenas+0x30);
    ENVIA_CHAR(unidades+0x30);
    ENVIA_CHAR(':');
    convierte(segundos);
    ENVIA_CHAR(decenas+0x30);
    ENVIA_CHAR(unidades+0x30);
    ENVIA_CHAR(':');
    convierte(ticks);
    ENVIA_CHAR(decenas+0x30);
    ENVIA_CHAR(unidades+0x30);
    }
}

void __interrupt() CCP1_ISR(void){
    PIR1bits.CCP1IF = 0;
    if(ticks == 99){
        ticks = 0;
        if(segundos == 59){
            segundos = 0;
            if(minutos == 59){
                minutos = 0;
                if(horas == 23){
                    horas = 0;
                }
                else{
                    horas++;
                }
            }
            else{
                minutos++;
            }
        }
        else{
            segundos++;
        }
    }
    else{
        ticks++;
    }
}