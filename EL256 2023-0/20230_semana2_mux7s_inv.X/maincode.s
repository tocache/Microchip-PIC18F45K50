    PROCESSOR 18F45K50
    #include "cabecera.inc"
    
    PSECT principal, class=CODE, reloc=2, abs
principal:

data1 EQU 005H
data2 EQU 006H
data3 EQU 007H
data4 EQU 008H
    
    ORG 000000H		;vector de reset
    bra configuro
    ORG 001000H		;Zona de palabra COSA
datos1:	DB 39H,3FH,6DH,77H

    ORG 000020H	        ;zona de programa de usuario
configuro:		;configuraciones de modulos
    movlb 0FH		;para acceder a los SFR
    movlw 52H
    movwf OSCCON, 0	;HFINTOSC a 4MHz / Internal oscillator block
    clrf OSCCON2, 0
    movlw 0F0H
    movwf ANSELA, 1	;RA3:RA0 como digitales
    movwf TRISA, 0		;RA3:RA0 como salidas
    movlw 0FH
    movwf LATA, 0		;RA3:RA0 en uno lógico (en alto)
    bcf ANSELC, 0, 1		;RC0 como entrada digital
    clrf ANSELD, 1		;todos los pines de RD como digitales
    clrf TRISD, 0		;todos los pines de RD como salidas
    clrf TBLPTRU, 0 

loop:			;programa de la aplicacion
    movlw 10H
    movwf TBLPTRH, 0
    clrf TBLPTRL, 0
    bra salida

salida:    
    TBLRD*+
    movff TABLAT, data1
    TBLRD*+
    movff TABLAT, data2
    TBLRD*+
    movff TABLAT, data3
    TBLRD*+
    movff TABLAT, data4    
    call multiplex
    bra loop
    
multiplex:
    movf data1, 0, 0
    movwf LATD, 0
    bcf LATA,0, 0
    call nopes
    bsf LATA,0, 0
    movf data2, 0, 0
    movwf LATD, 0
    bcf LATA,1, 0
    call nopes
    bsf LATA,1, 0
    movf data3, 0, 0
    movwf LATD, 0
    bcf LATA,2, 0
    call nopes
    bsf LATA,2, 0
    movf data4, 0, 0
    movwf LATD, 0
    bcf LATA,3, 0
    call nopes
    bsf LATA,3, 0
    return
    
nopes:
    nop
    nop
    nop
    nop
    nop
    nop
    return
    end principal














