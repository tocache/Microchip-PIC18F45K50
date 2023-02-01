#include "cabecera.h"
#include "LCD.h"
#define _XTAL_FREQ 4000000UL

void configuro(void){
    OSCCON = 0x52;               //Este es un comentario
}

void LCD_Init(void){
    TRISD = 0x00;
    __delay_ms(29);
    LCD_CONFIG();
    BORRAR_LCD();
    CURSOR_HOME();
    CURSOR_ONOFF(OFF);
}

void main(void) {
    configuro();
    LCD_Init();
    POS_CURSOR(1,0);
    ESCRIBE_MENSAJE("Hola mundo",10);
    POS_CURSOR(2,0);
    ESCRIBE_MENSAJE("UPC Verano 2023",15);
    while(1){
        
    }
}
