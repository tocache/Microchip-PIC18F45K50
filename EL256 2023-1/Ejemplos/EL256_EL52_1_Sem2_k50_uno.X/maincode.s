    PROCESSOR 18F45K50
    #include "cabecera.inc"
    
    PSECT upcino, class=CODE, reloc=2, abs
upcino:
    ORG 000000H
    goto configuro
    
    ORG 000020H
configuro:
    ;Aqui van las configuraciones iniciales de la app
    movlb 0FH		    ;BSR al bank 0
    movlw 52H
    movwf OSCCON
    ;configuracion de los puertos
    bcf TRISD, 0	    ;RD0 como salida
    bcf ANSELD, 0	    ;RD0 como digital
    bcf TRISB, 0	    ;RB0 como salida
    bcf ANSELB, 0	    ;RB0 como digital
    bsf TRISC, 0	    ;RC0 como entrada
    bcf ANSELC, 0	    ;RC0 como digital
    bcf LATD, 0		    ;RD0 apagado
    bcf LATB, 0		    ;RB0 apagado
inicio:
    btfsc PORTC, 0	    ;pregunto si presione boton
    goto inicio		    ;aun no he pulsado
    bsf LATB, 0		    ;enciendo RF0
aunno1:
    btfss PORTC, 0	    ;pregunto si solte el boton
    goto aunno1
aunno2:    
    btfsc PORTC, 0	    ;pregunto si presione boton
    goto aunno2		    ;aun no he pulsado
    bsf LATD, 0		    ;enciendo RD0
aunno3:
    btfss PORTC, 0	    ;pregunto si solte el boton
    goto aunno3
aunno4:    
    btfsc PORTC, 0	    ;pregunto si presione boton
    goto aunno4		    ;aun no he pulsado
    bcf LATB, 0		    ;apago RF0
    bcf LATD, 0		    ;apago RD0
aunno5:
    btfss PORTC, 0	    ;pregunto si solte el boton
    goto aunno5
    goto inicio
    end upcino
    





