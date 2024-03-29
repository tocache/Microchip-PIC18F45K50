#include <xc.h>
#include "cabecera.h"
#include "LCD.h"
#define _XTAL_FREQ 4000000UL    //frecuencia de trabajo del microcontrolador

unsigned char e_acentuado[]={0x02,0x04,0x0E,0x11,0x1F,0x10,0x0E,0x00};
unsigned char yuca = 0;
unsigned char centena, decena, unidad;

void configuro(void){
    //configuracion del INTSOSC
    OSCCON = 0x52;
    //configuracion de las E/S
    TRISD = 0x00;           //RD como salidas
    ANSELD = 0x00;          //RD como digitales
    TRISBbits.RB0 = 1;      //RB0 como entrada
    ANSELBbits.ANSB0 = 0;   //RB0 como digital
    INTCON2bits.RBPU = 0;   //RB con pullup activados
    TRISEbits.RE0 = 0;      //RE0 como salida
    ANSELEbits.ANSE0 = 0;   //RE0 como digital
    TRISCbits.RC2 = 0;      //RC2 como salida
    ANSELCbits.ANSC2 = 0;   //RC2 como digital
    TRISAbits.RA0 = 1;      //RA0 como entrada
    ANSELAbits.ANSA0 = 1;   //RA0 como analogica
}

void LCD_Init(void){
    __delay_ms(29);
    LCD_CONFIG();
    BORRAR_LCD();
    CURSOR_HOME();
    CURSOR_ONOFF(OFF);
    LATCbits.LC2 = 1;
    GENERACARACTER(e_acentuado,0);
}

void pantallazo(void){
    POS_CURSOR(1,0);
    ESCRIBE_MENSAJE("Con fe aprobar",14);
    ENVIA_CHAR(0);
    ENVIA_CHAR('!');
}

void convierte(unsigned char numero){
    centena = numero / 100;
    decena = (numero % 100) / 10;
    unidad = numero % 10;
}

void main(void) {
    configuro();
    LCD_Init();
    pantallazo();
    while(1){
        convierte(yuca);
        POS_CURSOR(2,0);
        ESCRIBE_MENSAJE("Yuca:",5)
        ENVIA_CHAR(centena+0x30);
        ENVIA_CHAR(decena+0x30);
        ENVIA_CHAR(unidad+0x30);
        __delay_ms(100);
        if(yuca == 100){
            yuca = 0;
        }
        else{
            yuca++;
        }
    }
        
}
