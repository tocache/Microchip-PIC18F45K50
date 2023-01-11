    PROCESSOR 18F45K50
    #include "cabecera.inc"

temporal EQU 000H
 
    PSECT principal, class=CODE, reloc=2, abs
principal:
    ORG 000000H		;Vector de RESET
    goto configuro
    
    ORG 000020H		;Zona de programa de usuario
configuro:
    ;Configuraciones de la aplicacion
    movlb 0FH
    movlw 52H
    movwf OSCCON	;HFINTOSC a 4MHz / Internal oscillator block
    clrf OSCCON2
    movlw 0F0H
    movwf TRISD		;RD3:RD0 como salidas
    movwf ANSELA	;RA3:RA0 como puertos digitales de entrada
    movwf ANSELB	;RB3:RB0 como puertos digitales de entrada
    movwf ANSELD	;RD3:RD0 como puertos digitales de salida
    bcf TRISE,0		;RE0 como salida
    bcf ANSELE, 0	;RE0 como digital
            
inicio:
    movff PORTA, temporal	;Mover PORTA hacia temporal1
    
    movff PORTB, temporal2	;Mover PORTB hacia temporal2
    movlw 0FH		;Valor de enmascaramiento
    andwf temporal1, f	;Enmascaramiento a temporal1
    andwf temporal2, f	;Enmascaramiento a temporal2
    movf temporal1, W	;Muevo contenido de temporal1 hacia Wreg
    addwf temporal2, W	;Sumo contenido de temporal2 con Wreg y resultado en Wreg
    movwf LATD		;Muevo contenido de Wreg (resultado de suma) a RD
    btfss LATD, 4	;Pregunto si bit4 de LATD es uno
    goto noes
    bsf LATE, 0		;Si hubo acarreo
    bra inicio		;Repito proceso
noes:
    bcf LATE, 0		;No hubo acarreo
    bra inicio

    end principal




