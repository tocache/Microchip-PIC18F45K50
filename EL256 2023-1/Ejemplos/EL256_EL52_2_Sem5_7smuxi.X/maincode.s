    PROCESSOR 18F45K50
    #include "cabecera.inc"
    
    PSECT upcino, class=CODE, reloc=2, abs
upcino:
    
    ORG 000000H
    bra configuro
    
    ORG 000900H
mensaje: DB 0EH,3EH,7DH,3FH    
    
    ORG 000020H
configuro:
    movlb 0FH		;bank 15
    movlw 52H
    movwf OSCCON	;INTOSC a 4MHz
    movlw 80H
    movwf TRISB
    movwf ANSELB	;RB6 al RB0 como salidas digitales
    movlw 0F0H
    movwf TRISA
    movwf ANSELA	;RA3 al RA0 como salidas digitales
    clrf TBLPTRU
    movlw HIGH mensaje
    movwf TBLPTRH
    movlw LOW mensaje
    movwf TBLPTRL	;apunto a 900H con el TBLPTR
    clrf LATA		;condicion inicial de la multiplexacion
    
inicio:
    TBLRD*+
    movff TABLAT, LATB
    bsf LATA, 0
    call un_ratito
    bcf LATA, 0
    TBLRD*+
    movff TABLAT, LATB
    bsf LATA, 1
    call un_ratito
    bcf LATA, 1
    TBLRD*+
    movff TABLAT, LATB
    bsf LATA, 2
    call un_ratito
    bcf LATA, 2
    TBLRD*
    movff TABLAT, LATB
    bsf LATA, 3
    call un_ratito
    bcf LATA, 3
    clrf TBLPTRL
    bra inicio

un_ratito:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    return
    end upcino