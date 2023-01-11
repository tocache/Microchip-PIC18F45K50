    PROCESSOR 18F45K50
    #include "cabecera.inc"

var_a EQU 000H
var_b EQU 001H
var_c EQU 002H 
    
    PSECT principal, class=CODE, reloc=2, abs
principal:
    ORG 000000H		;Vector de RESET
    goto configuro
    
    ORG 000020H		;Zona de programa de usuario
configuro:
    ;Configuraciones de la aplicacion
    movlw 52H
    movwf OSCCON	;HFINTOSC a 4MHz / Internal oscillator block
    clrf OSCCON2
    bcf TRISD, 0
    bcf TRISD, 1
        
inicio:
    bsf LATD, 0
    bcf LATD, 1
    call retardo
    bcf LATD, 0
    bsf LATD, 1
    call retardo
    bra inicio

retardo:
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
    movlw 10
    movwf var_c
otro3:
    nop
    decfsz var_c, 1
    bra otro3
    return  
    
    end principal

