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
    movlw 80H
    movwf TRISD
    movwf ANSELD
    movlw 0F0H
    movwf ANSELB
    bcf INTCON2, 7
    
inicio:    
    btfsc PORTB, 0
    bra otro1
    movlw 00111001B
    movwf LATD
    bra inicio
otro1:    
    btfsc PORTB, 1
    bra otro2
    movlw 01110111B
    movwf LATD
    bra inicio
otro2:    
    btfsc PORTB, 2
    bra otro3
    movlw 01110001B
    movwf LATD
    bra inicio
otro3:    
    btfsc PORTB, 3
    bra otro4
    movlw 01111001B
    movwf LATD
    bra inicio
otro4:
    clrf LATD
    bra inicio
    end upcino
