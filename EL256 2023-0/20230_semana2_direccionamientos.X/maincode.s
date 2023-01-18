    PROCESSOR 18F45K50
    #include "cabecera.inc"
    
    PSECT principal, class=CODE, reloc=2, abs
principal:

    ORG 000000H		;vector de reset
    bra configuro

    ORG 000020H	        ;zona de programa de usuario
configuro:		;configuraciones de modulos
    movlb 0FH		;para acceder a los SFR
    movlw 52H
    movwf OSCCON, 0	;HFINTOSC a 4MHz / Internal oscillator block
    clrf OSCCON2, 0
    clrf TRISD		;RD como salidas
    bcf ANSELA, 0	;RA0 como entrada digital

loop:
    btfss PORTA, 0
    bra escero
    bra esuno
    ;Ejercicio de direccionamiento directo
escero:
    movlw 55H		;cargo literal 55H a Wreg
    movwf 000H		;muevo contenido de Wreg a GPR 000H
    movff 000H, LATD	;muevo contenido de GPR 000H hacia registro LATD
    bra loop
    
    ;Ejercicio de direccionamiento indirecto
esuno:    
    lfsr 0, 000H	;asignando direccion 000H hacia puntero FSR0
    movlw 0AAH		;cargo literal 55H a Wreg
    movwf INDF0		;muevo contenido de Wreg hacia INDF0
    movff INDF0, LATD	;muevo contenido de INDF0 hacia LATD
    bra loop
    end principal

