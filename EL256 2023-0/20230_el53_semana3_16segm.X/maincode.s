    PROCESSOR 18F45K50
    #include "cabecera.inc"

var_a EQU 000H
var_b EQU 001H
var_c EQU 002H 
ind_stop EQU 003H	;0 esta detenido, 1 esta funcionando 
 
    PSECT principal, class=CODE, reloc=2, abs
    
    ORG 000100H
dato:	DB  01H,02H,04H,08H,10H,20H,40H,80H
	
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
    clrf ANSELB		;RB como puertos digitales
    clrf TRISB		;RB como salidas digitales
    movlw 0F0H
    movwf TRISD
    clrf LATD
    clrf TBLPTRU
    movlw 01H
    movwf TBLPTRH

inicio:
    clrf TBLPTRL
itera_uno:
    TBLRD*+
    movff TABLAT, LATB
    rcall retardado
    movlw 8
    cpfseq TBLPTRL
    bra aunno_uno
    bra vapara_dos
aunno_uno:
    bra itera_uno
vapara_dos:
    clrf LATB
    clrf TBLPTRL
itera_dos:    
    TBLRD*+
    movff TABLAT, LATA
    rcall retardado
    movlw 8
    cpfseq TBLPTRL
    bra aunno_dos
    clrf LATA
    bra inicio
aunno_dos:
    bra itera_dos
    bra inicio

retardado:
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
    

            




