;No emplear caracteres raros como ñ,á,é,í,ó,ú,ü
    
    PROCESSOR 18F45K50	    ;Modelo de microcontrolador
    #include "cabecera.inc" ;Llamada a la cabecera

    PSECT unico, class=CODE, reloc=2, abs   ;Program section
unico:
    ORG 000000H		;Vector de RESET
    goto configuro
    
    ORG 000020H		;Zona de programa de usuario
configuro:
    movlb 0FH		;AccessBank hacia bloque 15
    movlw 52H
    movwf OSCCON	;INTOSC a 4MHz
    ;Aqui se escriben configuraciones de la app
    ;Debo de contemplar que las entradas sean digitales
    bcf ANSELB,0	;pin RB0 como digital
    bsf TRISB,0		;pin RB0 como entrada
    bcf ANSELD, 0	;pin RD0 como digital
    bcf TRISD, 0	;pin RD0 como salida
    
inicio:
    ;Programa de usuario
    btfsc PORTB, 0	;Pregunto sin RB0 es cero
    goto falso		;Falso, salta a etiqueta falso
verdadero:		;Verdadero
    bsf LATD, 0		;RD0 en uno
    goto inicio		;Regreso a inicio
falso:
    bcf LATD, 0		;RD0 en cero
    goto inicio		;Regreso a inicio
    end unico		;Fin del program section





