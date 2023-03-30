    PROCESSOR 18F45K50
    #include "cabecera.inc"
    
    PSECT upcino, class=CODE, reloc=2, abs
upcino:
    ORG 000000H		    ;vector de reset
    bra configuro	    ;salto a label configuro
    
    ORG 000020H
configuro:
    movlb 0FH		    ;BSR a bank15
    movlw 52H
    movwf OSCCON	    ;INTOSCIO a 4MHZ
    clrf TRISB		    ;RB como salidas
    clrf ANSELB		    ;RB como digitales
    clrf TRISD		    ;RD como salidas
    clrf ANSELD		    ;RD como digitales
    
inicio:
    movlw 0A5H
    movwf LATB
    movlw 5AH
    movwf LATD
    end upcino


