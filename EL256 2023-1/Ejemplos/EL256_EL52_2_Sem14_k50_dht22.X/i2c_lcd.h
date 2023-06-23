/* #include "lcd_i2c.h"
*
* Creada por: Ing. Abiezer Hernandez O.
* Fecha de creacion: 05/12/2019
* Electronica y Circuitos
*
*/

#include <xc.h>
#define _XTAL_FREQ 4000000

#include "i2c.h"

#define ADDRESS_LCD 0x4E

// Pines del PCF8574
#define P0  0x01
#define P1  0x02
#define P2  0x04
#define P3  0x08
#define P4  0x10
#define P5  0x20
#define P6  0x40
#define P7  0x80

// Pines de la pantalla LCD
#define LCD_LED P3
#define LCD_RS  P0
#define LCD_RW  P1 
#define LCD_E   P2
#define LCD_D4  P4
#define LCD_D5  P5
#define LCD_D6  P6
#define LCD_D7  P7

void Lcd_I2C_Write(unsigned char dato);
void Lcd_Port(unsigned char add, unsigned char nibble);
void Lcd_Send_Byte(unsigned char add, unsigned char n);
void Lcd_Init(void);
void Lcd_Cmd(unsigned char cmd);
void Lcd_Set_Cursor(char row, char col);
void Lcd_Write_Char(char c);
void Lcd_Write_String(const char *str);
void Lcd_Clear(void);
void Lcd_Shift_Right(void);
void Lcd_Shift_Left(void);
void Lcd_Blink(void);
void Lcd_NoBlink(void);
void Lcd_CGRAM_WriteChar(unsigned char n);
void Lcd_CGRAM_SetPosition(char p);
void Lcd_CGRAM_CreateChar(char* new_char);