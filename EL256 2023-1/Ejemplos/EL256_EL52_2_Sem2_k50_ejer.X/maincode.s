    PROCESSOR 18F45K50
    #include "cabecera.inc"
    
    PSECT upcino, class=CODE, reloc=2, abs
upcino:
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

inicio:
    btfsc PORTB, 0
    goto fiufiu
    movlw 06H
    movwf LATD
    bra inicio
fiufiu:
    movlw 09H
    movwf LATD
    bra inicio
    end upcino
    
    
    


