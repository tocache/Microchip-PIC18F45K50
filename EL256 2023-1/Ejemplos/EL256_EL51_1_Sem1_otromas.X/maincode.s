    ;Mi primer programa en XC8 PIC Assembler
    ;Hecho por Kalun Lau
    ;Universidad Peruana de Ciencias Aplicadas
    ;2023-1
    ;Ingeniería Electromectronimedica
    PROCESSOR 18F45K50		;Modelo de microcontrolador
    #include "cabecera.inc"	;Llamada a la cabecera
    
    PSECT mamamia, class=CODE, reloc=2, abs ;Program section
mamamia:
    ORG 000000H			;Vector de reset
    goto configuro		;salto a label configuro
    
    ORG 000020H			;Zona de programa de usuario
configuro:    
    ;Configuraciones iniciales de la aplicacion
    movlb 0FH			;Access bank para el 15
    movlw 52H
    movwf OSCCON		;Para 4MHz con INTOSC

inicio:    
    goto inicio			;salto a label inicio
    
    end mamamia

