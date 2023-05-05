    PROCESSOR 18F45K50
    #include "cabecera.inc"
    
    PSECT upcinos, class=CODE, reloc=2, abs
upcinos:
    
num_nopes EQU 000H
 
    ORG 001200H
mensaje: DB 73H, 06H, 38H, 77H
 
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
    movlw 0F8H
    movwf TRISC
    movwf ANSELC
    bcf TRISE, 0
    bcf ANSELE, 0
    
    clrf TBLPTRU
    movlw HIGH mensaje
    movwf TBLPTRH
    movlw LOW mensaje
    movwf TBLPTRL
    
inicio:
    clrf TBLPTRL
    call multiplex
    bra inicio

multiplex:
    TBLRD*+
    movff TABLAT, LATD
    bsf LATC, 0
    call nopes
    bcf LATC, 0
    TBLRD*+
    movff TABLAT, LATD
    bsf LATC, 1
    call nopes
    bcf LATC, 1
    TBLRD*+
    movff TABLAT, LATD
    bsf LATC, 2
    call nopes
    bcf LATC, 2
    TBLRD*
    movff TABLAT, LATD
    bsf LATE, 0
    call nopes
    bcf LATE, 0
    return
    
nopes:
    movlw 10
    movwf num_nopes
bucle:
    nop
    decfsz num_nopes, f
    bra bucle
    return

    end upcinos



