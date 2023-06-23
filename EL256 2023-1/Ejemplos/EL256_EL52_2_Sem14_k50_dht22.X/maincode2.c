#include <xc.h>
#include "cabecera.h"
#include "LCD.h"
#include "i2c.h"
#include "i2c_lcd.h"
#define _XTAL_FREQ 4000000UL

void configuro(void){
    OSCCON = 0x52;
    TRISD = 0x00;
    ANSELD = 0x00;
    SSP1CON1bits.SSPEN = 1;      //habilitar el MSSP
    SSP1CON1bits.SSPM = 0b1000;  //MSSP en modo i2c maestro
    SSP1ADD = 119;               //datarate 100k    
    LCD_INIT();
    Lcd_Init();
}

void splash_msg(void){
    POS_CURSOR(1,0);
    ESCRIBE_MENSAJE2("Circuito con el");
    POS_CURSOR(2,0);
    ESCRIBE_MENSAJE2(" sensor DHT22");
    //__delay_ms(3000);
    //BORRAR_LCD();
}

void main(void) {
    configuro();
    splash_msg();
    while(1){
        Lcd_Set_Cursor(1,1);
        Lcd_Write_String("Lcd 16x2 I2C");
        Lcd_Set_Cursor(2,1);
        Lcd_Write_String("Con PIC18F45K50");
    }
}
