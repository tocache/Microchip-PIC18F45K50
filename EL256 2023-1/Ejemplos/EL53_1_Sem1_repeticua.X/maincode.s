;Este es un comentario
;Programa hecho por Kalun
    PROCESSOR 18F45K50			;modelo de micro
    #include "cabecera.inc"		;llamada a cabecera
    
    PSECT upcino, class=CODE, reloc=2, abs  ;program section
upcino:			;etiqueta upcino
    ORG 000000H		;vector de reset
    goto configuro	;salto a etiqueta configuro
    
    ORG 000020H		;zona de programa de usuario
configuro:		;etiqueta configuro
    ;aqui se coloca los registros de configuracion inicial}
    movlb 0FH		;bank al access bank
    movlw 52H
    movwf OSCCON	;4MHz del INTOSC
    bsf TRISB, 1	;RB1 como entrada
    bcf ANSELB, 1	;RB1 como digital
    bcf TRISD, 7	;RD7 como salida
    bcf ANSELD, 7	;RD7 como digital
    
inicio:			;etiqueta inicio
    ;aqui va el codigo de la aplicacion
    btfss PORTB, 1	;pregunto si RB1 es uno
    goto falso		;F a preg anterior, salta a etiqueta falso
    bcf LATD, 7		;V a preg anterior, RD7 en cero
    goto inicio		;salto a etiqueta inicio    
falso:			;etiqueta falso
    bsf LATD, 7		;RD7 en uno
    goto inicio		;salto a etiqueta inicio
    end upcino		;fin de program section


