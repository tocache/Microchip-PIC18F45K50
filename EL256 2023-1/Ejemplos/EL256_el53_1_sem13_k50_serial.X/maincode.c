#include <xc.h>
#include <string.h>
#include "cabecera.h"
#define _XTAL_FREQ 4000000UL

void configuro(void){
    //configuracion del oscilador interno
    OSCCON = 0x52;
    //configuracion de las E/S
    TRISAbits.RA0 = 0;          //ra0 salida
    ANSELAbits.ANSA0 = 0;       //ra0 digital
    TRISB = 0xF3;               //rb0 y rb1 entradas, rb2 y rb3 salidas
    ANSELB = 0xF0;              //rb0 al rb3 digitales
    TRISCbits.RC6 = 0;          //rc6 salida
    ANSELCbits.ANSC6 = 0;       //rc6 digital
    TRISCbits.RC7 = 1;          //rc7 entrada
    ANSELCbits.ANSC7 = 0;       //rc7 digital
    TRISD = 0x0F;               //rd4 al rd7 salidas
    ANSELD = 0x0F;              //rd4 al rd7 digitales
    TRISE = 0xF8;               //re0 al re2 salidas
    ANSELE = 0xF8;              //re0 al re2 digitales
    //configuracion de interrupciones
    INTCON2bits.nRBPU = 0;      //pullup de rb activadas
    WPUB = 0x03;                //habilitacion de pullup individuales en rb0 y rb1
    RCONbits.IPEN = 1;          //hi-lo priority enabled
    INTCONbits.GIEH = 1;        //hi priority global enabled
    INTCONbits.GIEL = 1;        //lo priority global enabled
    INTCONbits.INT0IE = 1;      //INT0 enabled
    INTCON3bits.INT1IE = 1;     //INT1 enabled
    INTCON3bits.INT1IP = 0;     //INT1 a la low_priority
    INTCON2bits.INTEDG0 = 0;    //falling edge para INT0
    INTCON2bits.INTEDG1 = 0;    //falling edge para INT1
    //configuracion del EUSART
    TXSTAbits.BRGH = 1;         //BRGH = 1
    SPBRGH1 = 0;
    SPBRG1 = 25;                //vtx de 9600 baudios
    TXSTAbits.TXEN = 1;         //encendemos el transmisor del eusart
    RCSTAbits.SPEN = 1;         //encendemos el modulo eusart
    RCSTAbits.CREN = 1;         //encendemos el receptor
    PIE1bits.RC1IE = 1;         //interrupcion del receptor del eusart enabled
}

void EUSART_ByteSend(unsigned char dato){
    TXREG1 = dato;
    while(TXSTAbits.TRMT == 0);
}

void EUSART_StringSend(unsigned char *cadenasa){
    unsigned char tam;
    tam = strlen(cadenasa);
    unsigned char x;
    for(x=0;x<tam;x++){
        EUSART_ByteSend(cadenasa[x]);
    }
}

void EUSART_NewLine(void){
    TXREG1 = 0x0A;
    while(TXSTAbits.TRMT == 0);
    TXREG1 = 0x0D;
    while(TXSTAbits.TRMT == 0);
}

void main(void) {
    configuro();
    EUSART_StringSend("PIC18F45K50 arrancando...");
    EUSART_NewLine();
    while(1);
}

void __interrupt(high_priority) INT0_ISR(void){
    if(INTCONbits.INT0IF == 1){
        INTCONbits.INT0IF = 0;
        EUSART_StringSend("Hola mundo");
        EUSART_NewLine();
    }
    else if(PIR1bits.RC1IF == 1){
        switch(RCREG1){
            case '1':
                LATBbits.LATB2 = 1;
                EUSART_StringSend("LED en RB2 encendido");
                EUSART_NewLine();
                break;
            case '2':
                LATBbits.LATB2 = 0;
                EUSART_StringSend("LED en RB2 apagado");
                EUSART_NewLine();
                break;
            case '3':
                LATBbits.LATB3 = 1;
                EUSART_StringSend("LED en RB3 encendido");
                EUSART_NewLine();
                break;
            case '4':
                LATBbits.LATB3 = 0;
                EUSART_StringSend("LED en RB3 apagado");
                EUSART_NewLine();
                break;
            case 'L':
                EUSART_StringSend("moviendo servo para cero grados");
                EUSART_NewLine();
                LATAbits.LA0 = 1;
                __delay_us(700);
                LATAbits.LA0 = 0;
                __delay_us(19300);
                break;
            case 'C':
                EUSART_StringSend("moviendo servo para 90 grados");
                EUSART_NewLine();
                LATAbits.LA0 = 1;
                __delay_us(1500);
                LATAbits.LA0 = 0;
                __delay_us(18500);
                break;
            case 'R':
                EUSART_StringSend("moviendo servo para 180 grados");
                EUSART_NewLine();
                LATAbits.LA0 = 1;
                __delay_us(2300);
                LATAbits.LA0 = 0;
                __delay_us(17700);
                break;
            default:
                EUSART_StringSend("opcion errada intente de nuevo on");
                EUSART_NewLine();
                break;
        }
    }
}

void __interrupt(low_priority) INT1_ISR(void){
    INTCON3bits.INT1IF = 0;
    EUSART_StringSend("Microcontroladores 2023-1");
    EUSART_NewLine();
}
