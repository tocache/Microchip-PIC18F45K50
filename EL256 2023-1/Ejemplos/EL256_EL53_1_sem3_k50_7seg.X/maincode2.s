;Programa para visualiza la palabra BICA en el display de siete segmentos conectado en el puerto D
;Cada pulsación en RB3-RB0 representará una letra de dicha palabra a visualizar en el display    
    PROCESSOR 18F45K50
    #include "cabecera.inc"
    
    PSECT upcino, class=CODE, reloc=2, abs
upcino:
    ORG 000100H
palabra: DB 7CH, 06H, 39H, 77H	;palabra BICA
 
    ORG 000000H
    bra configuro
    
    ORG 000020H
configuro:
    movlb 0FH
    movlw 52H
    movwf OSCCON
    ;configuracion de los puertos
    movlw 80H		;1000 0000 en binario
    movwf TRISD		;RD6 al RD0 como salidas, en TRISx 0 es salida, 1 es entrada
    movwf ANSELD	;RD6 al RD0 como digitales
    movlw 0FFH		;1111 1111 en binario
    movwf TRISB		;forzamos RB3 al RB0 como entradas
    movlw 0F0H
    movwf ANSELB	;RB3 al RB0 como digitales
    ;asignacion inicial de la direccion del puntero de tabla
    clrf TBLPTRU
    movlw HIGH palabra
    movwf TBLPTRH
    movlw LOW palabra
    
inicio:
    btfss PORTB, 0	;pregunto si RB0 es uno
    bra siguiente1
    movlw 00H
    movwf TBLPTRL	;TBLPTR apuntando a al direccion 100H de la mem prog
    TBLRD*		;accion de lectura de lo apuntado
    movwf TBLPTRL	;TBLPTR asignado en direccion 100H de la memoria de programa
    movff TABLAT, LATD	;mover lo leido hacia el puerto D
    bra inicio
siguiente1:    
    btfss PORTB, 1	;pregunto si RB1 es uno
    bra siguiente2
    movlw 01H
    movwf TBLPTRL	;TBLPTR apuntando a al direccion 101H de la mem prog
    TBLRD*		;accion de lectura de lo apuntado
    movwf TBLPTRL	;TBLPTR asignado en direccion 100H de la memoria de programa
    movff TABLAT, LATD	;mover lo leido hacia el puerto D
    bra inicio
siguiente2:    
    btfss PORTB, 2	;pregunto si RB1 es uno
    bra siguiente3
    movlw 02H
    movwf TBLPTRL	;TBLPTR apuntando a al direccion 102H de la mem prog
    TBLRD*		;accion de lectura de lo apuntado
    movwf TBLPTRL	;TBLPTR asignado en direccion 100H de la memoria de programa
    movff TABLAT, LATD	;mover lo leido hacia el puerto D
    bra inicio
siguiente3:    
    btfss PORTB, 3	;pregunto si RB1 es uno
    bra siguiente4
    movlw 03H
    movwf TBLPTRL	;TBLPTR apuntando a al direccion 103H de la mem prog
    TBLRD*		;accion de lectura de lo apuntado
    movwf TBLPTRL	;TBLPTR asignado en direccion 100H de la memoria de programa
    movff TABLAT, LATD	;mover lo leido hacia el puerto D
    bra inicio    
siguiente4:
    clrf LATD
    bra inicio
    end upcino





