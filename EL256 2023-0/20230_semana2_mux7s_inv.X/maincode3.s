    PROCESSOR 18F45K50
    #include "cabecera.inc"
    
    PSECT principal, class=CODE, reloc=2, abs
principal:
temporal1 EQU 000H
temporal2 EQU 001H
temporal3 EQU 002H
ingreso EQU 003H
salida EQU 004H 
data1 EQU 005H
data2 EQU 006H
data3 EQU 007H
data4 EQU 008H
 
    
    ORG 000000H		;vector de reset
    bra configuro
    ORG 001000H		;Zona de palabra COSA
		    ;A   B   C   D   E   F   G   H   I   J   K   L   M   N   O   P   Q   R   S   T   U   V   W   X   Y   Z  
tabladecoletras: DB 77H,7CH,39H,5EH,79H,71H,6FH,74H,30H,1EH,76H,38H,15H,54H,3FH,73H,67H,60H,6DH,78H,3EH,1CH,2AH,76H,6EH,5BH

    ORG 002000H		;Zona de palabra COSA
mensaje: DB "LOS POLLITOS DICEN PIOPIOPIO CUANDO TIENEN HAMBRE CUANDO TIENEN FRIO"	

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
    ;Almacenamos mensaje de mem prog a mem datos
    movlw 20H
    movwf TBLPTRH, 0
    clrf TBLPTRL, 0	;TBLPTR apuntando a dirección 2000H de mem prog
    lfsr 0, 050H	;FSR0 apuntando a dirección 050H de la mem datos
    TBLRD*+		;Lectura y posterior incremento de dir de TBLPTR
    movff TABLAT, INDF0	;muevo contenido de mem prog 2000H a mem datos 050H
    incf FSR0L		;incremento dirección de FSR0
    TBLRD*+		;Lectura y posterior incremento de dir de TBLPTR
    movff TABLAT, INDF0	;muevo contenido de mem prog 2000H a mem datos 050H
    incf FSR0L		;incremento dirección de FSR0
    TBLRD*+		;Lectura y posterior incremento de dir de TBLPTR
    movff TABLAT, INDF0	;muevo contenido de mem prog 2000H a mem datos 050H
    incf FSR0L		;incremento dirección de FSR0
    TBLRD*		;Lectura y posterior incremento de dir de TBLPTR
    movff TABLAT, INDF0	;muevo contenido de mem prog 2000H a mem datos 050H
    
    ;Necesito restar dato - 41H
    movlw 10H
    movwf TBLPTRH, 0
    movlw 41H
    subwf 050H, 0
    movwf TBLPTRL
    TBLRD*
    movff TABLAT, data1
    movlw 41H
    subwf 051H, 0
    movwf TBLPTRL
    TBLRD*
    movff TABLAT, data2
    movlw 41H
    subwf 052H, 0
    movwf TBLPTRL
    TBLRD*
    movff TABLAT, data3
    movlw 41H
    subwf 053H, 0
    movwf TBLPTRL
    TBLRD*
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
    
invertido:
    ;paso para temporal1
    movf ingreso, w	;Muevo contenido de ingreso hacia Wreg
    movwf temporal1	;muevo contenido de Wreg hacia temporal1
    rlncf temporal1, 1	;rotacion de un bit a la izquierda
    rlncf temporal1, 1	;rotacion de un bit a la izquierda
    rlncf temporal1, 0	;rotacion de un bit a la izquierda
    andlw 38H		;enmascaramiento para que pasen bit5, bit4 y bit3
    movwf temporal1
    ;paso para temporal2
    movf ingreso, w	;Muevo contenido de ingreso hacia Wreg
    movwf temporal2	;muevo contenido de Wreg hacia temporal2
    rrncf temporal2, 1	;rotacion  de un bit a la derecha
    rrncf temporal2, 1	;rotacion  de un bit a la derecha
    rrncf temporal2, 0	;rotacion  de un bit a la derecha
    andlw 07H		;enmascaramiento para que pasen bit2, bit1 y bit0
    movwf temporal2
    ;paso para tepmoral3
    movf ingreso, w	;Muevo contenido de ingreso hacia Wreg
    movwf temporal3	;muevo contenido de Wreg hacia temporal3
    movlw 40H
    andwf temporal3, 1	;enmascaramiento 40H a temporal3
    ;sumar temporal1 con temporal2 y con temporal3, resultado almacenarlo en salida
    movf temporal1, 0	;movemos temporal1 a Wreg
    addwf temporal2, 0	;sumamos temporal2 con wreg y el resultado se va a Wreg
    addwf temporal3, 0	;sumamos temporal3 con wreg y el resultado se va a Wreg
    movwf salida
    return
    
    
    end principal



















