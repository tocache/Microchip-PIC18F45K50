#include <xc.h>
#include "cabecera.h"
#include "LCD.h"
#define _XTAL_FREQ 4000000UL

unsigned char centena, decena, unidad;

void configuro(void){
    OSCCON = 0x52;
    TRISD = 0x00;
    ANSELD = 0x00;
    TRISAbits.TRISA0 = 1;       //RA0 como entrada
    ANSELAbits.ANSA0 = 1;     //RA0 como analogico
    TRISCbits.TRISC2 = 0;       //RC2 como salida
    ANSELCbits.ANSC2 = 0;     //RC2 como digital
    //configuracion del ADC
    ADCON0 = 0x01;              //ADC on, ch0 selected
    ADCON1 = 0x00;              //Vref+ a Vdd y Vref- a Vss
    ADCON2 = 0x24;              //8tad y fosc/4, just izquierda
    //configuracion del CCP para PWM
    PR2 = 62;
    CCPR1L = 31;                //duty cycle inicial 50%
    T2CON = 0x06;               //TMR2 on, 1:16 psc
    CCP1CON = 0x0C;             //CCP1 en modo PWM
    
}

void lcd_config(void){
    __delay_ms(15);
    LCD_CONFIG();
    __delay_ms(15);
    BORRAR_LCD();
    CURSOR_HOME();
    CURSOR_ONOFF(OFF);
    //LATCbits.LATC2 = 1;
}

void splash_screen(void){
    POS_CURSOR(1,0);
    ESCRIBE_MENSAJE2("Hola mundo!");
}

void convierte(unsigned char numero){
    centena = numero / 100;
    decena = (numero % 100) / 10;
    unidad = numero % 10;
}

void tomamuestra_ADC(void){
    ADCON0bits.GO = 1;
    while(ADCON0bits.GO == 1);
}

void main(void) {
    configuro();
    lcd_config();
    splash_screen();
    while(1){
        tomamuestra_ADC();
        CCPR1L = ADRESH /4;
        convierte(ADRESH);
        POS_CURSOR(2,0);
        ESCRIBE_MENSAJE2("ADC:");        
        ENVIA_CHAR(centena+0x30);
        ENVIA_CHAR(decena+0x30);
        ENVIA_CHAR(unidad+0x30);
    }
}
