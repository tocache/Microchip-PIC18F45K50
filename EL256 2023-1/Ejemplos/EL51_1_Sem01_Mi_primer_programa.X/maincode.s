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
    
inicio:
    ;Programa de usuario
    nop			;no operacion
    end unico		;Fin del program section
    
;No funciona en Proteus pi pi pi


