#include <xc.h>
#include "cabecera.h"
#include "LCD.h"
#define _XTAL_FREQ 4000000UL

const unsigned char prueba = 15;

void configuro(void){
    OSCCON = 0x52;
    SSP1CON1bits.SSPEN = 1;      //habilitar el MSSP
    SSP1CON1bits.SSPM = 0b1000;  //MSSP en modo i2c maestro
    SSP1ADD = 119;               //datarate 100k    
    LCD_INIT();
}

void splash_msg(void){
    POS_CURSOR(1,0);
    ESCRIBE_MENSAJE2("Micro 2023-1");
    POS_CURSOR(2,0);
    ESCRIBE_MENSAJE2("Semana 14 i2c");
    __delay_ms(2000);
    BORRAR_LCD();
}

void pcf8574_write(unsigned char direccion, unsigned char dato){
    SSP1CON2bits.SEN = 1;
    while(SSP1CON2bits.SEN == 1);    //(1)cond.Start
    SSP1BUF = direccion;             //(2)slaveaddr+Wr
    while(SSP1STATbits.BF == 1);
    while(SSP1STATbits.R_nW == 1);   //(3)ACK
    SSP1BUF = dato;                  //(4)datasend
    while(SSP1STATbits.BF == 1);
    while(SSP1STATbits.R_nW == 1);   //(5)ACK
    SSP1CON2bits.PEN = 1;
    while(SSP1CON2bits.PEN == 1);    //(6)cond.Stop    
}

unsigned char pcf8574_read(unsigned char direccion){
    SSP1CON2bits.SEN = 1;
    while(SSP1CON2bits.SEN == 1);    //(1)cond.Start
    SSP1BUF = direccion;            //(2)slaveaddr+Rd
    while(SSP1STATbits.BF == 1);
    while(SSP1STATbits.R_nW == 1);   //(3)ACK
    SSP1CON2bits.RCEN = 1;        //modo lectura en el MSSP
    while(SSP1STATbits.BF == 0); //Esperamos a que se termine de recibir!
    SSP1CON2bits.ACKDT = 1;      //noACK
    SSP1CON2bits.ACKEN = 1;      //iniciamos secuencoa noACK
    while(SSP1CON2bits.ACKEN == 1);
    SSP1CON2bits.PEN = 1;
    while(SSP1CON2bits.PEN == 1);    //(6)cond.Stop    
    return SSP1BUF;
}

void main(void) {
    configuro();
    splash_msg();
    while(1){
        POS_CURSOR(1,0);
        LCD_ESCRIBE_VAR_CHAR(prueba,2);
        pcf8574_write(0x40, 0xA5);
        POS_CURSOR(2,0);
        LCD_ESCRIBE_VAR_CHAR(pcf8574_read(0x43),3);
    }
}
