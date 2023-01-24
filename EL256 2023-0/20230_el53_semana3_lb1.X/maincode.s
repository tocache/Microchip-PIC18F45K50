    PROCESSOR 18F45K50
    #include "cabecera.inc"

var_a EQU 000H
var_b EQU 001H
var_c EQU 002H 
ind_stop EQU 003H	;0 esta detenido, 1 esta funcionando 
 
    PSECT principal, class=CODE, reloc=2, abs
principal:
    ORG 000000H		;Vector de RESET
    bra configuro
    
    ORG 000008H		;Vector de interrupcion
    bra ISR_INT0

    ORG 000100H
salidas:    DB 01H,02H,04H,08H,10H,20H,40H,80H,40H,20H,10H,08H,04H,02H
    
    ORG 000020H		;Zona de programa de usuario
configuro:
    ;Configuraciones de la aplicacion
    movlb 0FH
    movlw 62H
    movwf OSCCON	;HFINTOSC a 8MHz / Internal oscillator block
    clrf OSCCON2
    clrf ANSELA		;RA como puertos digitales
    clrf ANSELD		;RD3:RD0 como puertos digitales de salida
    clrf TRISA		;RA como salidas digitales
    movlw 0FCH
    movwf TRISD		;RD1:RD0 como entradas
    clrf TBLPTRU
    movlw 01H
    movwf TBLPTRH	;TBLPTR apunta a 000100H
    movlw 01H
    movwf ind_stop	;en un inicio se esta visualizando el efecto
    ;habilitar INT0
    bsf INTCON, 7	;habilitador global de int
    bsf INTCON, 4	;habilitador de INT0
    
inicio:
    clrf TBLPTRL	;Fuerzo TBLPTR a direccion 000100H
inicio2:
    TBLRD*+		;lectura con incremento posterior de TBLPTR
    movff TABLAT, LATA	;muevo el contenido de TABLAT hacia RA
    call retardado	;llamada a subrutina de retardo
    btfss ind_stop, 0	;pregunto si visualiza o detiene
    bra $-2		;no es cierto, regreso a volver a preguntar (STOP)
    movlw 0EH		;es cierto, continuo con la rutina de visualizacion
    cpfseq TBLPTRL	;pregunto si ya llegue al ultimo valor de la tabla
    bra inicio2		;aun no llego al valor ultimo de la tabla
    bra inicio		;ya llegue al ultimo valor de la tabla
    
retardado:
    movlw 100
    movwf var_a
otro1:
    call bucle1
    decfsz var_a, 1
    bra otro1
    return
bucle1:
    movlw 50
    movwf var_b
otro2:
    call bucle2
    decfsz var_b, 1
    bra otro2
    return    
bucle2:
    movlw 50
    movwf var_c
otro3:
    nop
    decfsz var_c, 1
    bra otro3
    return      

ISR_INT0:
    bcf INTCON, 1
    btg ind_stop, 0
    retfie
    
    
   end principal
    

            


