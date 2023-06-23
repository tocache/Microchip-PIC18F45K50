#include <xc.h>
#include "cabecera.h"
#include "LCD.h"
#include "dht22_lib.h"
#define _XTAL_FREQ 4000000UL

void configuro(void){
    OSCCON = 0x52;
    TRISD = 0x00;
    ANSELD = 0x00;
    TRISAbits.RA0 = 1;
    ANSELAbits.ANSA0 = 0;
    LCD_INIT();
}

void splash_msg(void){
    POS_CURSOR(1,0);
    ESCRIBE_MENSAJE2("Circuito con el");
    POS_CURSOR(2,0);
    ESCRIBE_MENSAJE2(" sensor DHT22");
    __delay_ms(3000);
    BORRAR_LCD();
}

void main(void) {
    unsigned char RH_Ent, RH_Dec, Temp_Ent, Temp_Dec, Chksum;
    configuro();
    splash_msg();
    while(1){
        DHT22_Start();
        DHT22_Check();
        RH_Ent = DHT22_Read();
        RH_Dec = DHT22_Read();
        Temp_Ent = DHT22_Read();
        Temp_Dec = DHT22_Read();
        Chksum = DHT22_Read();
        POS_CURSOR(1,0);
        ESCRIBE_MENSAJE2("Temp:");
        LCD_ESCRIBE_VAR_CHAR(Temp_Ent, 2);
        ENVIA_CHAR(0xDF);
        ESCRIBE_MENSAJE2("C RH:");
        LCD_ESCRIBE_VAR_CHAR(RH_Ent, 2);
        ENVIA_CHAR('%');
        __delay_ms(1000);
    }
}
