/* #include "i2c.h"
*
* Creada por: Ing. Abiezer Hernandez O.
* Fecha de creacion: 25/11/2019
* Electronica y Circuitos
*
*/

#include "i2c.h"

#ifdef I2C_MASTER_MODE
void I2C_Init_Master(unsigned char sp_i2c)
{
    TRIS_SCL = 1;
    TRIS_SDA = 1;
    SSPSTAT = sp_i2c;
	SSPCON1 = 0x28;
    SSPCON2 = 0x00;
    if(sp_i2c == I2C_100KHZ){
        SSPADD = 119;
    }
    else if(sp_i2c == I2C_400KHZ){
        SSPADD = 29;
    }
}

void I2C_Start(void)
{
    SSPCON2bits.SEN = 1;
    while(PIR1bits.SSPIF == 0);
    PIR1bits.SSPIF = 0;
}

void I2C_Stop(void)
{
    SSPCON2bits.PEN = 1;
    while(PIR1bits.SSPIF == 0);
    PIR1bits.SSPIF = 0;
}

void I2C_Restart(void)
{
    SSPCON2bits.RSEN = 1;
    while(PIR1bits.SSPIF == 0);
    PIR1bits.SSPIF = 0;
}

void I2C_Ack(void)
{
    SSPCON2bits.ACKDT = 0;
	SSPCON2bits.ACKEN = 1;
	while(PIR1bits.SSPIF == 0);
    PIR1bits.SSPIF = 0;
}

void I2C_Nack(void)
{
    SSPCON2bits.ACKDT = 1;
	SSPCON2bits.ACKEN = 1;
	while(PIR1bits.SSPIF == 0);
    PIR1bits.SSPIF = 0;
}

short I2C_Write(char data)
{
    SSPBUF = data;
    while(PIR1bits.SSPIF == 0);
    PIR1bits.SSPIF = 0;
    short b_ok = SSPCON2bits.ACKSTAT;
    return b_ok;
}

unsigned char I2C_Read(void)
{
    SSPCON2bits.RCEN = 1;
    while(PIR1bits.SSPIF == 0);
    PIR1bits.SSPIF = 0;
    return SSPBUF;
}
#endif

#ifdef I2C_SLAVE_MODE
void I2C_Init_Slave(unsigned char add_slave)
{
    TRIS_SCL = 1;
    TRIS_SDA = 1;
    SSPSTAT = 0x80;
    SSPADD = add_slave;
    SSPCON1 = 0x36;
    SSPCON2 = 0x01;
    INTCONbits.GIE = 1;
    INTCONbits.PEIE = 1;
    PIR1bits.SSPIF = 0;
    PIE1bits.SSPIE = 1;
}

short I2C_Error_Read(void)
{
    SSPCON1bits.CKP = 0;
    return ((SSPCON1bits.SSPOV) || (SSPCON1bits.WCOL)) ? 1 : 0;
}

short I2C_Write_Mode(void)
{
    return(!SSPSTATbits.D_nA && !SSPSTATbits.R_nW) ? 1 : 0;
}
short I2C_Read_Mode(void)
{
    return (!SSPSTATbits.D_nA && SSPSTATbits.R_nW) ? 1: 0;
}

void I2C_Error_Data(void)
{
    short z;
    SSPCON1bits.CKP = 0;
    z = SSPBUF;
    SSPCON1bits.SSPOV = 0;
    SSPCON1bits.WCOL = 0;
    SSPCON1bits.CKP = 1;
    SSPCON1bits.SSPM3 = 0;
}

unsigned char I2C_Read_Slave(void)
{
    short z;
    unsigned char dato_i2c;
    z = SSPBUF;
    while(!BF);
    dato_i2c = SSPBUF;
    SSPCON1bits.CKP = 1;
    SSPCON1bits.SSPM3 = 0;
    return dato_i2c;
}

void I2C_Write_Slave(char dato_i2c)
{
    short z;
    z = SSPBUF;
    BF = 0;
    SSPBUF = dato_i2c;
    SSPCON1bits.CKP = 1;
    while(SSPSTATbits.BF == 1);
}
#endif