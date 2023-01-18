    PROCESSOR 18F45K50
    #include "cabecera.inc"
    
    PSECT principal, class=CODE, reloc=2, abs
principal:

var_a EQU 000H		;GPR 000H con label var_a
var_b EQU 001H		;GPR 001H con label var_b
var_c EQU 002H		;GPR 002H con label var_c
var_for EQU 003H	;GPR 003H con label var_for
var_vis EQU 004H	;GPR 004 con label var_vis
    
    ORG 000000H		;vector de reset
    bra configuro

    ORG 001000H		;Zona de visualiz1
datos1:	DB 03H, 06H, 0CH, 18H, 30H, 60H, 0C0H, 00H    
    ORG 002000H		;Zona de visualiz2
datos2:	DB 03H, 0CH, 30H, 0C0H, 00H   
    ORG 003000H		;Zona de visualiz3
datos3:	DB 05H, 0AH, 14H, 28H, 50H, 0A0H, 00H   
	
    ORG 000020H	        ;zona de programa de usuario
configuro:		;configuraciones de modulos
    movlb 0FH		;para acceder a los SFR
    movlw 52H
    movwf OSCCON	;HFINTOSC a 4MHz / Internal oscillator block
    clrf OSCCON2
    movlw 0F8H
    movwf ANSELB	;RB2:RB0 como digitales
    clrf ANSELD		;todos los pines de RD como digitales
    clrf TRISD		;todos los pines de RD como salidas

loop:			;programa de la aplicacion
    btfss PORTB, 0	;pregunto si RB0 es uno
    bra salto1		;falso, va hacia salto1
    clrf TBLPTRU
    movlw 10H		;verdadero, procede a realizar visualiz1
    movwf TBLPTRH
    clrf TBLPTRL
    movlw 7
    movwf var_vis
    call sub_visual
    bra loop
    
salto1:    
    btfss PORTB, 1	;pregunto si RB1 es uno
    bra salto2		;falso, va hacia salto2    movlw 03H
    clrf TBLPTRU
    movlw 20H		;verdadero, procede a realizar visualiz2
    movwf TBLPTRH
    clrf TBLPTRL
    movlw 4
    movwf var_vis
    call sub_visual
    bra loop
    
salto2:    
    btfss PORTB, 2	;pregunto si RB2 es uno
    bra loop		;falso, va hacia loop
    clrf TBLPTRU
    movlw 30H		;verdadero, procede a realizar visualiz3
    movwf TBLPTRH
    clrf TBLPTRL
    movlw 6
    movwf var_vis
    call sub_visual
    bra loop

sub_visual:
    clrf var_for
lazo:
    TBLRD*+
    movff TABLAT, LATD
    call retardo
    movf var_vis, w
    cpfslt var_for
    return
    incf var_for, f
    bra lazo
    
retardo:	    ;subrutina de retardo
    movlw 100
    movwf var_a
otro1:
    call bucle1
    decfsz var_a, 1
    bra otro1
    return 
bucle1: 
    movlw 50
    movwf var_b
otro2:
    call bucle2
    decfsz var_b, 1
    bra otro2
    return 
bucle2: 
    movlw 50
    movwf var_c
otro3:
    nop
    decfsz var_c, 1
    bra otro3
    return    
    
    end principal





