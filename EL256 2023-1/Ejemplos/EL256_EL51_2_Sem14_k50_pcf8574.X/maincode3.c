#include <xc.h>
#include "cabecera.h"
#define _XTAL_FREQ 4000000UL

unsigned char auto_fa[]={0x01,0x02,0x04,0x08,0x10,0x20,0x40,
                        0x80,0x40,0x20,0x10,0x08,0x04,0x02};

void configuro(void){
    OSCCON = 0x52;
    TRISD = 0x00;
    ANSELD = 0x00;
    //configuracion del MSSP
    SSP1CON1bits.SSPEN = 1;      //habilitar el MSSP
    SSP1CON1bits.SSPM = 0b1000;  //MSSP en modo i2c maestro
    SSP1ADD = 119;               //datarate 100k    
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
    SSP1BUF = direccion + 1;        //(2)slaveaddr+Rd
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
    while(1){
        LATD = ~pcf8574_read(0x40);
    }
}
