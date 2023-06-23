/* #include "lcd_i2c.h"
*
* Creada por: Ing. Abiezer Hernandez O.
* Fecha de creacion: 05/12/2019
* Electronica y Circuitos
*
*/

#include "i2c_lcd.h"

void Lcd_I2C_Write(unsigned char dato)
{
    I2C_Start();
    I2C_Write(ADDRESS_LCD);
    I2C_Write(dato|LCD_LED);
    I2C_Stop();
}

void Lcd_Port(unsigned char add, unsigned char nibble)
{  
    char datos;
    if((nibble & 1)==1) datos = datos|LCD_D4; else datos = datos&~LCD_D4;
    if((nibble & 2)==2) datos = datos|LCD_D5; else datos = datos&~LCD_D5;
    if((nibble & 4)==4) datos = datos|LCD_D6; else datos = datos&~LCD_D6;
    if((nibble & 8)==8) datos = datos|LCD_D7; else datos = datos&~LCD_D7;
    __delay_us(60);
    if(add == 1)
        datos = datos|LCD_RS;
    else
        datos = datos &~LCD_RS; 
    
    Lcd_I2C_Write(datos|LCD_E);
    __delay_us(2);
    Lcd_I2C_Write(datos&~LCD_E);
}

void Lcd_Send_Byte(unsigned char add, unsigned char n)
{
    Lcd_Port(add, n >> 4);
    Lcd_Port(add, n & 0x0F);
}

void Lcd_Init(void)
{
    char i;
    I2C_Start();
    I2C_Write(ADDRESS_LCD);
    I2C_Write(0x00);
    I2C_Stop();
    __delay_ms(15);

    for(i=0 ;i<3; i++)
    {
        Lcd_Send_Byte(0, 0x03);
        __delay_ms(5);
    }
    Lcd_Send_Byte(0, 0x02);
    Lcd_Send_Byte(0, 0x28);
    __delay_ms(5);
    Lcd_Send_Byte(0, 0x08);
    __delay_ms(5);
    Lcd_Send_Byte(0, 0x01);
    __delay_ms(5);
    Lcd_Send_Byte(0, 0x06);
    __delay_ms(5);
    Lcd_Send_Byte(0, 0x0C);
}

void Lcd_Cmd(unsigned char cmd)
{
    Lcd_Send_Byte(0, cmd);
}

void Lcd_Set_Cursor(char row, char col)
{
    switch(row)
    {
        case 1: Lcd_Send_Byte(0, 0x80 | (col -1)); break;
        case 2: Lcd_Send_Byte(0, 0xC0 | (col -1)); break;
        case 3: Lcd_Send_Byte(0, 0x94 | (col -1)); break;
        case 4: Lcd_Send_Byte(0, 0xD4 | (col -1)); break;
    }
}

void Lcd_Write_Char(char c)
{
    Lcd_Send_Byte(1, c);
}

void Lcd_Write_String(const char *str)
{
    while(*str != '\0')
    {
        Lcd_Send_Byte(1, *str++);
    }
}

void Lcd_Clear(void)
{
    Lcd_Send_Byte(0, 1);
}

void Lcd_Shift_Right(void)
{
	Lcd_Cmd(0x1C);
}

void Lcd_Shift_Left(void)
{
	Lcd_Cmd(0x18);
}

void Lcd_Blink(void)
{
    Lcd_Cmd(0x0F);
}

void Lcd_NoBlink(void)
{
    Lcd_Cmd(0x0C);
}

void Lcd_CGRAM_WriteChar(unsigned char n)
{
   Lcd_Send_Byte(1, n);
}

void Lcd_CGRAM_SetPosition(char p)
{
    Lcd_Send_Byte(0, 0x40+p*8);
}

void Lcd_CGRAM_CreateChar(char* new_char)
{
    for(char cg=0; cg<=7;cg++)
    {
        Lcd_Send_Byte(1,new_char[cg]);
    }
}