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
    
    btfss PORTC, 0	;pregunto si RC0 es uno
    bra noesuno
    bra siesuno

noesuno:    
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
    
siesuno:    
    TBLRD*+
    movff TABLAT, ingreso
    call invertido
    movff salida, data4    
    TBLRD*+
    movff TABLAT, ingreso
    call invertido
    movff salida, data3    
    TBLRD*+
    movff TABLAT, ingreso
    call invertido
    movff salida, data2    
    TBLRD*+
    movff TABLAT, ingreso
    call invertido
    movff salida, data1    
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

















