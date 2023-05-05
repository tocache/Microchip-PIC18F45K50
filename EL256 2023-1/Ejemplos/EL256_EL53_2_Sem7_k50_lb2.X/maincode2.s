    PROCESSOR 18F45K50
    #include "cabecera.inc"
    
    PSECT upcinos, class=CODE, reloc=2, abs
upcinos:
    
num_nopes EQU 000H
desplazo EQU 005H 
indicador EQU 006H 
temporal1 EQU 007H
temporal2 EQU 008H
temporal3 EQU 009H
 
    ORG 001200H
mensaje1: DB 00H, 00H, 00H, 00H, 73H, 06H, 38H, 77H, 00H, 00H, 00H
 
    ORG 001300H
mensaje2: DB 00H, 00H, 00H, 00H, 73H, 77H, 73H, 77H, 00H, 00H, 00H

    ORG 000000H
    bra configuro
    
    ORG 000008H
    bra TMR0_ISR
    
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
    bsf TRISA, 0
    bcf ANSELA, 0
    bcf TRISA, 1
    bcf ANSELA, 0
    bcf TRISA, 2
    bcf ANSELA, 0
    
    movlw 88H
    movwf T0CON
    
    bsf INTCON, 7
    bsf INTCON, 5
    bcf INTCON, 2
    
    clrf TBLPTRU
    clrf desplazo
    
inicio:
    btfsc PORTA, 0
    bra con_luz
    bra sin_luz
con_luz:
    movlw 12H
    movwf TBLPTRH
    bsf indicador, 0
    bra sigue1
sin_luz:
    movlw 13H
    movwf TBLPTRH
    bcf indicador, 0
    bra sigue1
sigue1:    
    movff desplazo, TBLPTRL
    call multiplex
    bra inicio

multiplex:
    TBLRD*+
    call decabeza
    movff temporal3, LATD
    bsf LATC, 0
    call nopes
    bcf LATC, 0
    TBLRD*+
    call decabeza
    movff temporal3, LATD
    bsf LATC, 1
    call nopes
    bcf LATC, 1
    TBLRD*+
    call decabeza
    movff temporal3, LATD
    bsf LATC, 2
    call nopes
    bcf LATC, 2
    TBLRD*
    call decabeza
    movff temporal3, LATD
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

TMR0_ISR:
    bcf INTCON, 2
    btfss indicador, 0
    bra LED1
    bcf LATA, 1
    btg LATA, 2
    bra sigue2
LED1:    
    btg LATA, 1
    bcf LATA, 2
sigue2:    
    movlw 7
    cpfseq desplazo
    bra no_siete
    clrf desplazo
    retfie
no_siete:
    incf desplazo, 1
    retfie
    
decabeza:
    movff TABLAT, temporal1
    rrncf temporal1, 1
    rrncf temporal1, 1
    rrncf temporal1, 0
    andlw 07H
    movwf temporal1
    movff TABLAT, temporal2
    rlncf temporal2, 1
    rlncf temporal2, 1
    rlncf temporal2, 0
    andlw 38H
    movwf temporal2
    movff TABLAT, temporal3
    movlw 40H
    andwf temporal3
    movf temporal1, w
    addwf temporal2, w
    addwf temporal3, f
    return
    
    
    
    end upcinos






