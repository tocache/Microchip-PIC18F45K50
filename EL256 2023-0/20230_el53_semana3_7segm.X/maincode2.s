    PROCESSOR 18F45K50
    #include "cabecera.inc"
    
    PSECT principal, class=CODE, reloc=2, abs
principal:
posicion EQU 000H
temporal EQU 001H
velocity EQU 002H
    
    ORG 000000H		;vector de reset
    bra configuro
    ORG 000008H		;vector de int
    bra TMR0_ISR
    
    ORG 001000H		;Zona de palabra COSA
		    ;A   B   C   D   E   F   G   H   I   J   K   L   M   N   O   P   Q   R   S   T   U   V   W   X   Y   Z  
tabladecoletras: DB 77H,7CH,39H,5EH,79H,71H,6FH,74H,30H,1EH,76H,38H,15H,54H,3FH,73H,67H,50H,6DH,78H,3EH,1CH,2AH,76H,6EH,5BH

    ORG 002000H		;Zona de palabra COSA
mensaje: DB "        LOS POLLITOS DICEN PIOPIOPIO CUANDO TIENEN HAMBRE CUANDO TIENEN FRIO         "	

    ORG 000020H	        ;zona de programa de usuario
configuro:		;configuraciones de modulos
    movlb 0FH		;para acceder a los SFR
    movlw 52H
    movwf OSCCON, 0	;HFINTOSC a 4MHz / Internal oscillator block
    clrf OSCCON2, 0
    movlw 000H
    movwf ANSELD, 1
    clrf TRISD, 0
    movlw 0FFH
    movwf LATD, 0
    bcf ANSELC, 0, 1		;RC0 como entrada digital
    clrf ANSELB, 1
    clrf TRISB, 0
    clrf TBLPTRU, 0 
    movlw 83H
    movwf T0CON
    movlw 0A0H
    movwf INTCON
    clrf posicion
    clrf temporal
    bcf ANSELA, 0
    clrf velocity
    

loop:
    btfss PORTA, 0
    bra siguiente
    rcall velocidad
siguiente:    
    call multiplex
    bra loop    
    
velocidad:
    btfss velocity, 0
    bra lento
    bra rapido
    
lento:
    movlw 83H
    movwf T0CON
    btg velocity, 0
    bra salidasa
rapido:
    movlw 80H
    movwf T0CON
    btg velocity, 0
    bra salidasa
    
salidasa:
    btfsc PORTA, 0
    goto salidasa
    bra siguiente
    
    
multiplex:
    movff posicion, temporal    
    movlw 20H
    movwf TBLPTRH
    movff temporal, TBLPTRL
    TBLRD*
    movlw 20H
    cpfseq TABLAT
    bra no_es_espacio
    bra si_es_espacio
no_es_espacio:
    movlw 41H
    subwf TABLAT, w
    movwf TBLPTRL
    movlw 10H
    movwf TBLPTRH
    TBLRD*
    movff TABLAT, LATB
    bra sale
si_es_espacio:
    clrf LATB
sale:
    bcf LATD, 0
    call nopes
    bsf LATD, 0
    
    movlw 20H
    movwf TBLPTRH
    movff temporal, TBLPTRL
    incf TBLPTRL, 1
    TBLRD*
    movlw 20H
    cpfseq TABLAT
    bra no_es_espacio1
    bra si_es_espacio1
no_es_espacio1:
    movlw 41H
    subwf TABLAT, w
    movwf TBLPTRL
    movlw 10H
    movwf TBLPTRH
    TBLRD*
    movff TABLAT, LATB
    bra sale1
si_es_espacio1:
    clrf LATB
sale1:
    bcf LATD, 1
    call nopes
    bsf LATD, 1    
    
    movlw 20H
    movwf TBLPTRH
    movff temporal, TBLPTRL
    incf TBLPTRL, 1
    incf TBLPTRL, 1
    TBLRD*
    movlw 20H
    cpfseq TABLAT
    bra no_es_espacio2
    bra si_es_espacio2
no_es_espacio2:
    movlw 41H
    subwf TABLAT, w
    movwf TBLPTRL
    movlw 10H
    movwf TBLPTRH
    TBLRD*
    movff TABLAT, LATB
    bra sale2
si_es_espacio2:
    clrf LATB
sale2:
    bcf LATD, 2
    call nopes
    bsf LATD, 2     
    
    movlw 20H
    movwf TBLPTRH
    movff temporal, TBLPTRL
    incf TBLPTRL, 1
    incf TBLPTRL, 1
    incf TBLPTRL, 1    
    TBLRD*
    movlw 20H
    cpfseq TABLAT
    bra no_es_espacio3
    bra si_es_espacio3
no_es_espacio3:
    movlw 41H
    subwf TABLAT, w
    movwf TBLPTRL
    movlw 10H
    movwf TBLPTRH
    TBLRD*
    movff TABLAT, LATB
    bra sale3
si_es_espacio3:
    clrf LATB
sale3:
    bcf LATD, 3
    call nopes
    bsf LATD, 3      
    
    movlw 20H
    movwf TBLPTRH
    movff temporal, TBLPTRL
    incf TBLPTRL, 1
    incf TBLPTRL, 1
    incf TBLPTRL, 1    
    incf TBLPTRL, 1    
    TBLRD*
    movlw 20H
    cpfseq TABLAT
    bra no_es_espacio4
    bra si_es_espacio4
no_es_espacio4:
    movlw 41H
    subwf TABLAT, w
    movwf TBLPTRL
    movlw 10H
    movwf TBLPTRH
    TBLRD*
    movff TABLAT, LATB
    bra sale4
si_es_espacio4:
    clrf LATB
sale4:
    bcf LATD, 4
    call nopes
    bsf LATD, 4     
    
    movlw 20H
    movwf TBLPTRH
    movff temporal, TBLPTRL
    incf TBLPTRL, 1
    incf TBLPTRL, 1
    incf TBLPTRL, 1    
    incf TBLPTRL, 1    
    incf TBLPTRL, 1        
    TBLRD*
    movlw 20H
    cpfseq TABLAT
    bra no_es_espacio5
    bra si_es_espacio5
no_es_espacio5:
    movlw 41H
    subwf TABLAT, w
    movwf TBLPTRL
    movlw 10H
    movwf TBLPTRH
    TBLRD*
    movff TABLAT, LATB
    bra sale5
si_es_espacio5:
    clrf LATB
sale5:
    bcf LATD, 5
    call nopes
    bsf LATD, 5      

     movlw 20H
    movwf TBLPTRH
    movff temporal, TBLPTRL
    incf TBLPTRL, 1
    incf TBLPTRL, 1
    incf TBLPTRL, 1    
    incf TBLPTRL, 1    
    incf TBLPTRL, 1        
    incf TBLPTRL, 1            
    TBLRD*
    movlw 20H
    cpfseq TABLAT
    bra no_es_espacio6
    bra si_es_espacio6
no_es_espacio6:
    movlw 41H
    subwf TABLAT, w
    movwf TBLPTRL
    movlw 10H
    movwf TBLPTRH
    TBLRD*
    movff TABLAT, LATB
    bra sale6
si_es_espacio6:
    clrf LATB
sale6:
    bcf LATD, 6
    call nopes
    bsf LATD, 6     
    
    movlw 20H
    movwf TBLPTRH
    movff temporal, TBLPTRL
    incf TBLPTRL, 1
    incf TBLPTRL, 1
    incf TBLPTRL, 1    
    incf TBLPTRL, 1    
    incf TBLPTRL, 1        
    incf TBLPTRL, 1            
    incf TBLPTRL, 1            
    TBLRD*
    movlw 20H
    cpfseq TABLAT
    bra no_es_espacio7
    bra si_es_espacio7
no_es_espacio7:
    movlw 41H
    subwf TABLAT, w
    movwf TBLPTRL
    movlw 10H
    movwf TBLPTRH
    TBLRD*
    movff TABLAT, LATB
    bra sale7
si_es_espacio7:
    clrf LATB
sale7:
    bcf LATD, 7
    call nopes
    bsf LATD, 7    
    
    
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
    movlw 77
    cpfseq posicion
    goto noescierto
    clrf posicion
    retfie
noescierto:    
    incf posicion, 1
    retfie
    
    end principal


