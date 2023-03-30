    PROCESSOR 18F45K50
    #include "cabecera.inc"
    
    PSECT upcino, class=CODE, reloc=2, abs
upcino:
    ORG 000000H
    goto qcolera
    
    ORG 000020H
qcolera:
    ;aqui van las configuraciones iniciales de la aplicacion
    movlb 0FH
    movlw 52H
    movwf OSCCON
    clrf TRISB	    ;RB como salidas
    clrf ANSELB	    ;RB como digitales
    clrf TRISD	    ;RD como salidas
    clrf ANSELD	    ;RD como digitales
    
inicio:
    movlw 0A5H
    movwf LATB
    movlw 5AH
    movwf LATD
    ;programa de usuario
    end upcino
    
    


