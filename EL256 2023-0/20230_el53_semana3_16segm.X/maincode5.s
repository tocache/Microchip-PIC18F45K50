    PROCESSOR 18F45K50
    #include "cabecera.inc"

    PSECT principal, class=CODE, reloc=2, abs

posicion EQU 000H
temporal EQU 001H
 
 
    ORG 000300H
letras_low1:	DB 0CFH,3FH,0F3H,3FH,0F3H,0C3H,0FBH
letras_low2:	DB 0CCH,33H,7CH,0C0H,0F0H,0CCH,0CCH
letras_low3:	DB 0FFH,0C7H,0FFH,0C7H,0BBH,03H,0FCH
letras_low4:	DB 0C0H,0CCH,00H,00H,33H
    ORG 000200H
letras_high1:	DB 88H,2AH,00H,22H,88H,88H,08H,88H
letras_high2:	DB 22H,00H,94H,00H,05H,11H,00H,88H
letras_high3:	DB 10H,90H,88H,22H,00H,44H,50H,55H,25H,44H

    ORG 000400H
;mensaje:    DB "   APUREN QUE YA ME VOY   "
mensaje:    DB "   HACE FRIO PROFE APAGUE EL AC   "    
    
principal:
    ORG 000000H		;Vector de RESET
    bra configuro
    
    ORG 000008H		;Vector de interrupcion high priority
    bra TMR0_ISR
    
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
    movlw 0FFH
    movwf LATD
    clrf TBLPTRU
    clrf posicion
    movlw 81H
    movwf T0CON		;TMR0 ON, 16bit, PSC 1:4, FOSC/4
    movlw 0A0H
    movwf INTCON

inicio:
    rcall multiplexada
    bra inicio

multiplexada:
    movff posicion, temporal
    movlw 04H
    movwf TBLPTRH
    movff temporal, TBLPTRL
    TBLRD*
    movlw 20H
    cpfseq TABLAT
    bra es_caracter
    bra es_espacio
es_caracter:
    movlw 41H
    subwf TABLAT, w
    movwf TBLPTRL
    movlw 03H
    movwf TBLPTRH
    TBLRD*
    movff TABLAT, LATB
    movlw 02H
    movwf TBLPTRH
    TBLRD*
    movff TABLAT, LATA
    bra final
es_espacio:
    clrf LATB
    clrf LATA
final:    
    bcf LATD, 0
    rcall nopes
    bsf LATD, 0
    
    movlw 04H
    movwf TBLPTRH
    incf temporal, 1
    movff temporal, TBLPTRL
    TBLRD*
    movlw 20H
    cpfseq TABLAT
    bra es_caracter1
    bra es_espacio1
es_caracter1:
    movlw 41H
    subwf TABLAT, w
    movwf TBLPTRL
    movlw 03H
    movwf TBLPTRH
    TBLRD*
    movff TABLAT, LATB
    movlw 02H
    movwf TBLPTRH
    TBLRD*
    movff TABLAT, LATA
    bra final1
es_espacio1:
    clrf LATB
    clrf LATA
final1:    
    bcf LATD, 1
    rcall nopes
    bsf LATD, 1
    
    movlw 04H
    movwf TBLPTRH
    incf temporal, 1
    movff temporal, TBLPTRL
    TBLRD*
    movlw 20H
    cpfseq TABLAT
    bra es_caracter2
    bra es_espacio2
es_caracter2:
    movlw 41H
    subwf TABLAT, w
    movwf TBLPTRL
    movlw 03H
    movwf TBLPTRH
    TBLRD*
    movff TABLAT, LATB
    movlw 02H
    movwf TBLPTRH
    TBLRD*
    movff TABLAT, LATA
    bra final2
es_espacio2:
    clrf LATB
    clrf LATA
final2:    
    bcf LATD, 2
    rcall nopes
    bsf LATD, 2
    
    movlw 04H
    movwf TBLPTRH
    incf temporal, 1
    movff temporal, TBLPTRL
    TBLRD*
    movlw 20H
    cpfseq TABLAT
    bra es_caracter3
    bra es_espacio3
es_caracter3:
    movlw 41H
    subwf TABLAT, w
    movwf TBLPTRL
    movlw 03H
    movwf TBLPTRH
    TBLRD*
    movff TABLAT, LATB
    movlw 02H
    movwf TBLPTRH
    TBLRD*
    movff TABLAT, LATA
    bra final3
es_espacio3:
    clrf LATB
    clrf LATA
final3:    
    bcf LATD, 3
    rcall nopes
    bsf LATD, 3    
    return

nopes:
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
    nop
    nop
    return
    
TMR0_ISR:
    bcf INTCON, 2
    movlw 30
    cpfseq posicion
    bra todavia
    clrf posicion
    retfie
todavia:
    incf posicion, 1
    retfie
    
    end principal






