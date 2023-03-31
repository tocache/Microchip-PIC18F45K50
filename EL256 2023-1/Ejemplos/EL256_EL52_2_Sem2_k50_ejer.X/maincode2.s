    PROCESSOR 18F45K50
    #include "cabecera.inc"
    
    PSECT upcino, class=CODE, reloc=2, abs
upcino:
var_i EQU 000H
var_j EQU 001H
var_k EQU 002H
 
    
    ORG 000300H
codices:    db 01H, 02H, 04H, 08H, 04H, 02H, 01H    
    
    ORG 000000H
    bra configuro
    
    ORG 000020H
configuro:
    movlb 0FH
    movlw 52H
    movwf OSCCON
    movlw 0F0H
    movwf TRISD		;salidas
    movwf ANSELD	;digitales
    bsf TRISB, 0	;entrada
    bcf ANSELB, 0	;digital
    movlw HIGH codices
    movwf TBLPTRH
    movlw LOW codices
    movwf TBLPTRL
    
inicio:
    TBLRD*+
    movff TABLAT, LATD
    call repeticua
    movlw 6
    cpfseq TBLPTRL
    bra inicio
    clrf TBLPTRL
    bra inicio

repeticua:   
    movlw 20
    movwf var_i
otro1:
    call bucle1		;Salto a subrutina
    decfsz var_i, f
    goto otro1
    return

bucle1:
    movlw 10
    movwf var_j
otro2:
    call bucle2		;Salto a subrutina
    decfsz var_j, f
    goto otro2
    return
    
bucle2:
    movlw 10
    movwf var_k, b
otro3:
    nop			
    decfsz var_k, f
    goto otro3
    return        
    
    end upcino
    


