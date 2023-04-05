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
    clrf TRISD
    clrf ANSELD
    movlw 0FH
    movwf TRISB
    clrf ANSELB
    bcf INTCON2, 7	;internal pull-up resistors enabled on PORTB :D
    
inicio:
    btfsc PORTB, 0
    goto otro1
    movlw 01110110B
    movwf LATD
    bra inicio
otro1:
    btfsc PORTB, 1
    goto otro2
    movlw 00111111B
    movwf LATD
    bra inicio
otro2:
    btfsc PORTB, 2
    goto otro3
    movlw 00111000B
    movwf LATD
    bra inicio
otro3:    
    btfsc PORTB, 3
    goto otro4
    movlw 01110111B
    movwf LATD
    bra inicio
otro4:    
    clrf LATD
    bra inicio
    end upcino

