;Este es mi primer programa
;Hecho por Kalun Lau
    PROCESSOR 18F45K50		;modelo de microcontrolador
    #include "cabecera.inc"	;llamado a la cabecera
    
    PSECT upcino, class=CODE, reloc=2, abs  ;program section
upcino:
    ORG 000000H			;vector de reset
    goto configuro		;salto a etiqueta configuro
    
    ORG 000020H			;zona de programa de usuario
configuro:			;etiqueta configuro
    ;configuraciones iniciales adicionales
    movlb 0FH			;bank15 para el access bank
    movlw 52H
    movwf OSCCON		;CPU con INTOSC a 4MHz
    ;configuracion de puertos para la app
    bcf ANSELB, 2		;RB2 como digital
    bsf TRISB, 2		;RB2 como entrada
    bcf ANSELD, 5		;RD5 como digital
    bcf TRISD, 5		;RD5 como salida
loop:				;etiqueta loop
    ;código de la aplicacion
    btfss PORTB, 2		;pregunto si RB2 es uno
    goto falso			;F a la preg anterior, salto a etiqueta falso
    bcf LATD, 5			;V a la preg anterior, RD5 a cero
    goto loop			;salto a etiqueta loop
falso:				;etiqueta falso
    bsf LATD, 5			;RD5 a uno
    goto loop			;salto a etiqueta loop
    end upcino			;fin del program section