#include <xc.h>
#include "cabecera.h"
#include "LCD.h"
#define _XTAL_FREQ 4000000UL

unsigned char centenas, decenas, unidades;
unsigned char horas = 16, minutos = 54, segundos = 0, ticks = 0;

void configuro(void){
    OSCCON=0x52;
    TRISD = 0x00;
    ANSELD = 0x00;
    TRISAbits.TRISA0 = 1;       //RA0 como entrada
    ANSELAbits.ANSA0 = 1;     //RA0 como analogico
    TRISCbits.TRISC1 = 0;       //RC1 como salida
    INTCON2bits.NOT_RBPU=0;
    TRISB = 0xFF;
    ANSELB = 0xF8;
    WPUB = 0x07;
    //configuracion del ADC
    ADCON0 = 0x01;              //ADC on, ch0 selected
    ADCON1 = 0x00;              //Vref+ a Vdd y Vref- a Vss
    ADCON2 = 0x24;              //8tad y fosc/4, just izquierda
    //configuracion del CCP para PWM
    PR2 = 62;                   //un periodo completo, 100%
    //CCPR2L = 31;                //duty cycle inicial 50%
    T2CON = 0x06;               //TMR2 on, 1:16 psc
    CCP2CON = 0x0C;             //CCP2 en modo PWM
    //configuracion de Timer1 con CCP1
    T1CON = 0x01;
    CCP1CON = 0x0B;
    CCPR1H = 0x27;
    CCPR1L = 0x10;
    //interrupciones
    INTCONbits.GIE = 1;
    INTCONbits.PEIE=1;
    PIE1bits.CCP1IE = 1;
    INTCONbits.INT0IE=1;
    INTCON3bits.INT1IE=1;
    INTCON3bits.INT2IE=1;
    INTCON2bits.INTEDG0 = 0;
    INTCON2bits.INTEDG1 = 0;
    INTCON2bits.INTEDG2 = 0;
    //holy cow! 4 interrupt sources!!!!!!!!!
}

void lcd_config(void){
    __delay_ms(15);
    LCD_CONFIG();
    __delay_ms(15);
    BORRAR_LCD();
    CURSOR_HOME();
    CURSOR_ONOFF(OFF);
    //LATCbits.LATC2 = 1;   era para un led
}

void splash_screen(void){
    POS_CURSOR(1,0);
    ESCRIBE_MENSAJE2("Relojito!");
}

void convierte(unsigned char numero){
    centenas = numero / 100;
    decenas = (numero % 100) / 10;
    unidades = numero % 10;
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
        CCPR2L = ADRESH /4;             //para marcar 256/4=64, cercano a 62      
        POS_CURSOR(2,0);
        convierte(horas);
        ENVIA_CHAR(decenas+0x30);
        ENVIA_CHAR(unidades+0x30);
        ENVIA_CHAR(':');
        convierte(minutos);
        ENVIA_CHAR(decenas+0x30);
        ENVIA_CHAR(unidades+0x30);
        ENVIA_CHAR(':');
        convierte(segundos);
        ENVIA_CHAR(decenas+0x30);
        ENVIA_CHAR(unidades+0x30);
        ENVIA_CHAR(':');
        convierte(ticks);
        ENVIA_CHAR(decenas+0x30);
        ENVIA_CHAR(unidades+0x30);
    }
}

void __interrupt() Sources_ISR(void){
    if(PIR1bits.CCP1IF == 1){
        PIR1bits.CCP1IF = 0;
        if(ticks == 99){
            ticks = 0;
            if(segundos == 59){
                segundos = 0;
                if(minutos == 59){
                    minutos = 0;
                    if(horas == 23){
                        horas = 0;
                    }
                    else{
                        horas++;
                    }
                }
                else{
                    minutos++;
                }
            }
            else{
                segundos++;
            }
        }
        else{
            ticks++;
        }
    }
    else if(INTCONbits.INT0IF == 1){
        INTCONbits.INT0IF = 0;
        if(horas == 23){
            horas = 0;
        }
        else{
            horas++;
        }
    }
    else if(INTCON3bits.INT1IF == 1){
        INTCON3bits.INT1IF = 0;
        if(minutos == 59){
            minutos = 0;
        }
        else{
            minutos++;
        }
    }
    else if(INTCON3bits.INT2IF == 1){
        INTCON3bits.INT2IF = 0;
        segundos = 0;
    }
}

