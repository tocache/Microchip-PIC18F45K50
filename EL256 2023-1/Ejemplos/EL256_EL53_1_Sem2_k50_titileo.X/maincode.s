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
    movlb 0FH		    ;BSR al ban15 y acceder a los SFR
    movlw 52H
    movwf OSCCON	    ;oscilador interno a 4MHz
    bcf TRISD, 0	    ;RD0 como salida
    bcf ANSELD, 0	    ;RD0 como digital
    bcf TRISE, 0	    ;RE0 como salida
    bcf ANSELE, 0	    ;RE0 como digital
    bsf LATE, 0
    bcf LATD, 0
inicio:
    call repeticua	    ;subrutina de retardo
    btg LATD, 0		    ;basculo RD0
    btg LATE, 0		    ;basculo RD0
    bra inicio		    ;salto a inicio
    
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


