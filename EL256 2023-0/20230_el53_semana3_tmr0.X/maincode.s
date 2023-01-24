    PROCESSOR 18F45K50
    #include "cabecera.inc"

var_a EQU 000H
var_b EQU 001H
var_c EQU 002H 
ind_stop EQU 003H	;0 esta detenido, 1 esta funcionando 
 
    PSECT principal, class=CODE, reloc=2, abs
principal:
    ORG 000000H		;Vector de RESET
    bra configuro
    
    ORG 000020H		;Zona de programa de usuario
configuro:
    ;Configuraciones de la aplicacion
    movlb 0FH
    movlw 52H
    movwf OSCCON	;HFINTOSC a 4MHz / Internal oscillator block
    clrf OSCCON2
    clrf ANSELA		;RA como puertos digitales
    clrf TRISA		;RA como salidas digitales
    movlw 83H
    movwf T0CON		;TMR0 ON, 16bit, PSC 1:16, FOSC/4
    
inicio:
    btfss INTCON, 2	;Pregunto si se desbordo TMR0 (si TMR0IF=1)
    bra $-2		;no se desbordo TMR0
    bcf INTCON, 2	;ya se desbordo, bajo bandera TMR0IF
    btg LATA, 0		;basculo RA0
    bra inicio
    
    end principal
    

            




