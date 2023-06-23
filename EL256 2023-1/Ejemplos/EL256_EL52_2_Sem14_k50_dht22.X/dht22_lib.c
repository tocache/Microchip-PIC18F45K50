#include "dht22_lib.h"

void DHT22_Start(void){
    TRISAbits.RA0 = 0;      //Puerto RB0 como salida
    LATAbits.LA0 = 0;       //Mandamos cero
    __delay_ms(18);         //Esperamos 1 milisegundo
    LATAbits.LA0 = 1;       //Mandamos uno
    __delay_us(40);         //Esperamos 20 microsegundos
    TRISAbits.RA0 = 1;      //Puerto como entrada
}

void DHT22_Check(void){
    while(PORTAbits.RA0);
    __delay_us(80);
    while(!PORTAbits.RA0);
    __delay_us(80);
    while(PORTAbits.RA0);
}

unsigned char DHT22_Read(void){
    unsigned char x = 0, data = 0;
    for(x=0;x<8;x++){
        while(!PORTAbits.RA0);
        __delay_us(35);
        if(PORTAbits.RA0){
            data = ((data<<1) | 1);
        }
        else{
            data = (data<<1);
        }
        while(PORTAbits.RA0);
    }
    return data;
}