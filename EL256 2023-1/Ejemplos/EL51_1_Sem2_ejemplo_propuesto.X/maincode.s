;Este es un comentario
;Ejemplo hecho por Kalun ps
;Ejemplo de las ayudas visuales    
    PROCESSOR 18F45K50		    ;modelo de micro
    #include "cabecera.inc"	    ;llamada a cabecera
    
    PSECT upcino, class=CODE, reloc=2, abs  ;program section
upcino:			    ;etiqueta upcino
    ORG 000000H		    ;vector de reset
    bra configuro	    ;salto a etiqueta configuro
    
    ORG 000020H		    ;zona de prog de usuario
configuro:		    ;etiqueta configuro
    ;aqui van los registros de conf iniciales
    movlb 0FH		    ;bank15 al access bank
    movlw 52H
    movwf OSCCON	    ;INTOSC a 4MHz
    clrf ANSELB		    ;todo RB como digitales
    clrf ANSELD		    ;todo RD como digitales
    clrf TRISB		    ;todo RB como salidas
    clrf TRISD		    ;todo RD como salidas

loop:			    ;etiqueta loop
    ;programa de usuario
    movlw 0A5H
    movwf LATB		    ;escribir A5H en RB
    xorlw 0FFH
    movwf LATD		    ;escribir 5AH en RD
    end upcino		    ;fin de program section
    
    





