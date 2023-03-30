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
    bcf TRISB, 0
    bcf ANSELB, 0
    bcf TRISD, 0
    bcf ANSELD, 0
    bcf TRISE, 0
    bcf ANSELE, 0
    bsf TRISC, 0
    bcf ANSELC, 0
    bcf LATB, 0
    bcf LATD, 0
    bcf LATE, 0
    
inicio:
    btfss PORTC, 0
    bra inicio
un:
    btg LATB, 0
    btg LATD, 0
    btg LATE, 0
tre:
    btfsc PORTC, 0
    bra tre
    bra inicio
    end upcino


