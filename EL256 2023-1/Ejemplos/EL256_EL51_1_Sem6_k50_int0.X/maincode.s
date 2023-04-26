    PROCESSOR 18F45K50
    #include "cabecera.inc"
    
    PSECT upcino, class=CODE, reloc=2, abs
upcino:
    
var_i EQU 000H    
var_j EQU 001H
var_k EQU 002H   
 
    ORG 000000H		;vector de reset
    bra configuro

    ORG 000008H		;vector de interurpcion de alta prioridad
    bra INT0_ISR
    
    ORG 000020H
configuro:
    movlb 0FH
    movlw 52H
    movwf OSCCON
    bcf TRISA, 0	;RA0 salida
    bcf ANSELA, 0	;RA0 digital
    movlw 0FCH
    movwf TRISD		;RD1 a RD0 como salidas
    movwf ANSELD	;RD1 a RD0 como digitales
    bsf TRISB, 0	;RB0 como entrada
    bcf ANSELB, 0	;RB0 como digital
    movlw 90H
    movwf INTCON	;GIE=1, INT0IE=1
    bcf INTCON, 6	;INTEDG0=0
    ;bcf INTCON2, 7	;RBPU activado todos
    bsf WPUB, 0		;RB0 pullup activado

inicio:
    bsf LATA, 0		;RA0 en uno
    call repeticua	;subrutina de retardo
    bcf LATA, 0		;RA0 en cero
    call repeticua	;subrutina de retardo
    bra inicio
    
INT0_ISR:
    bcf INTCON, 1	;bajamos la bandera de la INT0
    incf LATD, f
    retfie
    
repeticua:   
    movlw 80
    movwf var_i
otro1:
    call bucle1		;Salto a subrutina
    decfsz var_i, 1
    goto otro1
    return
bucle1:
    movlw 50
    movwf var_j
otro2:
    call bucle2		;Salto a subrutina
    decfsz var_j, 1
    goto otro2
    return
bucle2:
    movlw 18
    movwf var_k
otro3:
    nop			
    decfsz var_k, 1
    goto otro3
    return    
    
    end upcino    
    
    


