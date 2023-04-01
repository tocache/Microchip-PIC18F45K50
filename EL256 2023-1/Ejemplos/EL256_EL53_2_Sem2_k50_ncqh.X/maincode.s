    PROCESSOR 18F45K50
    #include "cabecera.inc"
    
    PSECT upcino, class=CODE, reloc=2, abs
upcino:
var_i EQU 000H    
var_j EQU 001H    
var_k EQU 002H    

    ORG 000000H
    bra configuro
    
    ORG 000020H
configuro:
    movlb 0FH
    movlw 52H
    movwf OSCCON
    movlw 0F8H
    movwf TRISE
    movwf ANSELE
    bsf TRISB, 0
    bcf ANSELB, 0
    
inicio:
    btfss PORTB, 0
    bra apagado
    movlw 01H
    movwf LATE
    call repeticua
    movlw 02H
    movwf LATE
    call repeticua
    movlw 04H
    movwf LATE
    call repeticua
    movlw 02H
    movwf LATE
    call repeticua
    bra inicio
    
apagado:
    clrf LATE
    bra inicio
    
repeticua:   
    movlw 80
    movwf var_i
otro1:
    call bucle1		;Salto a subrutina
    decfsz var_i, f
    goto otro1
    return
bucle1:
    movlw 20
    movwf var_j
otro2:
    call bucle2		;Salto a subrutina
    decfsz var_j, f
    goto otro2
    return
bucle2:
    movlw 20
    movwf var_k
otro3:
    nop			
    decfsz var_k, f
    goto otro3
    return      
    end upcino


