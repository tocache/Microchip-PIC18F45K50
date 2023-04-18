;Este es un comentario
;Ejemplo hecho por Kalun ps
    PROCESSOR 18F45K50		    ;modelo de micro
    #include "cabecera.inc"	    ;llamada a cabecera
    
    PSECT upcino, class=CODE, reloc=2, abs  ;program section
upcino:			    ;etiqueta upcino
    ORG 000000H		    ;vector de reset
    goto configuro	    ;salto a etiqueta configuro
    
    ORG 000020H		    ;zona de prog de usuario
configuro:		    ;etiqueta configuro
    ;aqui van los registros de conf iniciales
    movlb 0FH		    ;bank15 al access bank
    movlw 52H
    movwf OSCCON	    ;INTOSC a 4MHz
    bsf TRISA, 0	    ;RA0 como entrada
    bcf ANSELA, 0	    ;RA0 como digital
    bcf TRISC, 0	    ;RC0 como salida
    bcf ANSELC, 0	    ;RC0 como digital
    
loop:			    ;etiqueta loop
    ;programa de usuario
    btfss PORTA, 0	    ;pregunto si RA0 es uno
    goto nah		    ;F a la preg anterior, salta a etiqueta nah
    bcf LATC, 0		    ;V a la preg anterior, RC0 a cero
    goto loop		    ;salto a etiqueta loop
nah:
    bsf LATC, 0		    ;RC0 a uno
    goto loop		    ;salto a etiqueta loop
    end upcino		    ;fin de program section
    
    


