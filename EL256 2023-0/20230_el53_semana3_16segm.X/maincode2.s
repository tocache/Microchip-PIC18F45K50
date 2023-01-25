    PROCESSOR 18F45K50
    #include "cabecera.inc"

var_a EQU 000H
var_b EQU 001H
var_c EQU 002H 
posicion EQU 003H
 
    PSECT principal, class=CODE, reloc=2, abs
    
    ORG 000300H
dato:	DB  01H,02H,04H,08H,10H,20H,40H,80H
    ORG 000100H
letras_low1:	DB 0CFH,3FH,0F3H,3FH,0F3H,0C3H,0FBH
letras_low2:	DB 0CCH,33H,7CH,0C0H,0F0H,0CCH,0CCH
letras_low3:	DB 0FFH,0C7H,0FFH,0C7H,0BBH,03H,0FCH
letras_low4:	DB 0C0H,0CCH,00H,00H,33H
    ORG 000200H
letras_high1:	DB 88H,2AH,00H,22H,88H,88H,08H,88H
letras_high2:	DB 22H,00H,94H,00H,05H,11H,00H,88H
letras_high3:	DB 10H,90H,88H,22H,00H,44H,50H,55H,25H,44H

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
    clrf posicion

inicio:
    clrf TBLPTRL    
loop:
    movlw 01H
    movwf TBLPTRH
    TBLRD*
    movff TABLAT, LATB
    movlw 02H
    movwf TBLPTRH
    TBLRD*
    movff TABLAT, LATA
    call retardado
    movlw 25
    cpfseq TBLPTRL
    bra aunno
    bra inicio
aunno:
    incf TBLPTRL, 1
    bra loop

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
    movlw 10
    movwf var_c
otro3:
    nop
    decfsz var_c, 1
    bra otro3
    return     
    
    end principal
    

            







