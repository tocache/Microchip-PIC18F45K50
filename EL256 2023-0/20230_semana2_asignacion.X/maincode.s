    PROCESSOR 18F45K50
    #include "cabecera.inc"
    
    PSECT principal, class=CODE, reloc=2, abs
principal:

var_a EQU 000H		;GPR 000H con label var_a
var_b EQU 001H		;GPR 000H con label var_b
var_c EQU 002H		;GPR 000H con label var_c
    
    ORG 000000H		;vector de reset
    bra configuro
    
    ORG 000020H	        ;zona de programa de usuario
configuro:		;configuraciones de modulos
    movlb 0FH		;para acceder a los SFR
    movlw 52H
    movwf OSCCON	;HFINTOSC a 4MHz / Internal oscillator block
    clrf OSCCON2
    movlw 0F8H
    movwf ANSELB	;RB2:RB0 como digitales
    clrf ANSELD		;todos los pines de RD como digitales
    clrf TRISD		;todos los pines de RD como salidas

loop:			;programa de la aplicacion
    btfss PORTB, 0	;pregunto si RB0 es uno
    bra salto1		;falso, va hacia salto1
    movlw 03H		;verdadero, procede a realizar visualiz1
    movwf LATD
    call retardo
    movlw 06H
    movwf LATD
    call retardo
    movlw 0CH
    movwf LATD
    call retardo
    movlw 18H
    movwf LATD
    call retardo
    movlw 30H
    movwf LATD
    call retardo
    movlw 60H
    movwf LATD
    call retardo
    movlw 0C0H
    movwf LATD
    call retardo
    bra loop
    
salto1:    
    btfss PORTB, 1	;pregunto si RB1 es uno
    bra salto2		;falso, va hacia salto2    movlw 03H
    movlw 03H		;verdadero, procede a hacer visualiz2
    movwf LATD
    call retardo
    movlw 0CH
    movwf LATD
    call retardo
    movlw 30H
    movwf LATD
    call retardo
    movlw 0C0H
    movwf LATD
    call retardo
    bra loop
    
salto2:    
    btfss PORTB, 2	;pregunto si RB2 es uno
    bra loop		;falso, va hacia loop
    movlw 05H		;verdadero, procede a hacer visualiz3
    movwf LATD
    call retardo
    movlw 0AH
    movwf LATD
    call retardo
    movlw 18H
    movwf LATD
    call retardo
    movlw 24H
    movwf LATD
    call retardo
    movlw 50H
    movwf LATD
    call retardo
    movlw 0A0H
    movwf LATD
    call retardo
    bra loop

retardo:	    ;subrutina de retardo
    movlw 100
    movwf var_a
otro1:
    call bucle1
    decfsz var_a, 1
    bra otro1
    return 
bucle1: 
    movlw 50
    movwf var_b
otro2:
    call bucle2
    decfsz var_b, 1
    bra otro2
    return 
bucle2: 
    movlw 50
    movwf var_c
otro3:
    nop
    decfsz var_c, 1
    bra otro3
    return    
    
    end principal


