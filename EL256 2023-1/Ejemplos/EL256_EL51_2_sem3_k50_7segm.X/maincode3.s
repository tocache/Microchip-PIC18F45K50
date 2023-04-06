    PROCESSOR 18F45K50
    #include "cabecera.inc"
    
    PSECT upcino, class=CODE, reloc=2, abs
upcino:
pato EQU 000H
 
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
    comf PORTB,W
    andlw 0FH
    movwf pato
    movlw 01H
    cpfseq pato
    bra otro1
    movlw 00111001B
    movwf LATD
    bra inicio
otro1:    
    movlw 02H
    cpfseq pato
    bra otro2
    movlw 01110111B
    movwf LATD
    bra inicio
otro2:    
    movlw 04H
    cpfseq pato
    bra otro3
    movlw 01110001B
    movwf LATD
    bra inicio
otro3:    
    movlw 08H
    cpfseq pato
    bra otro4
    movlw 01111001B
    movwf LATD
    bra inicio
otro4:
    clrf LATD
    bra inicio
    end upcino






