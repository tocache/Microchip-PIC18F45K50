;Plantilla a usar en todos los programas en XC8 PIC Assembler
;Hecho por Kalun Lau    
    PROCESSOR 18F45K50		;Modelo de microcontrolador
    #include "cabecera.inc"	;llamada a la cabecera
    
    PSECT unico, class=CODE, reloc=2, abs   ;Program section
unico:
    ORG 000000H			;Vector de RESET (pos 0 de la mem de prog)
    goto configuro		;Salta a label configuro
    
    ORG 000020H			;Zona de programa de usuario (pos 20 de la mem de prog)
configuro:			;Config iniciales de la aplicacion
    movlb 0FH			;bank 15 del BSR
    movlw 52H
    movwf OSCCON
inicio:				;La rutina principal
    
    end unico			;Cierre del program section


