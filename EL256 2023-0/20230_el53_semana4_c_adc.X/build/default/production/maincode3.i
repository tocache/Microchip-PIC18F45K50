# 1 "maincode3.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "maincode3.c" 2
# 1 "./cabecera.h" 1






#pragma config PLLSEL = PLL4X
#pragma config CFGPLLEN = OFF
#pragma config CPUDIV = NOCLKDIV
#pragma config LS48MHZ = SYS24X4


#pragma config FOSC = INTOSCIO
#pragma config PCLKEN = ON
#pragma config FCMEN = OFF
#pragma config IESO = OFF


#pragma config nPWRTEN = ON
#pragma config BOREN = OFF
#pragma config BORV = 190
#pragma config nLPBOR = OFF


#pragma config WDTEN = OFF
#pragma config WDTPS = 32768


#pragma config CCP2MX = RC1
#pragma config PBADEN = OFF
#pragma config T3CMX = RC0
#pragma config SDOMX = RB3
#pragma config MCLRE = OFF


#pragma config STVREN = ON
#pragma config LVP = OFF
#pragma config ICPRT = OFF
#pragma config XINST = OFF


#pragma config CP0 = OFF
#pragma config CP1 = OFF
#pragma config CP2 = OFF
#pragma config CP3 = OFF


#pragma config CPB = OFF
#pragma config CPD = OFF


#pragma config WRT0 = OFF
#pragma config WRT1 = OFF
#pragma config WRT2 = OFF
#pragma config WRT3 = OFF


#pragma config WRTC = OFF
#pragma config WRTB = OFF
#pragma config WRTD = OFF


#pragma config EBTR0 = OFF
#pragma config EBTR1 = OFF
#pragma config EBTR2 = OFF
#pragma config EBTR3 = OFF


#pragma config EBTRB = OFF





# 1 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\xc.h" 1 3
# 18 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\xc.h" 3
extern const char __xc8_OPTIM_SPEED;

extern double __fpnormalize(double);



# 1 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\xc8debug.h" 1 3



# 1 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\stdlib.h" 1 3



# 1 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\musl_xc8.h" 1 3
# 4 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\stdlib.h" 2 3






# 1 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\features.h" 1 3
# 10 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\stdlib.h" 2 3
# 21 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\stdlib.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\bits/alltypes.h" 1 3
# 18 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\bits/alltypes.h" 3
typedef long int wchar_t;
# 122 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\bits/alltypes.h" 3
typedef unsigned size_t;
# 168 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\bits/alltypes.h" 3
typedef __int24 int24_t;
# 204 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\bits/alltypes.h" 3
typedef __uint24 uint24_t;
# 21 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\stdlib.h" 2 3


int atoi (const char *);
long atol (const char *);
long long atoll (const char *);
double atof (const char *);

float strtof (const char *restrict, char **restrict);
double strtod (const char *restrict, char **restrict);
long double strtold (const char *restrict, char **restrict);



long strtol (const char *restrict, char **restrict, int);
unsigned long strtoul (const char *restrict, char **restrict, int);
long long strtoll (const char *restrict, char **restrict, int);
unsigned long long strtoull (const char *restrict, char **restrict, int);

int rand (void);
void srand (unsigned);

void *malloc (size_t);
void *calloc (size_t, size_t);
void *realloc (void *, size_t);
void free (void *);

          void abort (void);
int atexit (void (*) (void));
          void exit (int);
          void _Exit (int);

void *bsearch (const void *, const void *, size_t, size_t, int (*)(const void *, const void *));







__attribute__((nonreentrant)) void qsort (void *, size_t, size_t, int (*)(const void *, const void *));

int abs (int);
long labs (long);
long long llabs (long long);

typedef struct { int quot, rem; } div_t;
typedef struct { long quot, rem; } ldiv_t;
typedef struct { long long quot, rem; } lldiv_t;

div_t div (int, int);
ldiv_t ldiv (long, long);
lldiv_t lldiv (long long, long long);

typedef struct { unsigned int quot, rem; } udiv_t;
typedef struct { unsigned long quot, rem; } uldiv_t;
udiv_t udiv (unsigned int, unsigned int);
uldiv_t uldiv (unsigned long, unsigned long);
# 4 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\xc8debug.h" 2 3








#pragma intrinsic(__builtin_software_breakpoint)
extern void __builtin_software_breakpoint(void);
# 24 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\xc.h" 2 3
# 1 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\builtins.h" 1 3



# 1 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\stdint.h" 1 3
# 22 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\stdint.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\bits/alltypes.h" 1 3
# 127 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\bits/alltypes.h" 3
typedef unsigned long uintptr_t;
# 142 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\bits/alltypes.h" 3
typedef long intptr_t;
# 158 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\bits/alltypes.h" 3
typedef signed char int8_t;




typedef short int16_t;
# 173 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\bits/alltypes.h" 3
typedef long int32_t;





typedef long long int64_t;
# 188 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\bits/alltypes.h" 3
typedef long long intmax_t;





typedef unsigned char uint8_t;




typedef unsigned short uint16_t;
# 209 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\bits/alltypes.h" 3
typedef unsigned long uint32_t;





typedef unsigned long long uint64_t;
# 229 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\bits/alltypes.h" 3
typedef unsigned long long uintmax_t;
# 22 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\stdint.h" 2 3


typedef int8_t int_fast8_t;

typedef int64_t int_fast64_t;


typedef int8_t int_least8_t;
typedef int16_t int_least16_t;

typedef int24_t int_least24_t;
typedef int24_t int_fast24_t;

typedef int32_t int_least32_t;

typedef int64_t int_least64_t;


typedef uint8_t uint_fast8_t;

typedef uint64_t uint_fast64_t;


typedef uint8_t uint_least8_t;
typedef uint16_t uint_least16_t;

typedef uint24_t uint_least24_t;
typedef uint24_t uint_fast24_t;

typedef uint32_t uint_least32_t;

typedef uint64_t uint_least64_t;
# 144 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\stdint.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\bits/stdint.h" 1 3
typedef int16_t int_fast16_t;
typedef int32_t int_fast32_t;
typedef uint16_t uint_fast16_t;
typedef uint32_t uint_fast32_t;
# 144 "C:\\Program Files\\Microchip\\xc8\\v2.36\\pic\\include\\c99\\stdint.h" 2 3
# 5 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\builtins.h" 2 3


#pragma intrinsic(__nop)
extern void __nop(void);


#pragma intrinsic(_delay)
extern __attribute__((nonreentrant)) void _delay(uint32_t);
#pragma intrinsic(_delaywdt)
extern __attribute__((nonreentrant)) void _delaywdt(uint32_t);

#pragma intrinsic(_delay3)
extern __attribute__((nonreentrant)) void _delay3(uint8_t);
# 25 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\xc.h" 2 3








# 1 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\pic18.h" 1 3




# 1 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\htc.h" 1 3



# 1 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\xc.h" 1 3
# 5 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\htc.h" 2 3
# 6 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\pic18.h" 2 3


# 1 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\pic18_chip_select.h" 1 3
# 215 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\pic18_chip_select.h" 3
# 1 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 1 3
# 45 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
# 1 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\__at.h" 1 3
# 46 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 2 3







extern volatile unsigned char SRCON1 __attribute__((address(0xF57)));

__asm("SRCON1 equ 0F57h");


typedef union {
    struct {
        unsigned SRRC1E :1;
        unsigned SRRC2E :1;
        unsigned SRRCKE :1;
        unsigned SRRPE :1;
        unsigned SRSC1E :1;
        unsigned SRSC2E :1;
        unsigned SRSCKE :1;
        unsigned SRSPE :1;
    };
} SRCON1bits_t;
extern volatile SRCON1bits_t SRCON1bits __attribute__((address(0xF57)));
# 115 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char SRCON0 __attribute__((address(0xF58)));

__asm("SRCON0 equ 0F58h");


typedef union {
    struct {
        unsigned SRPR :1;
        unsigned SRPS :1;
        unsigned SRNQEN :1;
        unsigned SRQEN :1;
        unsigned SRCLK :3;
        unsigned SRLEN :1;
    };
    struct {
        unsigned :4;
        unsigned SRCLK0 :1;
        unsigned SRCLK1 :1;
        unsigned SRCLK2 :1;
    };
} SRCON0bits_t;
extern volatile SRCON0bits_t SRCON0bits __attribute__((address(0xF58)));
# 186 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char CCPTMRS __attribute__((address(0xF59)));

__asm("CCPTMRS equ 0F59h");


typedef union {
    struct {
        unsigned C1TSEL :1;
        unsigned :2;
        unsigned C2TSEL :1;
    };
} CCPTMRSbits_t;
extern volatile CCPTMRSbits_t CCPTMRSbits __attribute__((address(0xF59)));
# 213 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char VREGCON __attribute__((address(0xF5A)));

__asm("VREGCON equ 0F5Ah");


typedef union {
    struct {
        unsigned VREGPM :2;
    };
} VREGCONbits_t;
extern volatile VREGCONbits_t VREGCONbits __attribute__((address(0xF5A)));
# 233 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char ANSELA __attribute__((address(0xF5B)));

__asm("ANSELA equ 0F5Bh");


typedef union {
    struct {
        unsigned ANSA0 :1;
        unsigned ANSA1 :1;
        unsigned ANSA2 :1;
        unsigned ANSA3 :1;
        unsigned :1;
        unsigned ANSA5 :1;
    };
} ANSELAbits_t;
extern volatile ANSELAbits_t ANSELAbits __attribute__((address(0xF5B)));
# 278 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char ANSELB __attribute__((address(0xF5C)));

__asm("ANSELB equ 0F5Ch");


typedef union {
    struct {
        unsigned ANSB0 :1;
        unsigned ANSB1 :1;
        unsigned ANSB2 :1;
        unsigned ANSB3 :1;
        unsigned ANSB4 :1;
        unsigned ANSB5 :1;
    };
} ANSELBbits_t;
extern volatile ANSELBbits_t ANSELBbits __attribute__((address(0xF5C)));
# 328 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char ANSELC __attribute__((address(0xF5D)));

__asm("ANSELC equ 0F5Dh");


typedef union {
    struct {
        unsigned :2;
        unsigned ANSC2 :1;
        unsigned :3;
        unsigned ANSC6 :1;
        unsigned ANSC7 :1;
    };
} ANSELCbits_t;
extern volatile ANSELCbits_t ANSELCbits __attribute__((address(0xF5D)));
# 362 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char ANSELD __attribute__((address(0xF5E)));

__asm("ANSELD equ 0F5Eh");


typedef union {
    struct {
        unsigned ANSD0 :1;
        unsigned ANSD1 :1;
        unsigned ANSD2 :1;
        unsigned ANSD3 :1;
        unsigned ANSD4 :1;
        unsigned ANSD5 :1;
        unsigned ANSD6 :1;
        unsigned ANSD7 :1;
    };
} ANSELDbits_t;
extern volatile ANSELDbits_t ANSELDbits __attribute__((address(0xF5E)));
# 424 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char ANSELE __attribute__((address(0xF5F)));

__asm("ANSELE equ 0F5Fh");


typedef union {
    struct {
        unsigned ANSE0 :1;
        unsigned ANSE1 :1;
        unsigned ANSE2 :1;
    };
} ANSELEbits_t;
extern volatile ANSELEbits_t ANSELEbits __attribute__((address(0xF5F)));
# 456 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char UCON __attribute__((address(0xF60)));

__asm("UCON equ 0F60h");


typedef union {
    struct {
        unsigned :1;
        unsigned SUSPND :1;
        unsigned RESUME :1;
        unsigned USBEN :1;
        unsigned PKTDIS :1;
        unsigned SE0 :1;
        unsigned PPBRST :1;
    };
} UCONbits_t;
extern volatile UCONbits_t UCONbits __attribute__((address(0xF60)));
# 507 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char USTAT __attribute__((address(0xF61)));

__asm("USTAT equ 0F61h");


typedef union {
    struct {
        unsigned :1;
        unsigned PPBI :1;
        unsigned DIR :1;
        unsigned ENDP :4;
    };
    struct {
        unsigned :3;
        unsigned ENDP0 :1;
        unsigned ENDP1 :1;
        unsigned ENDP2 :1;
        unsigned ENDP3 :1;
    };
} USTATbits_t;
extern volatile USTATbits_t USTATbits __attribute__((address(0xF61)));
# 567 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char UCFG __attribute__((address(0xF62)));

__asm("UCFG equ 0F62h");


typedef union {
    struct {
        unsigned PPB :2;
        unsigned FSEN :1;
        unsigned UTRDIS :1;
        unsigned UPUEN :1;
        unsigned :1;
        unsigned UOEMON :1;
        unsigned UTEYE :1;
    };
    struct {
        unsigned PPB0 :1;
        unsigned PPB1 :1;
    };
    struct {
        unsigned UPP0 :1;
        unsigned UPP1 :1;
    };
} UCFGbits_t;
extern volatile UCFGbits_t UCFGbits __attribute__((address(0xF62)));
# 646 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char UADDR __attribute__((address(0xF63)));

__asm("UADDR equ 0F63h");


typedef union {
    struct {
        unsigned ADDR :7;
    };
    struct {
        unsigned ADDR0 :1;
        unsigned ADDR1 :1;
        unsigned ADDR2 :1;
        unsigned ADDR3 :1;
        unsigned ADDR4 :1;
        unsigned ADDR5 :1;
        unsigned ADDR6 :1;
    };
} UADDRbits_t;
extern volatile UADDRbits_t UADDRbits __attribute__((address(0xF63)));
# 710 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char UIE __attribute__((address(0xF64)));

__asm("UIE equ 0F64h");


typedef union {
    struct {
        unsigned URSTIE :1;
        unsigned UERRIE :1;
        unsigned ACTVIE :1;
        unsigned TRNIE :1;
        unsigned IDLEIE :1;
        unsigned STALLIE :1;
        unsigned SOFIE :1;
    };
} UIEbits_t;
extern volatile UIEbits_t UIEbits __attribute__((address(0xF64)));
# 766 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char UIR __attribute__((address(0xF65)));

__asm("UIR equ 0F65h");


typedef union {
    struct {
        unsigned URSTIF :1;
        unsigned UERRIF :1;
        unsigned ACTVIF :1;
        unsigned TRNIF :1;
        unsigned IDLEIF :1;
        unsigned STALLIF :1;
        unsigned SOFIF :1;
    };
} UIRbits_t;
extern volatile UIRbits_t UIRbits __attribute__((address(0xF65)));
# 822 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char UEIE __attribute__((address(0xF66)));

__asm("UEIE equ 0F66h");


typedef union {
    struct {
        unsigned PIDEE :1;
        unsigned CRC5EE :1;
        unsigned CRC16EE :1;
        unsigned DFN8EE :1;
        unsigned BTOEE :1;
        unsigned :2;
        unsigned BTSEE :1;
    };
} UEIEbits_t;
extern volatile UEIEbits_t UEIEbits __attribute__((address(0xF66)));
# 873 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char UEIR __attribute__((address(0xF67)));

__asm("UEIR equ 0F67h");


typedef union {
    struct {
        unsigned PIDEF :1;
        unsigned CRC5EF :1;
        unsigned CRC16EF :1;
        unsigned DFN8EF :1;
        unsigned BTOEF :1;
        unsigned :2;
        unsigned BTSEF :1;
    };
} UEIRbits_t;
extern volatile UEIRbits_t UEIRbits __attribute__((address(0xF67)));
# 924 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned short UFRM __attribute__((address(0xF68)));

__asm("UFRM equ 0F68h");




extern volatile unsigned char UFRML __attribute__((address(0xF68)));

__asm("UFRML equ 0F68h");


typedef union {
    struct {
        unsigned FRM :8;
    };
    struct {
        unsigned FRM0 :1;
        unsigned FRM1 :1;
        unsigned FRM2 :1;
        unsigned FRM3 :1;
        unsigned FRM4 :1;
        unsigned FRM5 :1;
        unsigned FRM6 :1;
        unsigned FRM7 :1;
    };
    struct {
        unsigned FRML :8;
    };
} UFRMLbits_t;
extern volatile UFRMLbits_t UFRMLbits __attribute__((address(0xF68)));
# 1009 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char UFRMH __attribute__((address(0xF69)));

__asm("UFRMH equ 0F69h");


typedef union {
    struct {
        unsigned FRM :3;
    };
    struct {
        unsigned FRM8 :1;
        unsigned FRM9 :1;
        unsigned FRM10 :1;
    };
} UFRMHbits_t;
extern volatile UFRMHbits_t UFRMHbits __attribute__((address(0xF69)));
# 1049 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char UEP0 __attribute__((address(0xF6A)));

__asm("UEP0 equ 0F6Ah");


typedef union {
    struct {
        unsigned EPSTALL :1;
        unsigned EPINEN :1;
        unsigned EPOUTEN :1;
        unsigned EPCONDIS :1;
        unsigned EPHSHK :1;
    };
    struct {
        unsigned EP0STALL :1;
        unsigned EP0INEN :1;
        unsigned EP0OUTEN :1;
        unsigned EP0CONDIS :1;
        unsigned EP0HSHK :1;
    };
    struct {
        unsigned EPSTALL0 :1;
        unsigned EPINEN0 :1;
        unsigned EPOUTEN0 :1;
        unsigned EPCONDIS0 :1;
        unsigned EPHSHK0 :1;
    };
} UEP0bits_t;
extern volatile UEP0bits_t UEP0bits __attribute__((address(0xF6A)));
# 1157 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char UEP1 __attribute__((address(0xF6B)));

__asm("UEP1 equ 0F6Bh");


typedef union {
    struct {
        unsigned EPSTALL :1;
        unsigned EPINEN :1;
        unsigned EPOUTEN :1;
        unsigned EPCONDIS :1;
        unsigned EPHSHK :1;
    };
    struct {
        unsigned EP1STALL :1;
        unsigned EP1INEN :1;
        unsigned EP1OUTEN :1;
        unsigned EP1CONDIS :1;
        unsigned EP1HSHK :1;
    };
    struct {
        unsigned EPSTALL1 :1;
        unsigned EPINEN1 :1;
        unsigned EPOUTEN1 :1;
        unsigned EPCONDIS1 :1;
        unsigned EPHSHK1 :1;
    };
} UEP1bits_t;
extern volatile UEP1bits_t UEP1bits __attribute__((address(0xF6B)));
# 1265 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char UEP2 __attribute__((address(0xF6C)));

__asm("UEP2 equ 0F6Ch");


typedef union {
    struct {
        unsigned EPSTALL :1;
        unsigned EPINEN :1;
        unsigned EPOUTEN :1;
        unsigned EPCONDIS :1;
        unsigned EPHSHK :1;
    };
    struct {
        unsigned EP2STALL :1;
        unsigned EP2INEN :1;
        unsigned EP2OUTEN :1;
        unsigned EP2CONDIS :1;
        unsigned EP2HSHK :1;
    };
    struct {
        unsigned EPSTALL2 :1;
        unsigned EPINEN2 :1;
        unsigned EPOUTEN2 :1;
        unsigned EPCONDIS2 :1;
        unsigned EPHSHK2 :1;
    };
} UEP2bits_t;
extern volatile UEP2bits_t UEP2bits __attribute__((address(0xF6C)));
# 1373 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char UEP3 __attribute__((address(0xF6D)));

__asm("UEP3 equ 0F6Dh");


typedef union {
    struct {
        unsigned EPSTALL :1;
        unsigned EPINEN :1;
        unsigned EPOUTEN :1;
        unsigned EPCONDIS :1;
        unsigned EPHSHK :1;
    };
    struct {
        unsigned EP3STALL :1;
        unsigned EP3INEN :1;
        unsigned EP3OUTEN :1;
        unsigned EP3CONDIS :1;
        unsigned EP3HSHK :1;
    };
    struct {
        unsigned EPSTALL3 :1;
        unsigned EPINEN3 :1;
        unsigned EPOUTEN3 :1;
        unsigned EPCONDIS3 :1;
        unsigned EPHSHK3 :1;
    };
} UEP3bits_t;
extern volatile UEP3bits_t UEP3bits __attribute__((address(0xF6D)));
# 1481 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char UEP4 __attribute__((address(0xF6E)));

__asm("UEP4 equ 0F6Eh");


typedef union {
    struct {
        unsigned EPSTALL :1;
        unsigned EPINEN :1;
        unsigned EPOUTEN :1;
        unsigned EPCONDIS :1;
        unsigned EPHSHK :1;
    };
    struct {
        unsigned EP4STALL :1;
        unsigned EP4INEN :1;
        unsigned EP4OUTEN :1;
        unsigned EP4CONDIS :1;
        unsigned EP4HSHK :1;
    };
    struct {
        unsigned EPSTALL4 :1;
        unsigned EPINEN4 :1;
        unsigned EPOUTEN4 :1;
        unsigned EPCONDIS4 :1;
        unsigned EPHSHK4 :1;
    };
} UEP4bits_t;
extern volatile UEP4bits_t UEP4bits __attribute__((address(0xF6E)));
# 1589 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char UEP5 __attribute__((address(0xF6F)));

__asm("UEP5 equ 0F6Fh");


typedef union {
    struct {
        unsigned EPSTALL :1;
        unsigned EPINEN :1;
        unsigned EPOUTEN :1;
        unsigned EPCONDIS :1;
        unsigned EPHSHK :1;
    };
    struct {
        unsigned EP5STALL :1;
        unsigned EP5INEN :1;
        unsigned EP5OUTEN :1;
        unsigned EP5CONDIS :1;
        unsigned EP5HSHK :1;
    };
    struct {
        unsigned EPSTALL5 :1;
        unsigned EPINEN5 :1;
        unsigned EPOUTEN5 :1;
        unsigned EPCONDIS5 :1;
        unsigned EPHSHK5 :1;
    };
} UEP5bits_t;
extern volatile UEP5bits_t UEP5bits __attribute__((address(0xF6F)));
# 1697 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char UEP6 __attribute__((address(0xF70)));

__asm("UEP6 equ 0F70h");


typedef union {
    struct {
        unsigned EPSTALL :1;
        unsigned EPINEN :1;
        unsigned EPOUTEN :1;
        unsigned EPCONDIS :1;
        unsigned EPHSHK :1;
    };
    struct {
        unsigned EP6STALL :1;
        unsigned EP6INEN :1;
        unsigned EP6OUTEN :1;
        unsigned EP6CONDIS :1;
        unsigned EP6HSHK :1;
    };
    struct {
        unsigned EPSTALL6 :1;
        unsigned EPINEN6 :1;
        unsigned EPOUTEN6 :1;
        unsigned EPCONDIS6 :1;
        unsigned EPHSHK6 :1;
    };
} UEP6bits_t;
extern volatile UEP6bits_t UEP6bits __attribute__((address(0xF70)));
# 1805 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char UEP7 __attribute__((address(0xF71)));

__asm("UEP7 equ 0F71h");


typedef union {
    struct {
        unsigned EPSTALL :1;
        unsigned EPINEN :1;
        unsigned EPOUTEN :1;
        unsigned EPCONDIS :1;
        unsigned EPHSHK :1;
    };
    struct {
        unsigned EP7STALL :1;
        unsigned EP7INEN :1;
        unsigned EP7OUTEN :1;
        unsigned EP7CONDIS :1;
        unsigned EP7HSHK :1;
    };
    struct {
        unsigned EPSTALL7 :1;
        unsigned EPINEN7 :1;
        unsigned EPOUTEN7 :1;
        unsigned EPCONDIS7 :1;
        unsigned EPHSHK7 :1;
    };
} UEP7bits_t;
extern volatile UEP7bits_t UEP7bits __attribute__((address(0xF71)));
# 1913 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char UEP8 __attribute__((address(0xF72)));

__asm("UEP8 equ 0F72h");


typedef union {
    struct {
        unsigned EPSTALL :1;
        unsigned EPINEN :1;
        unsigned EPOUTEN :1;
        unsigned EPCONDIS :1;
        unsigned EPHSHK :1;
    };
    struct {
        unsigned EPSTALL8 :1;
        unsigned EPINEN8 :1;
        unsigned EPOUTEN8 :1;
        unsigned EPCONDIS8 :1;
        unsigned EPHSHK8 :1;
    };
} UEP8bits_t;
extern volatile UEP8bits_t UEP8bits __attribute__((address(0xF72)));
# 1989 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char UEP9 __attribute__((address(0xF73)));

__asm("UEP9 equ 0F73h");


typedef union {
    struct {
        unsigned EPSTALL :1;
        unsigned EPINEN :1;
        unsigned EPOUTEN :1;
        unsigned EPCONDIS :1;
        unsigned EPHSHK :1;
    };
    struct {
        unsigned EPSTALL9 :1;
        unsigned EPINEN9 :1;
        unsigned EPOUTEN9 :1;
        unsigned EPCONDIS9 :1;
        unsigned EPHSHK9 :1;
    };
} UEP9bits_t;
extern volatile UEP9bits_t UEP9bits __attribute__((address(0xF73)));
# 2065 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char UEP10 __attribute__((address(0xF74)));

__asm("UEP10 equ 0F74h");


typedef union {
    struct {
        unsigned EPSTALL :1;
        unsigned EPINEN :1;
        unsigned EPOUTEN :1;
        unsigned EPCONDIS :1;
        unsigned EPHSHK :1;
    };
    struct {
        unsigned EPSTALL10 :1;
        unsigned EPINEN10 :1;
        unsigned EPOUTEN10 :1;
        unsigned EPCONDIS10 :1;
        unsigned EPHSHK10 :1;
    };
} UEP10bits_t;
extern volatile UEP10bits_t UEP10bits __attribute__((address(0xF74)));
# 2141 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char UEP11 __attribute__((address(0xF75)));

__asm("UEP11 equ 0F75h");


typedef union {
    struct {
        unsigned EPSTALL :1;
        unsigned EPINEN :1;
        unsigned EPOUTEN :1;
        unsigned EPCONDIS :1;
        unsigned EPHSHK :1;
    };
    struct {
        unsigned EPSTALL11 :1;
        unsigned EPINEN11 :1;
        unsigned EPOUTEN11 :1;
        unsigned EPCONDIS11 :1;
        unsigned EPHSHK11 :1;
    };
} UEP11bits_t;
extern volatile UEP11bits_t UEP11bits __attribute__((address(0xF75)));
# 2217 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char UEP12 __attribute__((address(0xF76)));

__asm("UEP12 equ 0F76h");


typedef union {
    struct {
        unsigned EPSTALL :1;
        unsigned EPINEN :1;
        unsigned EPOUTEN :1;
        unsigned EPCONDIS :1;
        unsigned EPHSHK :1;
    };
    struct {
        unsigned EPSTALL12 :1;
        unsigned EPINEN12 :1;
        unsigned EPOUTEN12 :1;
        unsigned EPCONDIS12 :1;
        unsigned EPHSHK12 :1;
    };
} UEP12bits_t;
extern volatile UEP12bits_t UEP12bits __attribute__((address(0xF76)));
# 2293 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char UEP13 __attribute__((address(0xF77)));

__asm("UEP13 equ 0F77h");


typedef union {
    struct {
        unsigned EPSTALL :1;
        unsigned EPINEN :1;
        unsigned EPOUTEN :1;
        unsigned EPCONDIS :1;
        unsigned EPHSHK :1;
    };
    struct {
        unsigned EPSTALL13 :1;
        unsigned EPINEN13 :1;
        unsigned EPOUTEN13 :1;
        unsigned EPCONDIS13 :1;
        unsigned EPHSHK13 :1;
    };
} UEP13bits_t;
extern volatile UEP13bits_t UEP13bits __attribute__((address(0xF77)));
# 2369 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char UEP14 __attribute__((address(0xF78)));

__asm("UEP14 equ 0F78h");


typedef union {
    struct {
        unsigned EPSTALL :1;
        unsigned EPINEN :1;
        unsigned EPOUTEN :1;
        unsigned EPCONDIS :1;
        unsigned EPHSHK :1;
    };
    struct {
        unsigned EPSTALL14 :1;
        unsigned EPINEN14 :1;
        unsigned EPOUTEN14 :1;
        unsigned EPCONDIS14 :1;
        unsigned EPHSHK14 :1;
    };
} UEP14bits_t;
extern volatile UEP14bits_t UEP14bits __attribute__((address(0xF78)));
# 2445 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char UEP15 __attribute__((address(0xF79)));

__asm("UEP15 equ 0F79h");


typedef union {
    struct {
        unsigned EPSTALL :1;
        unsigned EPINEN :1;
        unsigned EPOUTEN :1;
        unsigned EPCONDIS :1;
        unsigned EPHSHK :1;
    };
    struct {
        unsigned EPSTALL15 :1;
        unsigned EPINEN15 :1;
        unsigned EPOUTEN15 :1;
        unsigned EPCONDIS15 :1;
        unsigned EPHSHK15 :1;
    };
} UEP15bits_t;
extern volatile UEP15bits_t UEP15bits __attribute__((address(0xF79)));
# 2521 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char SLRCON __attribute__((address(0xF7A)));

__asm("SLRCON equ 0F7Ah");


typedef union {
    struct {
        unsigned SLRA :1;
        unsigned SLRB :1;
        unsigned SLRC :1;
        unsigned SLRD :1;
        unsigned SLRE :1;
    };
} SLRCONbits_t;
extern volatile SLRCONbits_t SLRCONbits __attribute__((address(0xF7A)));
# 2565 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char VREFCON2 __attribute__((address(0xF7B)));

__asm("VREFCON2 equ 0F7Bh");


typedef union {
    struct {
        unsigned DACR :5;
    };
    struct {
        unsigned DACR0 :1;
        unsigned DACR1 :1;
        unsigned DACR2 :1;
        unsigned DACR3 :1;
        unsigned DACR4 :1;
    };
} VREFCON2bits_t;
extern volatile VREFCON2bits_t VREFCON2bits __attribute__((address(0xF7B)));
# 2617 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char VREFCON1 __attribute__((address(0xF7C)));

__asm("VREFCON1 equ 0F7Ch");


typedef union {
    struct {
        unsigned DACNSS :1;
        unsigned :1;
        unsigned DACPSS :2;
        unsigned :1;
        unsigned DACOE :1;
        unsigned DACLPS :1;
        unsigned DACEN :1;
    };
    struct {
        unsigned :2;
        unsigned DACPSS0 :1;
        unsigned DACPSS1 :1;
    };
} VREFCON1bits_t;
extern volatile VREFCON1bits_t VREFCON1bits __attribute__((address(0xF7C)));
# 2678 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char VREFCON0 __attribute__((address(0xF7D)));

__asm("VREFCON0 equ 0F7Dh");


typedef union {
    struct {
        unsigned :2;
        unsigned TSRNG :1;
        unsigned TSEN :1;
        unsigned FVRS :2;
        unsigned FVRST :1;
        unsigned FVREN :1;
    };
    struct {
        unsigned :4;
        unsigned FVRS0 :1;
        unsigned FVRS1 :1;
    };
} VREFCON0bits_t;
extern volatile VREFCON0bits_t VREFCON0bits __attribute__((address(0xF7D)));
# 2738 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char PMD0 __attribute__((address(0xF7E)));

__asm("PMD0 equ 0F7Eh");


typedef union {
    struct {
        unsigned TMR1MD :1;
        unsigned TMR2MD :1;
        unsigned TMR3MD :1;
        unsigned :1;
        unsigned ACTMD :1;
        unsigned USBMD :1;
        unsigned UARTMD :1;
    };
    struct {
        unsigned :4;
        unsigned STMD :1;
        unsigned :1;
        unsigned UART1MD :1;
    };
    struct {
        unsigned :1;
        unsigned SPI1MD :1;
        unsigned SPI2MD :1;
    };
} PMD0bits_t;
extern volatile PMD0bits_t PMD0bits __attribute__((address(0xF7E)));
# 2820 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char PMD1 __attribute__((address(0xF7F)));

__asm("PMD1 equ 0F7Fh");


typedef union {
    struct {
        unsigned CCP1MD :1;
        unsigned CCP2MD :1;
        unsigned ADCMD :1;
        unsigned CMP1MD :1;
        unsigned CMP2MD :1;
        unsigned CTMUMD :1;
        unsigned MSSPMD :1;
    };
    struct {
        unsigned :6;
        unsigned SSP1MD :1;
    };
    struct {
        unsigned :6;
        unsigned MSSP1MD :1;
    };
    struct {
        unsigned EMBMD :1;
    };
} PMD1bits_t;
extern volatile PMD1bits_t PMD1bits __attribute__((address(0xF7F)));
# 2902 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char PORTA __attribute__((address(0xF80)));

__asm("PORTA equ 0F80h");


typedef union {
    struct {
        unsigned RA0 :1;
        unsigned RA1 :1;
        unsigned RA2 :1;
        unsigned RA3 :1;
        unsigned RA4 :1;
        unsigned RA5 :1;
        unsigned RA6 :1;
        unsigned RA7 :1;
    };
    struct {
        unsigned AN0 :1;
        unsigned AN1 :1;
        unsigned AN2 :1;
        unsigned AN3 :1;
        unsigned T0CKI :1;
        unsigned AN4 :1;
        unsigned OSC2 :1;
    };
    struct {
        unsigned :2;
        unsigned VREFM :1;
        unsigned VREFP :1;
        unsigned :1;
        unsigned LVDIN :1;
    };
    struct {
        unsigned :5;
        unsigned HLVDIN :1;
    };
    struct {
        unsigned ULPWUIN :1;
        unsigned :6;
        unsigned RJPU :1;
    };
} PORTAbits_t;
extern volatile PORTAbits_t PORTAbits __attribute__((address(0xF80)));
# 3054 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char PORTB __attribute__((address(0xF81)));

__asm("PORTB equ 0F81h");


typedef union {
    struct {
        unsigned RB0 :1;
        unsigned RB1 :1;
        unsigned RB2 :1;
        unsigned RB3 :1;
        unsigned RB4 :1;
        unsigned RB5 :1;
        unsigned RB6 :1;
        unsigned RB7 :1;
    };
    struct {
        unsigned INT0 :1;
        unsigned INT1 :1;
        unsigned INT2 :1;
        unsigned :2;
        unsigned PGM :1;
        unsigned PGC :1;
        unsigned PGD :1;
    };
    struct {
        unsigned :3;
        unsigned CCP2_PA2 :1;
    };
} PORTBbits_t;
extern volatile PORTBbits_t PORTBbits __attribute__((address(0xF81)));
# 3164 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char PORTC __attribute__((address(0xF82)));

__asm("PORTC equ 0F82h");


typedef union {
    struct {
        unsigned RC0 :1;
        unsigned RC1 :1;
        unsigned RC2 :1;
        unsigned :1;
        unsigned RC4 :1;
        unsigned RC5 :1;
        unsigned RC6 :1;
        unsigned RC7 :1;
    };
    struct {
        unsigned T1OSO :1;
        unsigned T1OSI :1;
        unsigned CCP1 :1;
        unsigned :3;
        unsigned TX :1;
        unsigned RX :1;
    };
    struct {
        unsigned T13CKI :1;
        unsigned :1;
        unsigned P1A :1;
        unsigned :3;
        unsigned CK :1;
        unsigned DT :1;
    };
    struct {
        unsigned :1;
        unsigned CCP2 :1;
        unsigned PA1 :1;
    };
    struct {
        unsigned :1;
        unsigned PA2 :1;
    };
} PORTCbits_t;
extern volatile PORTCbits_t PORTCbits __attribute__((address(0xF82)));
# 3306 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char PORTD __attribute__((address(0xF83)));

__asm("PORTD equ 0F83h");


typedef union {
    struct {
        unsigned RD0 :1;
        unsigned RD1 :1;
        unsigned RD2 :1;
        unsigned RD3 :1;
        unsigned RD4 :1;
        unsigned RD5 :1;
        unsigned RD6 :1;
        unsigned RD7 :1;
    };
    struct {
        unsigned SPP0 :1;
        unsigned SPP1 :1;
        unsigned SPP2 :1;
        unsigned SPP3 :1;
        unsigned SPP4 :1;
        unsigned SPP5 :1;
        unsigned SPP6 :1;
        unsigned SPP7 :1;
    };
    struct {
        unsigned :7;
        unsigned SS2 :1;
    };
} PORTDbits_t;
extern volatile PORTDbits_t PORTDbits __attribute__((address(0xF83)));
# 3427 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char PORTE __attribute__((address(0xF84)));

__asm("PORTE equ 0F84h");


typedef union {
    struct {
        unsigned RE0 :1;
        unsigned RE1 :1;
        unsigned RE2 :1;
        unsigned RE3 :1;
    };
    struct {
        unsigned CK1SPP :1;
        unsigned CK2SPP :1;
        unsigned OESPP :1;
    };
    struct {
        unsigned PD2 :1;
        unsigned PC2 :1;
        unsigned CCP10 :1;
        unsigned CCP9E :1;
    };
    struct {
        unsigned RDE :1;
        unsigned WRE :1;
        unsigned CS :1;
        unsigned PC3E :1;
    };
    struct {
        unsigned :2;
        unsigned PB2 :1;
    };
} PORTEbits_t;
extern volatile PORTEbits_t PORTEbits __attribute__((address(0xF84)));
# 3546 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char WPUB __attribute__((address(0xF85)));

__asm("WPUB equ 0F85h");


typedef union {
    struct {
        unsigned WPUB0 :1;
        unsigned WPUB1 :1;
        unsigned WPUB2 :1;
        unsigned WPUB3 :1;
        unsigned WPUB4 :1;
        unsigned WPUB5 :1;
        unsigned WPUB6 :1;
        unsigned WPUB7 :1;
    };
} WPUBbits_t;
extern volatile WPUBbits_t WPUBbits __attribute__((address(0xF85)));
# 3608 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char IOCB __attribute__((address(0xF86)));

__asm("IOCB equ 0F86h");


typedef union {
    struct {
        unsigned :4;
        unsigned IOCB4 :1;
        unsigned IOCB5 :1;
        unsigned IOCB6 :1;
        unsigned IOCB7 :1;
    };
} IOCBbits_t;
extern volatile IOCBbits_t IOCBbits __attribute__((address(0xF86)));
# 3647 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char IOCC __attribute__((address(0xF87)));

__asm("IOCC equ 0F87h");


typedef union {
    struct {
        unsigned IOCC0 :1;
        unsigned IOCC1 :1;
        unsigned IOCC2 :1;
        unsigned :1;
        unsigned IOCC4 :1;
        unsigned IOCC5 :1;
        unsigned IOCC6 :1;
        unsigned IOCC7 :1;
    };
} IOCCbits_t;
extern volatile IOCCbits_t IOCCbits __attribute__((address(0xF87)));
# 3704 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char CTMUICON __attribute__((address(0xF88)));

__asm("CTMUICON equ 0F88h");


typedef union {
    struct {
        unsigned IRNG :2;
        unsigned ITRIM :6;
    };
    struct {
        unsigned IRNG0 :1;
        unsigned IRNG1 :1;
        unsigned ITRIM0 :1;
        unsigned ITRIM1 :1;
        unsigned ITRIM2 :1;
        unsigned ITRIM3 :1;
        unsigned ITRIM4 :1;
        unsigned ITRIM5 :1;
    };
} CTMUICONbits_t;
extern volatile CTMUICONbits_t CTMUICONbits __attribute__((address(0xF88)));
# 3780 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char LATA __attribute__((address(0xF89)));

__asm("LATA equ 0F89h");


typedef union {
    struct {
        unsigned LATA0 :1;
        unsigned LATA1 :1;
        unsigned LATA2 :1;
        unsigned LATA3 :1;
        unsigned LATA4 :1;
        unsigned LATA5 :1;
        unsigned LATA6 :1;
        unsigned LATA7 :1;
    };
    struct {
        unsigned LA0 :1;
        unsigned LA1 :1;
        unsigned LA2 :1;
        unsigned LA3 :1;
        unsigned LA4 :1;
        unsigned LA5 :1;
        unsigned LA6 :1;
        unsigned LA7 :1;
    };
} LATAbits_t;
extern volatile LATAbits_t LATAbits __attribute__((address(0xF89)));
# 3892 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char LATB __attribute__((address(0xF8A)));

__asm("LATB equ 0F8Ah");


typedef union {
    struct {
        unsigned LATB0 :1;
        unsigned LATB1 :1;
        unsigned LATB2 :1;
        unsigned LATB3 :1;
        unsigned LATB4 :1;
        unsigned LATB5 :1;
        unsigned LATB6 :1;
        unsigned LATB7 :1;
    };
    struct {
        unsigned LB0 :1;
        unsigned LB1 :1;
        unsigned LB2 :1;
        unsigned LB3 :1;
        unsigned LB4 :1;
        unsigned LB5 :1;
        unsigned LB6 :1;
        unsigned LB7 :1;
    };
} LATBbits_t;
extern volatile LATBbits_t LATBbits __attribute__((address(0xF8A)));
# 4004 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char LATC __attribute__((address(0xF8B)));

__asm("LATC equ 0F8Bh");


typedef union {
    struct {
        unsigned LATC0 :1;
        unsigned LATC1 :1;
        unsigned LATC2 :1;
        unsigned :1;
        unsigned LATC4 :1;
        unsigned LATC5 :1;
        unsigned LATC6 :1;
        unsigned LATC7 :1;
    };
    struct {
        unsigned LC0 :1;
        unsigned LC1 :1;
        unsigned LC2 :1;
        unsigned :1;
        unsigned LC4 :1;
        unsigned LC5 :1;
        unsigned LC6 :1;
        unsigned LC7 :1;
    };
} LATCbits_t;
extern volatile LATCbits_t LATCbits __attribute__((address(0xF8B)));
# 4106 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char LATD __attribute__((address(0xF8C)));

__asm("LATD equ 0F8Ch");


typedef union {
    struct {
        unsigned LATD0 :1;
        unsigned LATD1 :1;
        unsigned LATD2 :1;
        unsigned LATD3 :1;
        unsigned LATD4 :1;
        unsigned LATD5 :1;
        unsigned LATD6 :1;
        unsigned LATD7 :1;
    };
    struct {
        unsigned LD0 :1;
        unsigned LD1 :1;
        unsigned LD2 :1;
        unsigned LD3 :1;
        unsigned LD4 :1;
        unsigned LD5 :1;
        unsigned LD6 :1;
        unsigned LD7 :1;
    };
} LATDbits_t;
extern volatile LATDbits_t LATDbits __attribute__((address(0xF8C)));
# 4218 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char LATE __attribute__((address(0xF8D)));

__asm("LATE equ 0F8Dh");


typedef union {
    struct {
        unsigned LATE0 :1;
        unsigned LATE1 :1;
        unsigned LATE2 :1;
    };
    struct {
        unsigned LE0 :1;
        unsigned LE1 :1;
        unsigned LE2 :1;
    };
} LATEbits_t;
extern volatile LATEbits_t LATEbits __attribute__((address(0xF8D)));
# 4270 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char CTMUCONL __attribute__((address(0xF8E)));

__asm("CTMUCONL equ 0F8Eh");


extern volatile unsigned char CTMUCON1 __attribute__((address(0xF8E)));

__asm("CTMUCON1 equ 0F8Eh");


typedef union {
    struct {
        unsigned EDG1STAT :1;
        unsigned EDG2STAT :1;
        unsigned EDG1SEL :2;
        unsigned EDG1POL :1;
        unsigned EDG2SEL :2;
        unsigned EDG2POL :1;
    };
    struct {
        unsigned :2;
        unsigned EDG1SEL0 :1;
        unsigned EDG1SEL1 :1;
        unsigned :1;
        unsigned EDG2SEL0 :1;
        unsigned EDG2SEL1 :1;
    };
} CTMUCONLbits_t;
extern volatile CTMUCONLbits_t CTMUCONLbits __attribute__((address(0xF8E)));
# 4351 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
typedef union {
    struct {
        unsigned EDG1STAT :1;
        unsigned EDG2STAT :1;
        unsigned EDG1SEL :2;
        unsigned EDG1POL :1;
        unsigned EDG2SEL :2;
        unsigned EDG2POL :1;
    };
    struct {
        unsigned :2;
        unsigned EDG1SEL0 :1;
        unsigned EDG1SEL1 :1;
        unsigned :1;
        unsigned EDG2SEL0 :1;
        unsigned EDG2SEL1 :1;
    };
} CTMUCON1bits_t;
extern volatile CTMUCON1bits_t CTMUCON1bits __attribute__((address(0xF8E)));
# 4424 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char CTMUCONH __attribute__((address(0xF8F)));

__asm("CTMUCONH equ 0F8Fh");


extern volatile unsigned char CTMUCON0 __attribute__((address(0xF8F)));

__asm("CTMUCON0 equ 0F8Fh");


typedef union {
    struct {
        unsigned CTTRIG :1;
        unsigned IDISSEN :1;
        unsigned EDGSEQEN :1;
        unsigned EDGEN :1;
        unsigned TGEN :1;
        unsigned CTMUSIDL :1;
        unsigned :1;
        unsigned CTMUEN :1;
    };
    struct {
        unsigned TRIGEN :1;
        unsigned :4;
        unsigned SIDL :1;
        unsigned :1;
        unsigned ON :1;
    };
} CTMUCONHbits_t;
extern volatile CTMUCONHbits_t CTMUCONHbits __attribute__((address(0xF8F)));
# 4506 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
typedef union {
    struct {
        unsigned CTTRIG :1;
        unsigned IDISSEN :1;
        unsigned EDGSEQEN :1;
        unsigned EDGEN :1;
        unsigned TGEN :1;
        unsigned CTMUSIDL :1;
        unsigned :1;
        unsigned CTMUEN :1;
    };
    struct {
        unsigned TRIGEN :1;
        unsigned :4;
        unsigned SIDL :1;
        unsigned :1;
        unsigned ON :1;
    };
} CTMUCON0bits_t;
extern volatile CTMUCON0bits_t CTMUCON0bits __attribute__((address(0xF8F)));
# 4580 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned short CCPR2 __attribute__((address(0xF90)));

__asm("CCPR2 equ 0F90h");




extern volatile unsigned char CCPR2L __attribute__((address(0xF90)));

__asm("CCPR2L equ 0F90h");


typedef union {
    struct {
        unsigned CCPR2L :8;
    };
} CCPR2Lbits_t;
extern volatile CCPR2Lbits_t CCPR2Lbits __attribute__((address(0xF90)));
# 4607 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char CCPR2H __attribute__((address(0xF91)));

__asm("CCPR2H equ 0F91h");


typedef union {
    struct {
        unsigned CCPR2H :8;
    };
} CCPR2Hbits_t;
extern volatile CCPR2Hbits_t CCPR2Hbits __attribute__((address(0xF91)));
# 4627 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char TRISA __attribute__((address(0xF92)));

__asm("TRISA equ 0F92h");


extern volatile unsigned char DDRA __attribute__((address(0xF92)));

__asm("DDRA equ 0F92h");


typedef union {
    struct {
        unsigned TRISA0 :1;
        unsigned TRISA1 :1;
        unsigned TRISA2 :1;
        unsigned TRISA3 :1;
        unsigned TRISA4 :1;
        unsigned TRISA5 :1;
        unsigned TRISA6 :1;
        unsigned TRISA7 :1;
    };
    struct {
        unsigned RA0 :1;
        unsigned RA1 :1;
        unsigned RA2 :1;
        unsigned RA3 :1;
        unsigned RA4 :1;
        unsigned RA5 :1;
        unsigned RA6 :1;
        unsigned RA7 :1;
    };
} TRISAbits_t;
extern volatile TRISAbits_t TRISAbits __attribute__((address(0xF92)));
# 4742 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
typedef union {
    struct {
        unsigned TRISA0 :1;
        unsigned TRISA1 :1;
        unsigned TRISA2 :1;
        unsigned TRISA3 :1;
        unsigned TRISA4 :1;
        unsigned TRISA5 :1;
        unsigned TRISA6 :1;
        unsigned TRISA7 :1;
    };
    struct {
        unsigned RA0 :1;
        unsigned RA1 :1;
        unsigned RA2 :1;
        unsigned RA3 :1;
        unsigned RA4 :1;
        unsigned RA5 :1;
        unsigned RA6 :1;
        unsigned RA7 :1;
    };
} DDRAbits_t;
extern volatile DDRAbits_t DDRAbits __attribute__((address(0xF92)));
# 4849 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char TRISB __attribute__((address(0xF93)));

__asm("TRISB equ 0F93h");


extern volatile unsigned char DDRB __attribute__((address(0xF93)));

__asm("DDRB equ 0F93h");


typedef union {
    struct {
        unsigned TRISB0 :1;
        unsigned TRISB1 :1;
        unsigned TRISB2 :1;
        unsigned TRISB3 :1;
        unsigned TRISB4 :1;
        unsigned TRISB5 :1;
        unsigned TRISB6 :1;
        unsigned TRISB7 :1;
    };
    struct {
        unsigned RB0 :1;
        unsigned RB1 :1;
        unsigned RB2 :1;
        unsigned RB3 :1;
        unsigned RB4 :1;
        unsigned RB5 :1;
        unsigned RB6 :1;
        unsigned RB7 :1;
    };
} TRISBbits_t;
extern volatile TRISBbits_t TRISBbits __attribute__((address(0xF93)));
# 4964 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
typedef union {
    struct {
        unsigned TRISB0 :1;
        unsigned TRISB1 :1;
        unsigned TRISB2 :1;
        unsigned TRISB3 :1;
        unsigned TRISB4 :1;
        unsigned TRISB5 :1;
        unsigned TRISB6 :1;
        unsigned TRISB7 :1;
    };
    struct {
        unsigned RB0 :1;
        unsigned RB1 :1;
        unsigned RB2 :1;
        unsigned RB3 :1;
        unsigned RB4 :1;
        unsigned RB5 :1;
        unsigned RB6 :1;
        unsigned RB7 :1;
    };
} DDRBbits_t;
extern volatile DDRBbits_t DDRBbits __attribute__((address(0xF93)));
# 5071 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char TRISC __attribute__((address(0xF94)));

__asm("TRISC equ 0F94h");


extern volatile unsigned char DDRC __attribute__((address(0xF94)));

__asm("DDRC equ 0F94h");


typedef union {
    struct {
        unsigned TRISC0 :1;
        unsigned TRISC1 :1;
        unsigned TRISC2 :1;
        unsigned :1;
        unsigned TRISC4 :1;
        unsigned TRISC5 :1;
        unsigned TRISC6 :1;
        unsigned TRISC7 :1;
    };
    struct {
        unsigned RC0 :1;
        unsigned RC1 :1;
        unsigned RC2 :1;
        unsigned :3;
        unsigned RC6 :1;
        unsigned RC7 :1;
    };
} TRISCbits_t;
extern volatile TRISCbits_t TRISCbits __attribute__((address(0xF94)));
# 5164 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
typedef union {
    struct {
        unsigned TRISC0 :1;
        unsigned TRISC1 :1;
        unsigned TRISC2 :1;
        unsigned :1;
        unsigned TRISC4 :1;
        unsigned TRISC5 :1;
        unsigned TRISC6 :1;
        unsigned TRISC7 :1;
    };
    struct {
        unsigned RC0 :1;
        unsigned RC1 :1;
        unsigned RC2 :1;
        unsigned :3;
        unsigned RC6 :1;
        unsigned RC7 :1;
    };
} DDRCbits_t;
extern volatile DDRCbits_t DDRCbits __attribute__((address(0xF94)));
# 5249 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char TRISD __attribute__((address(0xF95)));

__asm("TRISD equ 0F95h");


extern volatile unsigned char DDRD __attribute__((address(0xF95)));

__asm("DDRD equ 0F95h");


typedef union {
    struct {
        unsigned TRISD0 :1;
        unsigned TRISD1 :1;
        unsigned TRISD2 :1;
        unsigned TRISD3 :1;
        unsigned TRISD4 :1;
        unsigned TRISD5 :1;
        unsigned TRISD6 :1;
        unsigned TRISD7 :1;
    };
    struct {
        unsigned RD0 :1;
        unsigned RD1 :1;
        unsigned RD2 :1;
        unsigned RD3 :1;
        unsigned RD4 :1;
        unsigned RD5 :1;
        unsigned RD6 :1;
        unsigned RD7 :1;
    };
} TRISDbits_t;
extern volatile TRISDbits_t TRISDbits __attribute__((address(0xF95)));
# 5364 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
typedef union {
    struct {
        unsigned TRISD0 :1;
        unsigned TRISD1 :1;
        unsigned TRISD2 :1;
        unsigned TRISD3 :1;
        unsigned TRISD4 :1;
        unsigned TRISD5 :1;
        unsigned TRISD6 :1;
        unsigned TRISD7 :1;
    };
    struct {
        unsigned RD0 :1;
        unsigned RD1 :1;
        unsigned RD2 :1;
        unsigned RD3 :1;
        unsigned RD4 :1;
        unsigned RD5 :1;
        unsigned RD6 :1;
        unsigned RD7 :1;
    };
} DDRDbits_t;
extern volatile DDRDbits_t DDRDbits __attribute__((address(0xF95)));
# 5471 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char TRISE __attribute__((address(0xF96)));

__asm("TRISE equ 0F96h");


extern volatile unsigned char DDRE __attribute__((address(0xF96)));

__asm("DDRE equ 0F96h");


typedef union {
    struct {
        unsigned TRISE0 :1;
        unsigned TRISE1 :1;
        unsigned TRISE2 :1;
        unsigned :4;
        unsigned WPUE3 :1;
    };
    struct {
        unsigned RE0 :1;
        unsigned RE1 :1;
        unsigned RE2 :1;
    };
} TRISEbits_t;
extern volatile TRISEbits_t TRISEbits __attribute__((address(0xF96)));
# 5533 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
typedef union {
    struct {
        unsigned TRISE0 :1;
        unsigned TRISE1 :1;
        unsigned TRISE2 :1;
        unsigned :4;
        unsigned WPUE3 :1;
    };
    struct {
        unsigned RE0 :1;
        unsigned RE1 :1;
        unsigned RE2 :1;
    };
} DDREbits_t;
extern volatile DDREbits_t DDREbits __attribute__((address(0xF96)));
# 5587 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char CCP2CON __attribute__((address(0xF97)));

__asm("CCP2CON equ 0F97h");


extern volatile unsigned char ECCP2CON __attribute__((address(0xF97)));

__asm("ECCP2CON equ 0F97h");


typedef union {
    struct {
        unsigned CCP2M :4;
        unsigned DC2B :2;
    };
    struct {
        unsigned CCP2M0 :1;
        unsigned CCP2M1 :1;
        unsigned CCP2M2 :1;
        unsigned CCP2M3 :1;
        unsigned DC2B0 :1;
        unsigned DC2B1 :1;
    };
    struct {
        unsigned :4;
        unsigned CCP2Y :1;
        unsigned CCP2X :1;
    };
} CCP2CONbits_t;
extern volatile CCP2CONbits_t CCP2CONbits __attribute__((address(0xF97)));
# 5669 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
typedef union {
    struct {
        unsigned CCP2M :4;
        unsigned DC2B :2;
    };
    struct {
        unsigned CCP2M0 :1;
        unsigned CCP2M1 :1;
        unsigned CCP2M2 :1;
        unsigned CCP2M3 :1;
        unsigned DC2B0 :1;
        unsigned DC2B1 :1;
    };
    struct {
        unsigned :4;
        unsigned CCP2Y :1;
        unsigned CCP2X :1;
    };
} ECCP2CONbits_t;
extern volatile ECCP2CONbits_t ECCP2CONbits __attribute__((address(0xF97)));
# 5743 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char CM1CON0 __attribute__((address(0xF98)));

__asm("CM1CON0 equ 0F98h");


typedef union {
    struct {
        unsigned C1CH :2;
        unsigned C1R :1;
        unsigned C1SP :1;
        unsigned C1POL :1;
        unsigned C1OE :1;
        unsigned C1OUT :1;
        unsigned C1ON :1;
    };
    struct {
        unsigned C1CH0 :1;
        unsigned C1CH1 :1;
        unsigned CREF :1;
        unsigned :1;
        unsigned CPOL :1;
        unsigned COE :1;
        unsigned COUT1 :1;
        unsigned CON :1;
    };
    struct {
        unsigned CCH :2;
    };
    struct {
        unsigned CCH0 :1;
        unsigned CCH1 :1;
    };
} CM1CON0bits_t;
extern volatile CM1CON0bits_t CM1CON0bits __attribute__((address(0xF98)));
# 5866 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char CM2CON0 __attribute__((address(0xF99)));

__asm("CM2CON0 equ 0F99h");


typedef union {
    struct {
        unsigned C2CH :2;
        unsigned C2R :1;
        unsigned C2SP :1;
        unsigned C2POL :1;
        unsigned C2OE :1;
        unsigned C2OUT :1;
        unsigned C2ON :1;
    };
    struct {
        unsigned C2CH0 :1;
        unsigned C2CH1 :1;
        unsigned CREF :1;
        unsigned :1;
        unsigned CPOL :1;
        unsigned COE :1;
        unsigned COUT2 :1;
        unsigned CON :1;
    };
    struct {
        unsigned CCH :2;
    };
    struct {
        unsigned CCH0 :1;
        unsigned CCH1 :1;
    };
} CM2CON0bits_t;
extern volatile CM2CON0bits_t CM2CON0bits __attribute__((address(0xF99)));
# 5989 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char CM2CON1 __attribute__((address(0xF9A)));

__asm("CM2CON1 equ 0F9Ah");


typedef union {
    struct {
        unsigned C2SYNC :1;
        unsigned C1SYNC :1;
        unsigned C2HYS :1;
        unsigned C1HYS :1;
        unsigned C2RSEL :1;
        unsigned C1RSEL :1;
        unsigned MC2OUT :1;
        unsigned MC1OUT :1;
    };
} CM2CON1bits_t;
extern volatile CM2CON1bits_t CM2CON1bits __attribute__((address(0xF9A)));
# 6051 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char OSCTUNE __attribute__((address(0xF9B)));

__asm("OSCTUNE equ 0F9Bh");


typedef union {
    struct {
        unsigned TUN :7;
        unsigned SPLLMULT :1;
    };
    struct {
        unsigned TUN0 :1;
        unsigned TUN1 :1;
        unsigned TUN2 :1;
        unsigned TUN3 :1;
        unsigned TUN4 :1;
        unsigned TUN5 :1;
        unsigned TUN6 :1;
    };
} OSCTUNEbits_t;
extern volatile OSCTUNEbits_t OSCTUNEbits __attribute__((address(0xF9B)));
# 6121 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char HLVDCON __attribute__((address(0xF9C)));

__asm("HLVDCON equ 0F9Ch");


typedef union {
    struct {
        unsigned HLVDL :4;
        unsigned HLVDEN :1;
        unsigned IRVST :1;
        unsigned BGVST :1;
        unsigned VDIRMAG :1;
    };
    struct {
        unsigned HLVDL0 :1;
        unsigned HLVDL1 :1;
        unsigned HLVDL2 :1;
        unsigned HLVDL3 :1;
    };
} HLVDCONbits_t;
extern volatile HLVDCONbits_t HLVDCONbits __attribute__((address(0xF9C)));
# 6191 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char PIE1 __attribute__((address(0xF9D)));

__asm("PIE1 equ 0F9Dh");


typedef union {
    struct {
        unsigned TMR1IE :1;
        unsigned TMR2IE :1;
        unsigned CCP1IE :1;
        unsigned SSPIE :1;
        unsigned TXIE :1;
        unsigned RCIE :1;
        unsigned ADIE :1;
        unsigned ACTIE :1;
    };
    struct {
        unsigned :3;
        unsigned SSP1IE :1;
        unsigned TX1IE :1;
        unsigned RC1IE :1;
        unsigned :1;
        unsigned STIE :1;
    };
    struct {
        unsigned :7;
        unsigned PSPIE :1;
    };
} PIE1bits_t;
extern volatile PIE1bits_t PIE1bits __attribute__((address(0xF9D)));
# 6290 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char PIR1 __attribute__((address(0xF9E)));

__asm("PIR1 equ 0F9Eh");


typedef union {
    struct {
        unsigned TMR1IF :1;
        unsigned TMR2IF :1;
        unsigned CCP1IF :1;
        unsigned SSPIF :1;
        unsigned TXIF :1;
        unsigned RCIF :1;
        unsigned ADIF :1;
        unsigned ACTIF :1;
    };
    struct {
        unsigned :3;
        unsigned SSP1IF :1;
        unsigned TX1IF :1;
        unsigned RC1IF :1;
        unsigned :1;
        unsigned STIF :1;
    };
    struct {
        unsigned :7;
        unsigned PSPIF :1;
    };
} PIR1bits_t;
extern volatile PIR1bits_t PIR1bits __attribute__((address(0xF9E)));
# 6389 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char IPR1 __attribute__((address(0xF9F)));

__asm("IPR1 equ 0F9Fh");


typedef union {
    struct {
        unsigned TMR1IP :1;
        unsigned TMR2IP :1;
        unsigned CCP1IP :1;
        unsigned SSPIP :1;
        unsigned TXIP :1;
        unsigned RCIP :1;
        unsigned ADIP :1;
        unsigned ACTIP :1;
    };
    struct {
        unsigned :3;
        unsigned SSP1IP :1;
        unsigned TX1IP :1;
        unsigned RC1IP :1;
        unsigned :1;
        unsigned STIP :1;
    };
    struct {
        unsigned :7;
        unsigned PSPIP :1;
    };
} IPR1bits_t;
extern volatile IPR1bits_t IPR1bits __attribute__((address(0xF9F)));
# 6488 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char PIE2 __attribute__((address(0xFA0)));

__asm("PIE2 equ 0FA0h");


typedef union {
    struct {
        unsigned CCP2IE :1;
        unsigned TMR3IE :1;
        unsigned HLVDIE :1;
        unsigned BCLIE :1;
        unsigned EEIE :1;
        unsigned C2IE :1;
        unsigned C1IE :1;
        unsigned OSCFIE :1;
    };
    struct {
        unsigned :2;
        unsigned LVDIE :1;
        unsigned BCL1IE :1;
        unsigned :1;
        unsigned CM2IE :1;
        unsigned CM1IE :1;
    };
    struct {
        unsigned :6;
        unsigned CMIE :1;
    };
} PIE2bits_t;
extern volatile PIE2bits_t PIE2bits __attribute__((address(0xFA0)));
# 6587 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char PIR2 __attribute__((address(0xFA1)));

__asm("PIR2 equ 0FA1h");


typedef union {
    struct {
        unsigned CCP2IF :1;
        unsigned TMR3IF :1;
        unsigned HLVDIF :1;
        unsigned BCLIF :1;
        unsigned EEIF :1;
        unsigned C2IF :1;
        unsigned C1IF :1;
        unsigned OSCFIF :1;
    };
    struct {
        unsigned :2;
        unsigned LVDIF :1;
        unsigned BCL1IF :1;
        unsigned :1;
        unsigned CM2IF :1;
        unsigned CM1IF :1;
    };
    struct {
        unsigned :6;
        unsigned CMIF :1;
    };
} PIR2bits_t;
extern volatile PIR2bits_t PIR2bits __attribute__((address(0xFA1)));
# 6686 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char IPR2 __attribute__((address(0xFA2)));

__asm("IPR2 equ 0FA2h");


typedef union {
    struct {
        unsigned CCP2IP :1;
        unsigned TMR3IP :1;
        unsigned HLVDIP :1;
        unsigned BCLIP :1;
        unsigned EEIP :1;
        unsigned C2IP :1;
        unsigned C1IP :1;
        unsigned OSCFIP :1;
    };
    struct {
        unsigned :2;
        unsigned LVDIP :1;
        unsigned BCL1IP :1;
        unsigned :1;
        unsigned CM2IP :1;
        unsigned CM1IP :1;
    };
    struct {
        unsigned :6;
        unsigned CMIP :1;
    };
} IPR2bits_t;
extern volatile IPR2bits_t IPR2bits __attribute__((address(0xFA2)));
# 6785 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char PIE3 __attribute__((address(0xFA3)));

__asm("PIE3 equ 0FA3h");


typedef union {
    struct {
        unsigned TMR1GIE :1;
        unsigned TMR3GIE :1;
        unsigned USBIE :1;
        unsigned CTMUIE :1;
    };
    struct {
        unsigned RXB0IE :1;
        unsigned RXB1IE :1;
        unsigned TXB0IE :1;
        unsigned TXB1IE :1;
    };
    struct {
        unsigned :1;
        unsigned RXBNIE :1;
    };
} PIE3bits_t;
extern volatile PIE3bits_t PIE3bits __attribute__((address(0xFA3)));
# 6858 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char PIR3 __attribute__((address(0xFA4)));

__asm("PIR3 equ 0FA4h");


typedef union {
    struct {
        unsigned TMR1GIF :1;
        unsigned TMR3GIF :1;
        unsigned USBIF :1;
        unsigned CTMUIF :1;
    };
    struct {
        unsigned :1;
        unsigned RXBNIF :1;
    };
} PIR3bits_t;
extern volatile PIR3bits_t PIR3bits __attribute__((address(0xFA4)));
# 6905 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char IPR3 __attribute__((address(0xFA5)));

__asm("IPR3 equ 0FA5h");


typedef union {
    struct {
        unsigned TMR1GIP :1;
        unsigned TMR3GIP :1;
        unsigned USBIP :1;
        unsigned CTMUIP :1;
    };
    struct {
        unsigned :1;
        unsigned RXBNIP :1;
    };
} IPR3bits_t;
extern volatile IPR3bits_t IPR3bits __attribute__((address(0xFA5)));
# 6952 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char EECON1 __attribute__((address(0xFA6)));

__asm("EECON1 equ 0FA6h");


typedef union {
    struct {
        unsigned RD :1;
        unsigned WR :1;
        unsigned WREN :1;
        unsigned WRERR :1;
        unsigned FREE :1;
        unsigned :1;
        unsigned CFGS :1;
        unsigned EEPGD :1;
    };
    struct {
        unsigned :6;
        unsigned EEFS :1;
    };
} EECON1bits_t;
extern volatile EECON1bits_t EECON1bits __attribute__((address(0xFA6)));
# 7018 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char EECON2 __attribute__((address(0xFA7)));

__asm("EECON2 equ 0FA7h");


typedef union {
    struct {
        unsigned EECON2 :8;
    };
} EECON2bits_t;
extern volatile EECON2bits_t EECON2bits __attribute__((address(0xFA7)));
# 7038 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char EEDATA __attribute__((address(0xFA8)));

__asm("EEDATA equ 0FA8h");




extern volatile unsigned char EEADR __attribute__((address(0xFA9)));

__asm("EEADR equ 0FA9h");




extern volatile unsigned char RCSTA1 __attribute__((address(0xFAB)));

__asm("RCSTA1 equ 0FABh");


extern volatile unsigned char RCSTA __attribute__((address(0xFAB)));

__asm("RCSTA equ 0FABh");


typedef union {
    struct {
        unsigned RX9D :1;
        unsigned OERR :1;
        unsigned FERR :1;
        unsigned ADDEN :1;
        unsigned CREN :1;
        unsigned SREN :1;
        unsigned RX9 :1;
        unsigned SPEN :1;
    };
    struct {
        unsigned :3;
        unsigned ADEN :1;
    };
    struct {
        unsigned RCD8 :1;
        unsigned :5;
        unsigned RC8_9 :1;
    };
    struct {
        unsigned :6;
        unsigned RC9 :1;
    };
    struct {
        unsigned :5;
        unsigned SRENA :1;
    };
} RCSTA1bits_t;
extern volatile RCSTA1bits_t RCSTA1bits __attribute__((address(0xFAB)));
# 7159 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
typedef union {
    struct {
        unsigned RX9D :1;
        unsigned OERR :1;
        unsigned FERR :1;
        unsigned ADDEN :1;
        unsigned CREN :1;
        unsigned SREN :1;
        unsigned RX9 :1;
        unsigned SPEN :1;
    };
    struct {
        unsigned :3;
        unsigned ADEN :1;
    };
    struct {
        unsigned RCD8 :1;
        unsigned :5;
        unsigned RC8_9 :1;
    };
    struct {
        unsigned :6;
        unsigned RC9 :1;
    };
    struct {
        unsigned :5;
        unsigned SRENA :1;
    };
} RCSTAbits_t;
extern volatile RCSTAbits_t RCSTAbits __attribute__((address(0xFAB)));
# 7258 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char TXSTA1 __attribute__((address(0xFAC)));

__asm("TXSTA1 equ 0FACh");


extern volatile unsigned char TXSTA __attribute__((address(0xFAC)));

__asm("TXSTA equ 0FACh");


typedef union {
    struct {
        unsigned TX9D :1;
        unsigned TRMT :1;
        unsigned BRGH :1;
        unsigned SENDB :1;
        unsigned SYNC :1;
        unsigned TXEN :1;
        unsigned TX9 :1;
        unsigned CSRC :1;
    };
    struct {
        unsigned TXD8 :1;
        unsigned :5;
        unsigned TX8_9 :1;
    };
    struct {
        unsigned :2;
        unsigned BRGH1 :1;
    };
    struct {
        unsigned :7;
        unsigned CSRC1 :1;
    };
    struct {
        unsigned :3;
        unsigned SENDB1 :1;
    };
    struct {
        unsigned :4;
        unsigned SYNC1 :1;
    };
    struct {
        unsigned :1;
        unsigned TRMT1 :1;
    };
    struct {
        unsigned :6;
        unsigned TX91 :1;
    };
    struct {
        unsigned TX9D1 :1;
    };
    struct {
        unsigned :5;
        unsigned TXEN1 :1;
    };
} TXSTA1bits_t;
extern volatile TXSTA1bits_t TXSTA1bits __attribute__((address(0xFAC)));
# 7409 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
typedef union {
    struct {
        unsigned TX9D :1;
        unsigned TRMT :1;
        unsigned BRGH :1;
        unsigned SENDB :1;
        unsigned SYNC :1;
        unsigned TXEN :1;
        unsigned TX9 :1;
        unsigned CSRC :1;
    };
    struct {
        unsigned TXD8 :1;
        unsigned :5;
        unsigned TX8_9 :1;
    };
    struct {
        unsigned :2;
        unsigned BRGH1 :1;
    };
    struct {
        unsigned :7;
        unsigned CSRC1 :1;
    };
    struct {
        unsigned :3;
        unsigned SENDB1 :1;
    };
    struct {
        unsigned :4;
        unsigned SYNC1 :1;
    };
    struct {
        unsigned :1;
        unsigned TRMT1 :1;
    };
    struct {
        unsigned :6;
        unsigned TX91 :1;
    };
    struct {
        unsigned TX9D1 :1;
    };
    struct {
        unsigned :5;
        unsigned TXEN1 :1;
    };
} TXSTAbits_t;
extern volatile TXSTAbits_t TXSTAbits __attribute__((address(0xFAC)));
# 7552 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char TXREG1 __attribute__((address(0xFAD)));

__asm("TXREG1 equ 0FADh");


extern volatile unsigned char TXREG __attribute__((address(0xFAD)));

__asm("TXREG equ 0FADh");


typedef union {
    struct {
        unsigned TXREG1 :8;
    };
} TXREG1bits_t;
extern volatile TXREG1bits_t TXREG1bits __attribute__((address(0xFAD)));







typedef union {
    struct {
        unsigned TXREG1 :8;
    };
} TXREGbits_t;
extern volatile TXREGbits_t TXREGbits __attribute__((address(0xFAD)));
# 7590 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char RCREG1 __attribute__((address(0xFAE)));

__asm("RCREG1 equ 0FAEh");


extern volatile unsigned char RCREG __attribute__((address(0xFAE)));

__asm("RCREG equ 0FAEh");


typedef union {
    struct {
        unsigned RCREG1 :8;
    };
} RCREG1bits_t;
extern volatile RCREG1bits_t RCREG1bits __attribute__((address(0xFAE)));







typedef union {
    struct {
        unsigned RCREG1 :8;
    };
} RCREGbits_t;
extern volatile RCREGbits_t RCREGbits __attribute__((address(0xFAE)));
# 7628 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char SPBRG1 __attribute__((address(0xFAF)));

__asm("SPBRG1 equ 0FAFh");


extern volatile unsigned char SPBRG __attribute__((address(0xFAF)));

__asm("SPBRG equ 0FAFh");


typedef union {
    struct {
        unsigned SPBRG1 :8;
    };
    struct {
        unsigned BRG0 :1;
        unsigned BRG1 :1;
        unsigned BRG2 :1;
        unsigned BRG3 :1;
        unsigned BRG4 :1;
        unsigned BRG5 :1;
        unsigned BRG6 :1;
        unsigned BRG7 :1;
    };
} SPBRG1bits_t;
extern volatile SPBRG1bits_t SPBRG1bits __attribute__((address(0xFAF)));
# 7701 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
typedef union {
    struct {
        unsigned SPBRG1 :8;
    };
    struct {
        unsigned BRG0 :1;
        unsigned BRG1 :1;
        unsigned BRG2 :1;
        unsigned BRG3 :1;
        unsigned BRG4 :1;
        unsigned BRG5 :1;
        unsigned BRG6 :1;
        unsigned BRG7 :1;
    };
} SPBRGbits_t;
extern volatile SPBRGbits_t SPBRGbits __attribute__((address(0xFAF)));
# 7766 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char SPBRGH1 __attribute__((address(0xFB0)));

__asm("SPBRGH1 equ 0FB0h");


extern volatile unsigned char SPBRGH __attribute__((address(0xFB0)));

__asm("SPBRGH equ 0FB0h");


typedef union {
    struct {
        unsigned SPBRGH1 :8;
    };
    struct {
        unsigned BRG8 :1;
        unsigned BRG9 :1;
        unsigned BRG10 :1;
        unsigned BRG11 :1;
        unsigned BRG12 :1;
        unsigned BRG13 :1;
        unsigned BRG14 :1;
        unsigned BRG15 :1;
    };
} SPBRGH1bits_t;
extern volatile SPBRGH1bits_t SPBRGH1bits __attribute__((address(0xFB0)));
# 7839 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
typedef union {
    struct {
        unsigned SPBRGH1 :8;
    };
    struct {
        unsigned BRG8 :1;
        unsigned BRG9 :1;
        unsigned BRG10 :1;
        unsigned BRG11 :1;
        unsigned BRG12 :1;
        unsigned BRG13 :1;
        unsigned BRG14 :1;
        unsigned BRG15 :1;
    };
} SPBRGHbits_t;
extern volatile SPBRGHbits_t SPBRGHbits __attribute__((address(0xFB0)));
# 7904 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char T3CON __attribute__((address(0xFB1)));

__asm("T3CON equ 0FB1h");


typedef union {
    struct {
        unsigned :2;
        unsigned NOT_T3SYNC :1;
    };
    struct {
        unsigned TMR3ON :1;
        unsigned RD16 :1;
        unsigned nT3SYNC :1;
        unsigned SOSCEN :1;
        unsigned T3CKPS :2;
        unsigned TMR3CS :2;
    };
    struct {
        unsigned :1;
        unsigned T3RD16 :1;
        unsigned T3SYNC :1;
        unsigned T3SOSCEN :1;
        unsigned T3CKPS0 :1;
        unsigned T3CKPS1 :1;
        unsigned TMR3CS0 :1;
        unsigned TMR3CS1 :1;
    };
    struct {
        unsigned :3;
        unsigned T3OSCEN :1;
    };
    struct {
        unsigned :3;
        unsigned SOSCEN3 :1;
        unsigned :3;
        unsigned RD163 :1;
    };
} T3CONbits_t;
extern volatile T3CONbits_t T3CONbits __attribute__((address(0xFB1)));
# 8033 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned short TMR3 __attribute__((address(0xFB2)));

__asm("TMR3 equ 0FB2h");




extern volatile unsigned char TMR3L __attribute__((address(0xFB2)));

__asm("TMR3L equ 0FB2h");


typedef union {
    struct {
        unsigned TMR3L :8;
    };
} TMR3Lbits_t;
extern volatile TMR3Lbits_t TMR3Lbits __attribute__((address(0xFB2)));
# 8060 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char TMR3H __attribute__((address(0xFB3)));

__asm("TMR3H equ 0FB3h");


typedef union {
    struct {
        unsigned TMR3H :8;
    };
} TMR3Hbits_t;
extern volatile TMR3Hbits_t TMR3Hbits __attribute__((address(0xFB3)));
# 8080 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char T3GCON __attribute__((address(0xFB4)));

__asm("T3GCON equ 0FB4h");


typedef union {
    struct {
        unsigned :3;
        unsigned T3GGO_NOT_T3DONE :1;
    };
    struct {
        unsigned T3GSS :2;
        unsigned T3GVAL :1;
        unsigned T3GGO_nT3DONE :1;
        unsigned T3GSPM :1;
        unsigned T3GTM :1;
        unsigned T3GPOL :1;
        unsigned TMR3GE :1;
    };
    struct {
        unsigned T3GSS0 :1;
        unsigned T3GSS1 :1;
        unsigned :1;
        unsigned T3GGO :1;
    };
    struct {
        unsigned :3;
        unsigned NOT_T3DONE :1;
    };
    struct {
        unsigned :3;
        unsigned nT3DONE :1;
    };
    struct {
        unsigned :3;
        unsigned T3DONE :1;
    };
    struct {
        unsigned :3;
        unsigned T3GGO_NOT_DONE :1;
    };
    struct {
        unsigned :3;
        unsigned T3GGO_nDONE :1;
    };
} T3GCONbits_t;
extern volatile T3GCONbits_t T3GCONbits __attribute__((address(0xFB4)));
# 8211 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char ACTCON __attribute__((address(0xFB5)));

__asm("ACTCON equ 0FB5h");


extern volatile unsigned char STCON __attribute__((address(0xFB5)));

__asm("STCON equ 0FB5h");


typedef union {
    struct {
        unsigned :1;
        unsigned ACTORS :1;
        unsigned :1;
        unsigned ACTLOCK :1;
        unsigned ACTSRC :1;
        unsigned :1;
        unsigned ACTUD :1;
        unsigned ACTEN :1;
    };
    struct {
        unsigned :1;
        unsigned STOR :1;
        unsigned :1;
        unsigned STLOCK :1;
        unsigned STSRC :1;
        unsigned :1;
        unsigned STUD :1;
        unsigned STEN :1;
    };
    struct {
        unsigned :1;
        unsigned ACTOR :1;
        unsigned :4;
        unsigned ACTD :1;
        unsigned ACTSEL :1;
    };
} ACTCONbits_t;
extern volatile ACTCONbits_t ACTCONbits __attribute__((address(0xFB5)));
# 8318 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
typedef union {
    struct {
        unsigned :1;
        unsigned ACTORS :1;
        unsigned :1;
        unsigned ACTLOCK :1;
        unsigned ACTSRC :1;
        unsigned :1;
        unsigned ACTUD :1;
        unsigned ACTEN :1;
    };
    struct {
        unsigned :1;
        unsigned STOR :1;
        unsigned :1;
        unsigned STLOCK :1;
        unsigned STSRC :1;
        unsigned :1;
        unsigned STUD :1;
        unsigned STEN :1;
    };
    struct {
        unsigned :1;
        unsigned ACTOR :1;
        unsigned :4;
        unsigned ACTD :1;
        unsigned ACTSEL :1;
    };
} STCONbits_t;
extern volatile STCONbits_t STCONbits __attribute__((address(0xFB5)));
# 8417 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char ECCP1AS __attribute__((address(0xFB6)));

__asm("ECCP1AS equ 0FB6h");


typedef union {
    struct {
        unsigned PSS1BD :2;
        unsigned PSS1AC :2;
        unsigned ECCP1AS :3;
        unsigned ECCP1ASE :1;
    };
    struct {
        unsigned PSS1BD0 :1;
        unsigned PSS1BD1 :1;
        unsigned PSS1AC0 :1;
        unsigned PSS1AC1 :1;
        unsigned ECCP1AS0 :1;
        unsigned ECCP1AS1 :1;
        unsigned ECCP1AS2 :1;
        unsigned CCP1ASE :1;
    };
    struct {
        unsigned P1SSBD :2;
        unsigned P1SSAC :2;
        unsigned CCP1AS :3;
    };
    struct {
        unsigned PSSBD0 :1;
        unsigned PSSBD1 :1;
        unsigned PSSAC0 :1;
        unsigned PSSAC1 :1;
    };
} ECCP1ASbits_t;
extern volatile ECCP1ASbits_t ECCP1ASbits __attribute__((address(0xFB6)));
# 8551 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char PWM1CON __attribute__((address(0xFB7)));

__asm("PWM1CON equ 0FB7h");


extern volatile unsigned char ECCP1DEL __attribute__((address(0xFB7)));

__asm("ECCP1DEL equ 0FB7h");


typedef union {
    struct {
        unsigned P1DC :7;
        unsigned P1RSEN :1;
    };
    struct {
        unsigned PDC0 :1;
        unsigned PDC1 :1;
        unsigned PDC2 :1;
        unsigned PDC3 :1;
        unsigned PDC4 :1;
        unsigned PDC5 :1;
        unsigned PDC6 :1;
        unsigned PR1SEN :1;
    };
} PWM1CONbits_t;
extern volatile PWM1CONbits_t PWM1CONbits __attribute__((address(0xFB7)));
# 8630 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
typedef union {
    struct {
        unsigned P1DC :7;
        unsigned P1RSEN :1;
    };
    struct {
        unsigned PDC0 :1;
        unsigned PDC1 :1;
        unsigned PDC2 :1;
        unsigned PDC3 :1;
        unsigned PDC4 :1;
        unsigned PDC5 :1;
        unsigned PDC6 :1;
        unsigned PR1SEN :1;
    };
} ECCP1DELbits_t;
extern volatile ECCP1DELbits_t ECCP1DELbits __attribute__((address(0xFB7)));
# 8701 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char BAUDCON1 __attribute__((address(0xFB8)));

__asm("BAUDCON1 equ 0FB8h");


extern volatile unsigned char BAUDCON __attribute__((address(0xFB8)));

__asm("BAUDCON equ 0FB8h");

extern volatile unsigned char BAUDCTL __attribute__((address(0xFB8)));

__asm("BAUDCTL equ 0FB8h");


typedef union {
    struct {
        unsigned ABDEN :1;
        unsigned WUE :1;
        unsigned :1;
        unsigned BRG16 :1;
        unsigned TXCKP :1;
        unsigned RXDTP :1;
        unsigned RCIDL :1;
        unsigned ABDOVF :1;
    };
    struct {
        unsigned :4;
        unsigned CKTXP :1;
        unsigned DTRXP :1;
    };
    struct {
        unsigned :4;
        unsigned SCKP :1;
        unsigned :1;
        unsigned RCMT :1;
    };
    struct {
        unsigned ABDEN1 :1;
        unsigned WUE1 :1;
        unsigned :1;
        unsigned BRG161 :1;
        unsigned SCKP1 :1;
        unsigned DTRXP1 :1;
        unsigned RCIDL1 :1;
        unsigned ABDOVF1 :1;
    };
    struct {
        unsigned :4;
        unsigned TXCKP1 :1;
        unsigned RXDTP1 :1;
        unsigned RCMT1 :1;
    };
    struct {
        unsigned :5;
        unsigned RXCKP :1;
    };
    struct {
        unsigned :1;
        unsigned W4E :1;
    };
} BAUDCON1bits_t;
extern volatile BAUDCON1bits_t BAUDCON1bits __attribute__((address(0xFB8)));
# 8880 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
typedef union {
    struct {
        unsigned ABDEN :1;
        unsigned WUE :1;
        unsigned :1;
        unsigned BRG16 :1;
        unsigned TXCKP :1;
        unsigned RXDTP :1;
        unsigned RCIDL :1;
        unsigned ABDOVF :1;
    };
    struct {
        unsigned :4;
        unsigned CKTXP :1;
        unsigned DTRXP :1;
    };
    struct {
        unsigned :4;
        unsigned SCKP :1;
        unsigned :1;
        unsigned RCMT :1;
    };
    struct {
        unsigned ABDEN1 :1;
        unsigned WUE1 :1;
        unsigned :1;
        unsigned BRG161 :1;
        unsigned SCKP1 :1;
        unsigned DTRXP1 :1;
        unsigned RCIDL1 :1;
        unsigned ABDOVF1 :1;
    };
    struct {
        unsigned :4;
        unsigned TXCKP1 :1;
        unsigned RXDTP1 :1;
        unsigned RCMT1 :1;
    };
    struct {
        unsigned :5;
        unsigned RXCKP :1;
    };
    struct {
        unsigned :1;
        unsigned W4E :1;
    };
} BAUDCONbits_t;
extern volatile BAUDCONbits_t BAUDCONbits __attribute__((address(0xFB8)));
# 9044 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
typedef union {
    struct {
        unsigned ABDEN :1;
        unsigned WUE :1;
        unsigned :1;
        unsigned BRG16 :1;
        unsigned TXCKP :1;
        unsigned RXDTP :1;
        unsigned RCIDL :1;
        unsigned ABDOVF :1;
    };
    struct {
        unsigned :4;
        unsigned CKTXP :1;
        unsigned DTRXP :1;
    };
    struct {
        unsigned :4;
        unsigned SCKP :1;
        unsigned :1;
        unsigned RCMT :1;
    };
    struct {
        unsigned ABDEN1 :1;
        unsigned WUE1 :1;
        unsigned :1;
        unsigned BRG161 :1;
        unsigned SCKP1 :1;
        unsigned DTRXP1 :1;
        unsigned RCIDL1 :1;
        unsigned ABDOVF1 :1;
    };
    struct {
        unsigned :4;
        unsigned TXCKP1 :1;
        unsigned RXDTP1 :1;
        unsigned RCMT1 :1;
    };
    struct {
        unsigned :5;
        unsigned RXCKP :1;
    };
    struct {
        unsigned :1;
        unsigned W4E :1;
    };
} BAUDCTLbits_t;
extern volatile BAUDCTLbits_t BAUDCTLbits __attribute__((address(0xFB8)));
# 9211 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char PSTR1CON __attribute__((address(0xFB9)));

__asm("PSTR1CON equ 0FB9h");


typedef union {
    struct {
        unsigned STRA :1;
        unsigned STRB :1;
        unsigned STRC :1;
        unsigned STRD :1;
        unsigned STRSYNC :1;
    };
    struct {
        unsigned STR1A :1;
        unsigned STR1B :1;
        unsigned STR1C :1;
        unsigned STR1D :1;
        unsigned STR1SYNC :1;
    };
} PSTR1CONbits_t;
extern volatile PSTR1CONbits_t PSTR1CONbits __attribute__((address(0xFB9)));
# 9287 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char T2CON __attribute__((address(0xFBA)));

__asm("T2CON equ 0FBAh");


typedef union {
    struct {
        unsigned T2CKPS :2;
        unsigned TMR2ON :1;
        unsigned T2OUTPS :4;
    };
    struct {
        unsigned T2CKPS0 :1;
        unsigned T2CKPS1 :1;
        unsigned :1;
        unsigned T2OUTPS0 :1;
        unsigned T2OUTPS1 :1;
        unsigned T2OUTPS2 :1;
        unsigned T2OUTPS3 :1;
    };
} T2CONbits_t;
extern volatile T2CONbits_t T2CONbits __attribute__((address(0xFBA)));
# 9358 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char PR2 __attribute__((address(0xFBB)));

__asm("PR2 equ 0FBBh");


typedef union {
    struct {
        unsigned PR2 :8;
    };
} PR2bits_t;
extern volatile PR2bits_t PR2bits __attribute__((address(0xFBB)));
# 9378 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char TMR2 __attribute__((address(0xFBC)));

__asm("TMR2 equ 0FBCh");


typedef union {
    struct {
        unsigned TMR2 :8;
    };
} TMR2bits_t;
extern volatile TMR2bits_t TMR2bits __attribute__((address(0xFBC)));
# 9398 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char CCP1CON __attribute__((address(0xFBD)));

__asm("CCP1CON equ 0FBDh");


extern volatile unsigned char ECCP1CON __attribute__((address(0xFBD)));

__asm("ECCP1CON equ 0FBDh");


typedef union {
    struct {
        unsigned CCP1M :4;
        unsigned DC1B :2;
        unsigned P1M :2;
    };
    struct {
        unsigned CCP1M0 :1;
        unsigned CCP1M1 :1;
        unsigned CCP1M2 :1;
        unsigned CCP1M3 :1;
        unsigned DC1B0 :1;
        unsigned DC1B1 :1;
        unsigned P1M0 :1;
        unsigned P1M1 :1;
    };
    struct {
        unsigned :4;
        unsigned CCP1Y :1;
        unsigned CCP1X :1;
    };
} CCP1CONbits_t;
extern volatile CCP1CONbits_t CCP1CONbits __attribute__((address(0xFBD)));
# 9498 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
typedef union {
    struct {
        unsigned CCP1M :4;
        unsigned DC1B :2;
        unsigned P1M :2;
    };
    struct {
        unsigned CCP1M0 :1;
        unsigned CCP1M1 :1;
        unsigned CCP1M2 :1;
        unsigned CCP1M3 :1;
        unsigned DC1B0 :1;
        unsigned DC1B1 :1;
        unsigned P1M0 :1;
        unsigned P1M1 :1;
    };
    struct {
        unsigned :4;
        unsigned CCP1Y :1;
        unsigned CCP1X :1;
    };
} ECCP1CONbits_t;
extern volatile ECCP1CONbits_t ECCP1CONbits __attribute__((address(0xFBD)));
# 9590 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned short CCPR1 __attribute__((address(0xFBE)));

__asm("CCPR1 equ 0FBEh");




extern volatile unsigned char CCPR1L __attribute__((address(0xFBE)));

__asm("CCPR1L equ 0FBEh");


typedef union {
    struct {
        unsigned CCPR1L :8;
    };
} CCPR1Lbits_t;
extern volatile CCPR1Lbits_t CCPR1Lbits __attribute__((address(0xFBE)));
# 9617 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char CCPR1H __attribute__((address(0xFBF)));

__asm("CCPR1H equ 0FBFh");


typedef union {
    struct {
        unsigned CCPR1H :8;
    };
} CCPR1Hbits_t;
extern volatile CCPR1Hbits_t CCPR1Hbits __attribute__((address(0xFBF)));
# 9637 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char ADCON2 __attribute__((address(0xFC0)));

__asm("ADCON2 equ 0FC0h");


typedef union {
    struct {
        unsigned ADCS :3;
        unsigned ACQT :3;
        unsigned :1;
        unsigned ADFM :1;
    };
    struct {
        unsigned ADCS0 :1;
        unsigned ADCS1 :1;
        unsigned ADCS2 :1;
        unsigned ACQT0 :1;
        unsigned ACQT1 :1;
        unsigned ACQT2 :1;
    };
} ADCON2bits_t;
extern volatile ADCON2bits_t ADCON2bits __attribute__((address(0xFC0)));
# 9708 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char ADCON1 __attribute__((address(0xFC1)));

__asm("ADCON1 equ 0FC1h");


typedef union {
    struct {
        unsigned NVCFG :2;
        unsigned PVCFG :2;
        unsigned :3;
        unsigned TRIGSEL :1;
    };
    struct {
        unsigned NVCFG0 :1;
        unsigned NVCFG1 :1;
        unsigned PVCFG0 :1;
        unsigned PVCFG1 :1;
    };
    struct {
        unsigned :3;
        unsigned CHSN3 :1;
    };
} ADCON1bits_t;
extern volatile ADCON1bits_t ADCON1bits __attribute__((address(0xFC1)));
# 9776 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char ADCON0 __attribute__((address(0xFC2)));

__asm("ADCON0 equ 0FC2h");


typedef union {
    struct {
        unsigned :1;
        unsigned GO_NOT_DONE :1;
    };
    struct {
        unsigned ADON :1;
        unsigned GO_nDONE :1;
        unsigned CHS :5;
    };
    struct {
        unsigned :1;
        unsigned DONE :1;
    };
    struct {
        unsigned :1;
        unsigned GO :1;
    };
    struct {
        unsigned :1;
        unsigned NOT_DONE :1;
    };
    struct {
        unsigned :1;
        unsigned nDONE :1;
    };
    struct {
        unsigned :1;
        unsigned GODONE :1;
    };
    struct {
        unsigned :1;
        unsigned GO_DONE :1;
    };
} ADCON0bits_t;
extern volatile ADCON0bits_t ADCON0bits __attribute__((address(0xFC2)));
# 9871 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char ADRESL __attribute__((address(0xFC3)));

__asm("ADRESL equ 0FC3h");




extern volatile unsigned char ADRESH __attribute__((address(0xFC4)));

__asm("ADRESH equ 0FC4h");




extern volatile unsigned char SSP1CON2 __attribute__((address(0xFC5)));

__asm("SSP1CON2 equ 0FC5h");


extern volatile unsigned char SSPCON2 __attribute__((address(0xFC5)));

__asm("SSPCON2 equ 0FC5h");


typedef union {
    struct {
        unsigned SEN :1;
        unsigned RSEN :1;
        unsigned PEN :1;
        unsigned RCEN :1;
        unsigned ACKEN :1;
        unsigned ACKDT :1;
        unsigned ACKSTAT :1;
        unsigned GCEN :1;
    };
    struct {
        unsigned SEN1 :1;
        unsigned ADMSK1 :1;
        unsigned ADMSK2 :1;
        unsigned ADMSK3 :1;
        unsigned ACKEN1 :1;
        unsigned ACKDT1 :1;
        unsigned ACKSTAT1 :1;
        unsigned GCEN1 :1;
    };
    struct {
        unsigned :1;
        unsigned ADMSK11 :1;
        unsigned ADMSK21 :1;
        unsigned ADMSK31 :1;
        unsigned ADMSK4 :1;
        unsigned ADMSK5 :1;
    };
    struct {
        unsigned :1;
        unsigned RSEN1 :1;
        unsigned PEN1 :1;
        unsigned RCEN1 :1;
        unsigned ADMSK41 :1;
        unsigned ADMSK51 :1;
    };
} SSP1CON2bits_t;
extern volatile SSP1CON2bits_t SSP1CON2bits __attribute__((address(0xFC5)));
# 10066 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
typedef union {
    struct {
        unsigned SEN :1;
        unsigned RSEN :1;
        unsigned PEN :1;
        unsigned RCEN :1;
        unsigned ACKEN :1;
        unsigned ACKDT :1;
        unsigned ACKSTAT :1;
        unsigned GCEN :1;
    };
    struct {
        unsigned SEN1 :1;
        unsigned ADMSK1 :1;
        unsigned ADMSK2 :1;
        unsigned ADMSK3 :1;
        unsigned ACKEN1 :1;
        unsigned ACKDT1 :1;
        unsigned ACKSTAT1 :1;
        unsigned GCEN1 :1;
    };
    struct {
        unsigned :1;
        unsigned ADMSK11 :1;
        unsigned ADMSK21 :1;
        unsigned ADMSK31 :1;
        unsigned ADMSK4 :1;
        unsigned ADMSK5 :1;
    };
    struct {
        unsigned :1;
        unsigned RSEN1 :1;
        unsigned PEN1 :1;
        unsigned RCEN1 :1;
        unsigned ADMSK41 :1;
        unsigned ADMSK51 :1;
    };
} SSPCON2bits_t;
extern volatile SSPCON2bits_t SSPCON2bits __attribute__((address(0xFC5)));
# 10239 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char SSP1CON1 __attribute__((address(0xFC6)));

__asm("SSP1CON1 equ 0FC6h");


extern volatile unsigned char SSPCON __attribute__((address(0xFC6)));

__asm("SSPCON equ 0FC6h");

extern volatile unsigned char SSPCON1 __attribute__((address(0xFC6)));

__asm("SSPCON1 equ 0FC6h");


typedef union {
    struct {
        unsigned SSPM :4;
        unsigned CKP :1;
        unsigned SSPEN :1;
        unsigned SSPOV :1;
        unsigned WCOL :1;
    };
    struct {
        unsigned SSPM0 :1;
        unsigned SSPM1 :1;
        unsigned SSPM2 :1;
        unsigned SSPM3 :1;
    };
    struct {
        unsigned SSPM01 :1;
        unsigned SSPM11 :1;
        unsigned SSPM21 :1;
        unsigned SSPM31 :1;
        unsigned CKP1 :1;
        unsigned SSPEN1 :1;
        unsigned SSPOV1 :1;
        unsigned WCOL1 :1;
    };
} SSP1CON1bits_t;
extern volatile SSP1CON1bits_t SSP1CON1bits __attribute__((address(0xFC6)));
# 10366 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
typedef union {
    struct {
        unsigned SSPM :4;
        unsigned CKP :1;
        unsigned SSPEN :1;
        unsigned SSPOV :1;
        unsigned WCOL :1;
    };
    struct {
        unsigned SSPM0 :1;
        unsigned SSPM1 :1;
        unsigned SSPM2 :1;
        unsigned SSPM3 :1;
    };
    struct {
        unsigned SSPM01 :1;
        unsigned SSPM11 :1;
        unsigned SSPM21 :1;
        unsigned SSPM31 :1;
        unsigned CKP1 :1;
        unsigned SSPEN1 :1;
        unsigned SSPOV1 :1;
        unsigned WCOL1 :1;
    };
} SSPCONbits_t;
extern volatile SSPCONbits_t SSPCONbits __attribute__((address(0xFC6)));
# 10478 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
typedef union {
    struct {
        unsigned SSPM :4;
        unsigned CKP :1;
        unsigned SSPEN :1;
        unsigned SSPOV :1;
        unsigned WCOL :1;
    };
    struct {
        unsigned SSPM0 :1;
        unsigned SSPM1 :1;
        unsigned SSPM2 :1;
        unsigned SSPM3 :1;
    };
    struct {
        unsigned SSPM01 :1;
        unsigned SSPM11 :1;
        unsigned SSPM21 :1;
        unsigned SSPM31 :1;
        unsigned CKP1 :1;
        unsigned SSPEN1 :1;
        unsigned SSPOV1 :1;
        unsigned WCOL1 :1;
    };
} SSPCON1bits_t;
extern volatile SSPCON1bits_t SSPCON1bits __attribute__((address(0xFC6)));
# 10593 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char SSP1STAT __attribute__((address(0xFC7)));

__asm("SSP1STAT equ 0FC7h");


extern volatile unsigned char SSPSTAT __attribute__((address(0xFC7)));

__asm("SSPSTAT equ 0FC7h");


typedef union {
    struct {
        unsigned :2;
        unsigned R_NOT_W :1;
    };
    struct {
        unsigned :5;
        unsigned D_NOT_A :1;
    };
    struct {
        unsigned BF :1;
        unsigned UA :1;
        unsigned R_nW :1;
        unsigned S :1;
        unsigned P :1;
        unsigned D_nA :1;
        unsigned CKE :1;
        unsigned SMP :1;
    };
    struct {
        unsigned BF1 :1;
        unsigned UA1 :1;
        unsigned I2C_READ :1;
        unsigned I2C_START :1;
        unsigned I2C_STOP :1;
        unsigned D :1;
        unsigned CKE1 :1;
        unsigned SMP1 :1;
    };
    struct {
        unsigned :2;
        unsigned R :1;
        unsigned START :1;
        unsigned STOP :1;
        unsigned DA :1;
    };
    struct {
        unsigned :2;
        unsigned READ_WRITE :1;
        unsigned START1 :1;
        unsigned STOP1 :1;
        unsigned DA1 :1;
    };
    struct {
        unsigned :2;
        unsigned RW :1;
        unsigned :2;
        unsigned DATA_ADDRESS :1;
    };
    struct {
        unsigned :2;
        unsigned RW1 :1;
        unsigned :2;
        unsigned D_A :1;
    };
    struct {
        unsigned :2;
        unsigned R_W :1;
        unsigned :2;
        unsigned I2C_DAT :1;
    };
    struct {
        unsigned :2;
        unsigned nW :1;
        unsigned :2;
        unsigned nA :1;
    };
    struct {
        unsigned :2;
        unsigned NOT_WRITE :1;
    };
    struct {
        unsigned :5;
        unsigned NOT_ADDRESS :1;
    };
    struct {
        unsigned :2;
        unsigned nWRITE :1;
        unsigned :2;
        unsigned nADDRESS :1;
    };
    struct {
        unsigned :2;
        unsigned NOT_W :1;
    };
    struct {
        unsigned :5;
        unsigned NOT_A :1;
    };
} SSP1STATbits_t;
extern volatile SSP1STATbits_t SSP1STATbits __attribute__((address(0xFC7)));
# 10896 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
typedef union {
    struct {
        unsigned :2;
        unsigned R_NOT_W :1;
    };
    struct {
        unsigned :5;
        unsigned D_NOT_A :1;
    };
    struct {
        unsigned BF :1;
        unsigned UA :1;
        unsigned R_nW :1;
        unsigned S :1;
        unsigned P :1;
        unsigned D_nA :1;
        unsigned CKE :1;
        unsigned SMP :1;
    };
    struct {
        unsigned BF1 :1;
        unsigned UA1 :1;
        unsigned I2C_READ :1;
        unsigned I2C_START :1;
        unsigned I2C_STOP :1;
        unsigned D :1;
        unsigned CKE1 :1;
        unsigned SMP1 :1;
    };
    struct {
        unsigned :2;
        unsigned R :1;
        unsigned START :1;
        unsigned STOP :1;
        unsigned DA :1;
    };
    struct {
        unsigned :2;
        unsigned READ_WRITE :1;
        unsigned START1 :1;
        unsigned STOP1 :1;
        unsigned DA1 :1;
    };
    struct {
        unsigned :2;
        unsigned RW :1;
        unsigned :2;
        unsigned DATA_ADDRESS :1;
    };
    struct {
        unsigned :2;
        unsigned RW1 :1;
        unsigned :2;
        unsigned D_A :1;
    };
    struct {
        unsigned :2;
        unsigned R_W :1;
        unsigned :2;
        unsigned I2C_DAT :1;
    };
    struct {
        unsigned :2;
        unsigned nW :1;
        unsigned :2;
        unsigned nA :1;
    };
    struct {
        unsigned :2;
        unsigned NOT_WRITE :1;
    };
    struct {
        unsigned :5;
        unsigned NOT_ADDRESS :1;
    };
    struct {
        unsigned :2;
        unsigned nWRITE :1;
        unsigned :2;
        unsigned nADDRESS :1;
    };
    struct {
        unsigned :2;
        unsigned NOT_W :1;
    };
    struct {
        unsigned :5;
        unsigned NOT_A :1;
    };
} SSPSTATbits_t;
extern volatile SSPSTATbits_t SSPSTATbits __attribute__((address(0xFC7)));
# 11191 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char SSP1ADD __attribute__((address(0xFC8)));

__asm("SSP1ADD equ 0FC8h");


extern volatile unsigned char SSPADD __attribute__((address(0xFC8)));

__asm("SSPADD equ 0FC8h");


typedef union {
    struct {
        unsigned SSP1ADD :8;
    };
    struct {
        unsigned SSP1ADD0 :1;
        unsigned SSP1ADD1 :1;
        unsigned SSP1ADD2 :1;
        unsigned SSP1ADD3 :1;
        unsigned SSP1ADD4 :1;
        unsigned SSP1ADD5 :1;
        unsigned SSP1ADD6 :1;
        unsigned SSP1ADD7 :1;
    };
    struct {
        unsigned MSK0 :1;
        unsigned MSK1 :1;
        unsigned MSK2 :1;
        unsigned MSK3 :1;
        unsigned MSK4 :1;
        unsigned MSK5 :1;
        unsigned MSK6 :1;
        unsigned MSK7 :1;
    };
    struct {
        unsigned MSK01 :1;
        unsigned MSK11 :1;
        unsigned MSK21 :1;
        unsigned MSK31 :1;
        unsigned MSK41 :1;
        unsigned MSK51 :1;
        unsigned MSK61 :1;
        unsigned MSK71 :1;
    };
} SSP1ADDbits_t;
extern volatile SSP1ADDbits_t SSP1ADDbits __attribute__((address(0xFC8)));
# 11364 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
typedef union {
    struct {
        unsigned SSP1ADD :8;
    };
    struct {
        unsigned SSP1ADD0 :1;
        unsigned SSP1ADD1 :1;
        unsigned SSP1ADD2 :1;
        unsigned SSP1ADD3 :1;
        unsigned SSP1ADD4 :1;
        unsigned SSP1ADD5 :1;
        unsigned SSP1ADD6 :1;
        unsigned SSP1ADD7 :1;
    };
    struct {
        unsigned MSK0 :1;
        unsigned MSK1 :1;
        unsigned MSK2 :1;
        unsigned MSK3 :1;
        unsigned MSK4 :1;
        unsigned MSK5 :1;
        unsigned MSK6 :1;
        unsigned MSK7 :1;
    };
    struct {
        unsigned MSK01 :1;
        unsigned MSK11 :1;
        unsigned MSK21 :1;
        unsigned MSK31 :1;
        unsigned MSK41 :1;
        unsigned MSK51 :1;
        unsigned MSK61 :1;
        unsigned MSK71 :1;
    };
} SSPADDbits_t;
extern volatile SSPADDbits_t SSPADDbits __attribute__((address(0xFC8)));
# 11529 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char SSP1BUF __attribute__((address(0xFC9)));

__asm("SSP1BUF equ 0FC9h");


extern volatile unsigned char SSPBUF __attribute__((address(0xFC9)));

__asm("SSPBUF equ 0FC9h");


typedef union {
    struct {
        unsigned SSP1BUF :8;
    };
} SSP1BUFbits_t;
extern volatile SSP1BUFbits_t SSP1BUFbits __attribute__((address(0xFC9)));







typedef union {
    struct {
        unsigned SSP1BUF :8;
    };
} SSPBUFbits_t;
extern volatile SSPBUFbits_t SSPBUFbits __attribute__((address(0xFC9)));
# 11567 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char SSP1MSK __attribute__((address(0xFCA)));

__asm("SSP1MSK equ 0FCAh");


extern volatile unsigned char SSPMSK __attribute__((address(0xFCA)));

__asm("SSPMSK equ 0FCAh");


typedef union {
    struct {
        unsigned SSP1MSK :8;
    };
    struct {
        unsigned SSP1MSK0 :1;
        unsigned SSP1MSK1 :1;
        unsigned SSP1MSK2 :1;
        unsigned SSP1MSK3 :1;
        unsigned SSP1MSK4 :1;
        unsigned SSP1MSK5 :1;
        unsigned SSP1MSK6 :1;
        unsigned SSP1MSK7 :1;
    };
} SSP1MSKbits_t;
extern volatile SSP1MSKbits_t SSP1MSKbits __attribute__((address(0xFCA)));
# 11640 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
typedef union {
    struct {
        unsigned SSP1MSK :8;
    };
    struct {
        unsigned SSP1MSK0 :1;
        unsigned SSP1MSK1 :1;
        unsigned SSP1MSK2 :1;
        unsigned SSP1MSK3 :1;
        unsigned SSP1MSK4 :1;
        unsigned SSP1MSK5 :1;
        unsigned SSP1MSK6 :1;
        unsigned SSP1MSK7 :1;
    };
} SSPMSKbits_t;
extern volatile SSPMSKbits_t SSPMSKbits __attribute__((address(0xFCA)));
# 11705 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char SSP1CON3 __attribute__((address(0xFCB)));

__asm("SSP1CON3 equ 0FCBh");


extern volatile unsigned char SSPCON3 __attribute__((address(0xFCB)));

__asm("SSPCON3 equ 0FCBh");


typedef union {
    struct {
        unsigned DHEN :1;
        unsigned AHEN :1;
        unsigned SBCDE :1;
        unsigned SDAHT :1;
        unsigned BOEN :1;
        unsigned SCIE :1;
        unsigned PCIE :1;
        unsigned ACKTIM :1;
    };
} SSP1CON3bits_t;
extern volatile SSP1CON3bits_t SSP1CON3bits __attribute__((address(0xFCB)));
# 11770 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
typedef union {
    struct {
        unsigned DHEN :1;
        unsigned AHEN :1;
        unsigned SBCDE :1;
        unsigned SDAHT :1;
        unsigned BOEN :1;
        unsigned SCIE :1;
        unsigned PCIE :1;
        unsigned ACKTIM :1;
    };
} SSPCON3bits_t;
extern volatile SSPCON3bits_t SSPCON3bits __attribute__((address(0xFCB)));
# 11827 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char T1GCON __attribute__((address(0xFCC)));

__asm("T1GCON equ 0FCCh");


typedef union {
    struct {
        unsigned :3;
        unsigned T1GGO_NOT_T1DONE :1;
    };
    struct {
        unsigned T1GSS :2;
        unsigned T1GVAL :1;
        unsigned T1GGO_nT1DONE :1;
        unsigned T1GSPM :1;
        unsigned T1GTM :1;
        unsigned T1GPOL :1;
        unsigned TMR1GE :1;
    };
    struct {
        unsigned T1GSS0 :1;
        unsigned T1GSS1 :1;
        unsigned :1;
        unsigned T1GGO :1;
    };
    struct {
        unsigned :3;
        unsigned NOT_T1DONE :1;
    };
    struct {
        unsigned :3;
        unsigned nT1DONE :1;
    };
    struct {
        unsigned :3;
        unsigned T1DONE :1;
    };
    struct {
        unsigned :3;
        unsigned T1GGO_NOT_DONE :1;
    };
    struct {
        unsigned :3;
        unsigned T1GGO_nDONE :1;
    };
} T1GCONbits_t;
extern volatile T1GCONbits_t T1GCONbits __attribute__((address(0xFCC)));
# 11958 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char T1CON __attribute__((address(0xFCD)));

__asm("T1CON equ 0FCDh");


typedef union {
    struct {
        unsigned :2;
        unsigned NOT_T1SYNC :1;
    };
    struct {
        unsigned TMR1ON :1;
        unsigned RD16 :1;
        unsigned nT1SYNC :1;
        unsigned SOSCEN :1;
        unsigned T1CKPS :2;
        unsigned TMR1CS :2;
    };
    struct {
        unsigned :1;
        unsigned T1RD16 :1;
        unsigned T1SYNC :1;
        unsigned T1SOSCEN :1;
        unsigned T1CKPS0 :1;
        unsigned T1CKPS1 :1;
        unsigned TMR1CS0 :1;
        unsigned TMR1CS1 :1;
    };
    struct {
        unsigned :3;
        unsigned T1OSCEN :1;
    };
    struct {
        unsigned :3;
        unsigned SOSCEN1 :1;
        unsigned :3;
        unsigned RD161 :1;
    };
} T1CONbits_t;
extern volatile T1CONbits_t T1CONbits __attribute__((address(0xFCD)));
# 12087 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned short TMR1 __attribute__((address(0xFCE)));

__asm("TMR1 equ 0FCEh");




extern volatile unsigned char TMR1L __attribute__((address(0xFCE)));

__asm("TMR1L equ 0FCEh");


typedef union {
    struct {
        unsigned TMR1L :8;
    };
} TMR1Lbits_t;
extern volatile TMR1Lbits_t TMR1Lbits __attribute__((address(0xFCE)));
# 12114 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char TMR1H __attribute__((address(0xFCF)));

__asm("TMR1H equ 0FCFh");


typedef union {
    struct {
        unsigned TMR1H :8;
    };
} TMR1Hbits_t;
extern volatile TMR1Hbits_t TMR1Hbits __attribute__((address(0xFCF)));
# 12134 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char RCON __attribute__((address(0xFD0)));

__asm("RCON equ 0FD0h");


typedef union {
    struct {
        unsigned NOT_BOR :1;
    };
    struct {
        unsigned :1;
        unsigned NOT_POR :1;
    };
    struct {
        unsigned :2;
        unsigned NOT_PD :1;
    };
    struct {
        unsigned :3;
        unsigned NOT_TO :1;
    };
    struct {
        unsigned :4;
        unsigned NOT_RI :1;
    };
    struct {
        unsigned nBOR :1;
        unsigned nPOR :1;
        unsigned nPD :1;
        unsigned nTO :1;
        unsigned nRI :1;
        unsigned :1;
        unsigned SBOREN :1;
        unsigned IPEN :1;
    };
    struct {
        unsigned BOR :1;
        unsigned POR :1;
        unsigned PD :1;
        unsigned TO :1;
        unsigned RI :1;
    };
} RCONbits_t;
extern volatile RCONbits_t RCONbits __attribute__((address(0xFD0)));
# 12267 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char WDTCON __attribute__((address(0xFD1)));

__asm("WDTCON equ 0FD1h");


typedef union {
    struct {
        unsigned SWDTEN :1;
    };
    struct {
        unsigned SWDTE :1;
    };
} WDTCONbits_t;
extern volatile WDTCONbits_t WDTCONbits __attribute__((address(0xFD1)));
# 12295 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char OSCCON2 __attribute__((address(0xFD2)));

__asm("OSCCON2 equ 0FD2h");


typedef union {
    struct {
        unsigned LFIOFS :1;
        unsigned HFIOFR :1;
        unsigned PRISD :1;
        unsigned SOSCGO :1;
        unsigned PLLEN :1;
        unsigned INTSRC :1;
        unsigned SOSCRUN :1;
        unsigned PLLRDY :1;
    };
} OSCCON2bits_t;
extern volatile OSCCON2bits_t OSCCON2bits __attribute__((address(0xFD2)));
# 12357 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char OSCCON __attribute__((address(0xFD3)));

__asm("OSCCON equ 0FD3h");


typedef union {
    struct {
        unsigned SCS :2;
        unsigned HFIOFS :1;
        unsigned OSTS :1;
        unsigned IRCF :3;
        unsigned IDLEN :1;
    };
    struct {
        unsigned SCS0 :1;
        unsigned SCS1 :1;
        unsigned FLTS :1;
        unsigned :1;
        unsigned IRCF0 :1;
        unsigned IRCF1 :1;
        unsigned IRCF2 :1;
    };
} OSCCONbits_t;
extern volatile OSCCONbits_t OSCCONbits __attribute__((address(0xFD3)));
# 12440 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char T0CON __attribute__((address(0xFD5)));

__asm("T0CON equ 0FD5h");


typedef union {
    struct {
        unsigned T0PS :3;
        unsigned PSA :1;
        unsigned T0SE :1;
        unsigned T0CS :1;
        unsigned T08BIT :1;
        unsigned TMR0ON :1;
    };
    struct {
        unsigned T0PS0 :1;
        unsigned T0PS1 :1;
        unsigned T0PS2 :1;
    };
} T0CONbits_t;
extern volatile T0CONbits_t T0CONbits __attribute__((address(0xFD5)));
# 12510 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned short TMR0 __attribute__((address(0xFD6)));

__asm("TMR0 equ 0FD6h");




extern volatile unsigned char TMR0L __attribute__((address(0xFD6)));

__asm("TMR0L equ 0FD6h");


typedef union {
    struct {
        unsigned TMR0L :8;
    };
} TMR0Lbits_t;
extern volatile TMR0Lbits_t TMR0Lbits __attribute__((address(0xFD6)));
# 12537 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char TMR0H __attribute__((address(0xFD7)));

__asm("TMR0H equ 0FD7h");


typedef union {
    struct {
        unsigned TMR0H :8;
    };
} TMR0Hbits_t;
extern volatile TMR0Hbits_t TMR0Hbits __attribute__((address(0xFD7)));
# 12557 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char STATUS __attribute__((address(0xFD8)));

__asm("STATUS equ 0FD8h");


typedef union {
    struct {
        unsigned C :1;
        unsigned DC :1;
        unsigned Z :1;
        unsigned OV :1;
        unsigned N :1;
    };
    struct {
        unsigned CARRY :1;
        unsigned :1;
        unsigned ZERO :1;
        unsigned OVERFLOW :1;
        unsigned NEGATIVE :1;
    };
} STATUSbits_t;
extern volatile STATUSbits_t STATUSbits __attribute__((address(0xFD8)));
# 12628 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned short FSR2 __attribute__((address(0xFD9)));

__asm("FSR2 equ 0FD9h");




extern volatile unsigned char FSR2L __attribute__((address(0xFD9)));

__asm("FSR2L equ 0FD9h");


typedef union {
    struct {
        unsigned FSR2L :8;
    };
} FSR2Lbits_t;
extern volatile FSR2Lbits_t FSR2Lbits __attribute__((address(0xFD9)));
# 12655 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char FSR2H __attribute__((address(0xFDA)));

__asm("FSR2H equ 0FDAh");




extern volatile unsigned char PLUSW2 __attribute__((address(0xFDB)));

__asm("PLUSW2 equ 0FDBh");


typedef union {
    struct {
        unsigned PLUSW2 :8;
    };
} PLUSW2bits_t;
extern volatile PLUSW2bits_t PLUSW2bits __attribute__((address(0xFDB)));
# 12682 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char PREINC2 __attribute__((address(0xFDC)));

__asm("PREINC2 equ 0FDCh");


typedef union {
    struct {
        unsigned PREINC2 :8;
    };
} PREINC2bits_t;
extern volatile PREINC2bits_t PREINC2bits __attribute__((address(0xFDC)));
# 12702 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char POSTDEC2 __attribute__((address(0xFDD)));

__asm("POSTDEC2 equ 0FDDh");


typedef union {
    struct {
        unsigned POSTDEC2 :8;
    };
} POSTDEC2bits_t;
extern volatile POSTDEC2bits_t POSTDEC2bits __attribute__((address(0xFDD)));
# 12722 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char POSTINC2 __attribute__((address(0xFDE)));

__asm("POSTINC2 equ 0FDEh");


typedef union {
    struct {
        unsigned POSTINC2 :8;
    };
} POSTINC2bits_t;
extern volatile POSTINC2bits_t POSTINC2bits __attribute__((address(0xFDE)));
# 12742 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char INDF2 __attribute__((address(0xFDF)));

__asm("INDF2 equ 0FDFh");


typedef union {
    struct {
        unsigned INDF2 :8;
    };
} INDF2bits_t;
extern volatile INDF2bits_t INDF2bits __attribute__((address(0xFDF)));
# 12762 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char BSR __attribute__((address(0xFE0)));

__asm("BSR equ 0FE0h");




extern volatile unsigned short FSR1 __attribute__((address(0xFE1)));

__asm("FSR1 equ 0FE1h");




extern volatile unsigned char FSR1L __attribute__((address(0xFE1)));

__asm("FSR1L equ 0FE1h");


typedef union {
    struct {
        unsigned FSR1L :8;
    };
} FSR1Lbits_t;
extern volatile FSR1Lbits_t FSR1Lbits __attribute__((address(0xFE1)));
# 12796 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char FSR1H __attribute__((address(0xFE2)));

__asm("FSR1H equ 0FE2h");




extern volatile unsigned char PLUSW1 __attribute__((address(0xFE3)));

__asm("PLUSW1 equ 0FE3h");


typedef union {
    struct {
        unsigned PLUSW1 :8;
    };
} PLUSW1bits_t;
extern volatile PLUSW1bits_t PLUSW1bits __attribute__((address(0xFE3)));
# 12823 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char PREINC1 __attribute__((address(0xFE4)));

__asm("PREINC1 equ 0FE4h");


typedef union {
    struct {
        unsigned PREINC1 :8;
    };
} PREINC1bits_t;
extern volatile PREINC1bits_t PREINC1bits __attribute__((address(0xFE4)));
# 12843 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char POSTDEC1 __attribute__((address(0xFE5)));

__asm("POSTDEC1 equ 0FE5h");


typedef union {
    struct {
        unsigned POSTDEC1 :8;
    };
} POSTDEC1bits_t;
extern volatile POSTDEC1bits_t POSTDEC1bits __attribute__((address(0xFE5)));
# 12863 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char POSTINC1 __attribute__((address(0xFE6)));

__asm("POSTINC1 equ 0FE6h");


typedef union {
    struct {
        unsigned POSTINC1 :8;
    };
} POSTINC1bits_t;
extern volatile POSTINC1bits_t POSTINC1bits __attribute__((address(0xFE6)));
# 12883 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char INDF1 __attribute__((address(0xFE7)));

__asm("INDF1 equ 0FE7h");


typedef union {
    struct {
        unsigned INDF1 :8;
    };
} INDF1bits_t;
extern volatile INDF1bits_t INDF1bits __attribute__((address(0xFE7)));
# 12903 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char WREG __attribute__((address(0xFE8)));

__asm("WREG equ 0FE8h");


typedef union {
    struct {
        unsigned WREG :8;
    };
} WREGbits_t;
extern volatile WREGbits_t WREGbits __attribute__((address(0xFE8)));
# 12923 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned short FSR0 __attribute__((address(0xFE9)));

__asm("FSR0 equ 0FE9h");




extern volatile unsigned char FSR0L __attribute__((address(0xFE9)));

__asm("FSR0L equ 0FE9h");


typedef union {
    struct {
        unsigned FSR0L :8;
    };
} FSR0Lbits_t;
extern volatile FSR0Lbits_t FSR0Lbits __attribute__((address(0xFE9)));
# 12950 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char FSR0H __attribute__((address(0xFEA)));

__asm("FSR0H equ 0FEAh");




extern volatile unsigned char PLUSW0 __attribute__((address(0xFEB)));

__asm("PLUSW0 equ 0FEBh");


typedef union {
    struct {
        unsigned PLUSW0 :8;
    };
} PLUSW0bits_t;
extern volatile PLUSW0bits_t PLUSW0bits __attribute__((address(0xFEB)));
# 12977 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char PREINC0 __attribute__((address(0xFEC)));

__asm("PREINC0 equ 0FECh");


typedef union {
    struct {
        unsigned PREINC0 :8;
    };
} PREINC0bits_t;
extern volatile PREINC0bits_t PREINC0bits __attribute__((address(0xFEC)));
# 12997 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char POSTDEC0 __attribute__((address(0xFED)));

__asm("POSTDEC0 equ 0FEDh");


typedef union {
    struct {
        unsigned POSTDEC0 :8;
    };
} POSTDEC0bits_t;
extern volatile POSTDEC0bits_t POSTDEC0bits __attribute__((address(0xFED)));
# 13017 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char POSTINC0 __attribute__((address(0xFEE)));

__asm("POSTINC0 equ 0FEEh");


typedef union {
    struct {
        unsigned POSTINC0 :8;
    };
} POSTINC0bits_t;
extern volatile POSTINC0bits_t POSTINC0bits __attribute__((address(0xFEE)));
# 13037 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char INDF0 __attribute__((address(0xFEF)));

__asm("INDF0 equ 0FEFh");


typedef union {
    struct {
        unsigned INDF0 :8;
    };
} INDF0bits_t;
extern volatile INDF0bits_t INDF0bits __attribute__((address(0xFEF)));
# 13057 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char INTCON3 __attribute__((address(0xFF0)));

__asm("INTCON3 equ 0FF0h");


typedef union {
    struct {
        unsigned INT1IF :1;
        unsigned INT2IF :1;
        unsigned :1;
        unsigned INT1IE :1;
        unsigned INT2IE :1;
        unsigned :1;
        unsigned INT1IP :1;
        unsigned INT2IP :1;
    };
    struct {
        unsigned INT1F :1;
        unsigned INT2F :1;
        unsigned :1;
        unsigned INT1E :1;
        unsigned INT2E :1;
        unsigned :1;
        unsigned INT1P :1;
        unsigned INT2P :1;
    };
} INTCON3bits_t;
extern volatile INTCON3bits_t INTCON3bits __attribute__((address(0xFF0)));
# 13149 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char INTCON2 __attribute__((address(0xFF1)));

__asm("INTCON2 equ 0FF1h");


typedef union {
    struct {
        unsigned :7;
        unsigned NOT_RBPU :1;
    };
    struct {
        unsigned IOCIP :1;
        unsigned :1;
        unsigned TMR0IP :1;
        unsigned :1;
        unsigned INTEDG2 :1;
        unsigned INTEDG1 :1;
        unsigned INTEDG0 :1;
        unsigned nRBPU :1;
    };
    struct {
        unsigned :2;
        unsigned T0IP :1;
        unsigned :4;
        unsigned RBPU :1;
    };
} INTCON2bits_t;
extern volatile INTCON2bits_t INTCON2bits __attribute__((address(0xFF1)));
# 13226 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char INTCON __attribute__((address(0xFF2)));

__asm("INTCON equ 0FF2h");


typedef union {
    struct {
        unsigned IOCIF :1;
        unsigned INT0IF :1;
        unsigned TMR0IF :1;
        unsigned IOCIE :1;
        unsigned INT0IE :1;
        unsigned TMR0IE :1;
        unsigned PEIE_GIEL :1;
        unsigned GIE_GIEH :1;
    };
    struct {
        unsigned :1;
        unsigned INT0F :1;
        unsigned T0IF :1;
        unsigned :1;
        unsigned INT0E :1;
        unsigned T0IE :1;
        unsigned PEIE :1;
        unsigned GIE :1;
    };
    struct {
        unsigned :6;
        unsigned GIEL :1;
        unsigned GIEH :1;
    };
} INTCONbits_t;
extern volatile INTCONbits_t INTCONbits __attribute__((address(0xFF2)));
# 13343 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned short PROD __attribute__((address(0xFF3)));

__asm("PROD equ 0FF3h");




extern volatile unsigned char PRODL __attribute__((address(0xFF3)));

__asm("PRODL equ 0FF3h");


typedef union {
    struct {
        unsigned PRODL :8;
    };
} PRODLbits_t;
extern volatile PRODLbits_t PRODLbits __attribute__((address(0xFF3)));
# 13370 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char PRODH __attribute__((address(0xFF4)));

__asm("PRODH equ 0FF4h");


typedef union {
    struct {
        unsigned PRODH :8;
    };
} PRODHbits_t;
extern volatile PRODHbits_t PRODHbits __attribute__((address(0xFF4)));
# 13390 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char TABLAT __attribute__((address(0xFF5)));

__asm("TABLAT equ 0FF5h");


typedef union {
    struct {
        unsigned TABLAT :8;
    };
} TABLATbits_t;
extern volatile TABLATbits_t TABLATbits __attribute__((address(0xFF5)));
# 13411 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile __uint24 TBLPTR __attribute__((address(0xFF6)));


__asm("TBLPTR equ 0FF6h");




extern volatile unsigned char TBLPTRL __attribute__((address(0xFF6)));

__asm("TBLPTRL equ 0FF6h");


typedef union {
    struct {
        unsigned TBLPTRL :8;
    };
} TBLPTRLbits_t;
extern volatile TBLPTRLbits_t TBLPTRLbits __attribute__((address(0xFF6)));
# 13439 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char TBLPTRH __attribute__((address(0xFF7)));

__asm("TBLPTRH equ 0FF7h");


typedef union {
    struct {
        unsigned TBLPTRH :8;
    };
} TBLPTRHbits_t;
extern volatile TBLPTRHbits_t TBLPTRHbits __attribute__((address(0xFF7)));
# 13459 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char TBLPTRU __attribute__((address(0xFF8)));

__asm("TBLPTRU equ 0FF8h");





extern volatile __uint24 PCLAT __attribute__((address(0xFF9)));


__asm("PCLAT equ 0FF9h");



extern volatile __uint24 PC __attribute__((address(0xFF9)));


__asm("PC equ 0FF9h");




extern volatile unsigned char PCL __attribute__((address(0xFF9)));

__asm("PCL equ 0FF9h");


typedef union {
    struct {
        unsigned PCL :8;
    };
} PCLbits_t;
extern volatile PCLbits_t PCLbits __attribute__((address(0xFF9)));
# 13502 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char PCLATH __attribute__((address(0xFFA)));

__asm("PCLATH equ 0FFAh");


typedef union {
    struct {
        unsigned PCH :8;
    };
} PCLATHbits_t;
extern volatile PCLATHbits_t PCLATHbits __attribute__((address(0xFFA)));
# 13522 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char PCLATU __attribute__((address(0xFFB)));

__asm("PCLATU equ 0FFBh");




extern volatile unsigned char STKPTR __attribute__((address(0xFFC)));

__asm("STKPTR equ 0FFCh");


typedef union {
    struct {
        unsigned STKPTR :5;
        unsigned :1;
        unsigned STKUNF :1;
        unsigned STKFUL :1;
    };
    struct {
        unsigned SP0 :1;
        unsigned SP1 :1;
        unsigned SP2 :1;
        unsigned SP3 :1;
        unsigned SP4 :1;
        unsigned :2;
        unsigned STKOVF :1;
    };
} STKPTRbits_t;
extern volatile STKPTRbits_t STKPTRbits __attribute__((address(0xFFC)));
# 13602 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile __uint24 TOS __attribute__((address(0xFFD)));


__asm("TOS equ 0FFDh");




extern volatile unsigned char TOSL __attribute__((address(0xFFD)));

__asm("TOSL equ 0FFDh");


typedef union {
    struct {
        unsigned TOSL :8;
    };
} TOSLbits_t;
extern volatile TOSLbits_t TOSLbits __attribute__((address(0xFFD)));
# 13630 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char TOSH __attribute__((address(0xFFE)));

__asm("TOSH equ 0FFEh");


typedef union {
    struct {
        unsigned TOSH :8;
    };
} TOSHbits_t;
extern volatile TOSHbits_t TOSHbits __attribute__((address(0xFFE)));
# 13650 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile unsigned char TOSU __attribute__((address(0xFFF)));

__asm("TOSU equ 0FFFh");
# 13663 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\proc\\pic18f45k50.h" 3
extern volatile __bit ABDEN __attribute__((address(0x7DC0)));


extern volatile __bit ABDEN1 __attribute__((address(0x7DC0)));


extern volatile __bit ABDOVF __attribute__((address(0x7DC7)));


extern volatile __bit ABDOVF1 __attribute__((address(0x7DC7)));


extern volatile __bit ACKDT __attribute__((address(0x7E2D)));


extern volatile __bit ACKDT1 __attribute__((address(0x7E2D)));


extern volatile __bit ACKEN __attribute__((address(0x7E2C)));


extern volatile __bit ACKEN1 __attribute__((address(0x7E2C)));


extern volatile __bit ACKSTAT __attribute__((address(0x7E2E)));


extern volatile __bit ACKSTAT1 __attribute__((address(0x7E2E)));


extern volatile __bit ACKTIM __attribute__((address(0x7E5F)));


extern volatile __bit ACQT0 __attribute__((address(0x7E03)));


extern volatile __bit ACQT1 __attribute__((address(0x7E04)));


extern volatile __bit ACQT2 __attribute__((address(0x7E05)));


extern volatile __bit ACTD __attribute__((address(0x7DAE)));


extern volatile __bit ACTEN __attribute__((address(0x7DAF)));


extern volatile __bit ACTIE __attribute__((address(0x7CEF)));


extern volatile __bit ACTIF __attribute__((address(0x7CF7)));


extern volatile __bit ACTIP __attribute__((address(0x7CFF)));


extern volatile __bit ACTLOCK __attribute__((address(0x7DAB)));


extern volatile __bit ACTMD __attribute__((address(0x7BF4)));


extern volatile __bit ACTOR __attribute__((address(0x7DA9)));


extern volatile __bit ACTORS __attribute__((address(0x7DA9)));


extern volatile __bit ACTSEL __attribute__((address(0x7DAF)));


extern volatile __bit ACTSRC __attribute__((address(0x7DAC)));


extern volatile __bit ACTUD __attribute__((address(0x7DAE)));


extern volatile __bit ACTVIE __attribute__((address(0x7B22)));


extern volatile __bit ACTVIF __attribute__((address(0x7B2A)));


extern volatile __bit ADCMD __attribute__((address(0x7BFA)));


extern volatile __bit ADCS0 __attribute__((address(0x7E00)));


extern volatile __bit ADCS1 __attribute__((address(0x7E01)));


extern volatile __bit ADCS2 __attribute__((address(0x7E02)));


extern volatile __bit ADDEN __attribute__((address(0x7D5B)));


extern volatile __bit ADDR0 __attribute__((address(0x7B18)));


extern volatile __bit ADDR1 __attribute__((address(0x7B19)));


extern volatile __bit ADDR2 __attribute__((address(0x7B1A)));


extern volatile __bit ADDR3 __attribute__((address(0x7B1B)));


extern volatile __bit ADDR4 __attribute__((address(0x7B1C)));


extern volatile __bit ADDR5 __attribute__((address(0x7B1D)));


extern volatile __bit ADDR6 __attribute__((address(0x7B1E)));


extern volatile __bit ADEN __attribute__((address(0x7D5B)));


extern volatile __bit ADFM __attribute__((address(0x7E07)));


extern volatile __bit ADIE __attribute__((address(0x7CEE)));


extern volatile __bit ADIF __attribute__((address(0x7CF6)));


extern volatile __bit ADIP __attribute__((address(0x7CFE)));


extern volatile __bit ADMSK1 __attribute__((address(0x7E29)));


extern volatile __bit ADMSK11 __attribute__((address(0x7E29)));


extern volatile __bit ADMSK2 __attribute__((address(0x7E2A)));


extern volatile __bit ADMSK21 __attribute__((address(0x7E2A)));


extern volatile __bit ADMSK3 __attribute__((address(0x7E2B)));


extern volatile __bit ADMSK31 __attribute__((address(0x7E2B)));


extern volatile __bit ADMSK4 __attribute__((address(0x7E2C)));


extern volatile __bit ADMSK41 __attribute__((address(0x7E2C)));


extern volatile __bit ADMSK5 __attribute__((address(0x7E2D)));


extern volatile __bit ADMSK51 __attribute__((address(0x7E2D)));


extern volatile __bit ADON __attribute__((address(0x7E10)));


extern volatile __bit AHEN __attribute__((address(0x7E59)));


extern volatile __bit AN0 __attribute__((address(0x7C00)));


extern volatile __bit AN1 __attribute__((address(0x7C01)));


extern volatile __bit AN2 __attribute__((address(0x7C02)));


extern volatile __bit AN3 __attribute__((address(0x7C03)));


extern volatile __bit AN4 __attribute__((address(0x7C05)));


extern volatile __bit ANSA0 __attribute__((address(0x7AD8)));


extern volatile __bit ANSA1 __attribute__((address(0x7AD9)));


extern volatile __bit ANSA2 __attribute__((address(0x7ADA)));


extern volatile __bit ANSA3 __attribute__((address(0x7ADB)));


extern volatile __bit ANSA5 __attribute__((address(0x7ADD)));


extern volatile __bit ANSB0 __attribute__((address(0x7AE0)));


extern volatile __bit ANSB1 __attribute__((address(0x7AE1)));


extern volatile __bit ANSB2 __attribute__((address(0x7AE2)));


extern volatile __bit ANSB3 __attribute__((address(0x7AE3)));


extern volatile __bit ANSB4 __attribute__((address(0x7AE4)));


extern volatile __bit ANSB5 __attribute__((address(0x7AE5)));


extern volatile __bit ANSC2 __attribute__((address(0x7AEA)));


extern volatile __bit ANSC6 __attribute__((address(0x7AEE)));


extern volatile __bit ANSC7 __attribute__((address(0x7AEF)));


extern volatile __bit ANSD0 __attribute__((address(0x7AF0)));


extern volatile __bit ANSD1 __attribute__((address(0x7AF1)));


extern volatile __bit ANSD2 __attribute__((address(0x7AF2)));


extern volatile __bit ANSD3 __attribute__((address(0x7AF3)));


extern volatile __bit ANSD4 __attribute__((address(0x7AF4)));


extern volatile __bit ANSD5 __attribute__((address(0x7AF5)));


extern volatile __bit ANSD6 __attribute__((address(0x7AF6)));


extern volatile __bit ANSD7 __attribute__((address(0x7AF7)));


extern volatile __bit ANSE0 __attribute__((address(0x7AF8)));


extern volatile __bit ANSE1 __attribute__((address(0x7AF9)));


extern volatile __bit ANSE2 __attribute__((address(0x7AFA)));


extern volatile __bit BCL1IE __attribute__((address(0x7D03)));


extern volatile __bit BCL1IF __attribute__((address(0x7D0B)));


extern volatile __bit BCL1IP __attribute__((address(0x7D13)));


extern volatile __bit BCLIE __attribute__((address(0x7D03)));


extern volatile __bit BCLIF __attribute__((address(0x7D0B)));


extern volatile __bit BCLIP __attribute__((address(0x7D13)));


extern volatile __bit BF __attribute__((address(0x7E38)));


extern volatile __bit BF1 __attribute__((address(0x7E38)));


extern volatile __bit BGVST __attribute__((address(0x7CE6)));


extern volatile __bit BOEN __attribute__((address(0x7E5C)));


extern volatile __bit BOR __attribute__((address(0x7E80)));


extern volatile __bit BRG0 __attribute__((address(0x7D78)));


extern volatile __bit BRG1 __attribute__((address(0x7D79)));


extern volatile __bit BRG10 __attribute__((address(0x7D82)));


extern volatile __bit BRG11 __attribute__((address(0x7D83)));


extern volatile __bit BRG12 __attribute__((address(0x7D84)));


extern volatile __bit BRG13 __attribute__((address(0x7D85)));


extern volatile __bit BRG14 __attribute__((address(0x7D86)));


extern volatile __bit BRG15 __attribute__((address(0x7D87)));


extern volatile __bit BRG16 __attribute__((address(0x7DC3)));


extern volatile __bit BRG161 __attribute__((address(0x7DC3)));


extern volatile __bit BRG2 __attribute__((address(0x7D7A)));


extern volatile __bit BRG3 __attribute__((address(0x7D7B)));


extern volatile __bit BRG4 __attribute__((address(0x7D7C)));


extern volatile __bit BRG5 __attribute__((address(0x7D7D)));


extern volatile __bit BRG6 __attribute__((address(0x7D7E)));


extern volatile __bit BRG7 __attribute__((address(0x7D7F)));


extern volatile __bit BRG8 __attribute__((address(0x7D80)));


extern volatile __bit BRG9 __attribute__((address(0x7D81)));


extern volatile __bit BRGH __attribute__((address(0x7D62)));


extern volatile __bit BRGH1 __attribute__((address(0x7D62)));


extern volatile __bit BTOEE __attribute__((address(0x7B34)));


extern volatile __bit BTOEF __attribute__((address(0x7B3C)));


extern volatile __bit BTSEE __attribute__((address(0x7B37)));


extern volatile __bit BTSEF __attribute__((address(0x7B3F)));


extern volatile __bit C1CH0 __attribute__((address(0x7CC0)));


extern volatile __bit C1CH1 __attribute__((address(0x7CC1)));


extern volatile __bit C1HYS __attribute__((address(0x7CD3)));


extern volatile __bit C1IE __attribute__((address(0x7D06)));


extern volatile __bit C1IF __attribute__((address(0x7D0E)));


extern volatile __bit C1IP __attribute__((address(0x7D16)));


extern volatile __bit C1OE __attribute__((address(0x7CC5)));


extern volatile __bit C1ON __attribute__((address(0x7CC7)));


extern volatile __bit C1OUT __attribute__((address(0x7CC6)));


extern volatile __bit C1POL __attribute__((address(0x7CC4)));


extern volatile __bit C1R __attribute__((address(0x7CC2)));


extern volatile __bit C1RSEL __attribute__((address(0x7CD5)));


extern volatile __bit C1SP __attribute__((address(0x7CC3)));


extern volatile __bit C1SYNC __attribute__((address(0x7CD1)));


extern volatile __bit C1TSEL __attribute__((address(0x7AC8)));


extern volatile __bit C2CH0 __attribute__((address(0x7CC8)));


extern volatile __bit C2CH1 __attribute__((address(0x7CC9)));


extern volatile __bit C2HYS __attribute__((address(0x7CD2)));


extern volatile __bit C2IE __attribute__((address(0x7D05)));


extern volatile __bit C2IF __attribute__((address(0x7D0D)));


extern volatile __bit C2IP __attribute__((address(0x7D15)));


extern volatile __bit C2OE __attribute__((address(0x7CCD)));


extern volatile __bit C2ON __attribute__((address(0x7CCF)));


extern volatile __bit C2OUT __attribute__((address(0x7CCE)));


extern volatile __bit C2POL __attribute__((address(0x7CCC)));


extern volatile __bit C2R __attribute__((address(0x7CCA)));


extern volatile __bit C2RSEL __attribute__((address(0x7CD4)));


extern volatile __bit C2SP __attribute__((address(0x7CCB)));


extern volatile __bit C2SYNC __attribute__((address(0x7CD0)));


extern volatile __bit C2TSEL __attribute__((address(0x7ACB)));


extern volatile __bit CARRY __attribute__((address(0x7EC0)));


extern volatile __bit CCP1 __attribute__((address(0x7C12)));


extern volatile __bit CCP10 __attribute__((address(0x7C22)));


extern volatile __bit CCP1ASE __attribute__((address(0x7DB7)));


extern volatile __bit CCP1IE __attribute__((address(0x7CEA)));


extern volatile __bit CCP1IF __attribute__((address(0x7CF2)));


extern volatile __bit CCP1IP __attribute__((address(0x7CFA)));


extern volatile __bit CCP1M0 __attribute__((address(0x7DE8)));


extern volatile __bit CCP1M1 __attribute__((address(0x7DE9)));


extern volatile __bit CCP1M2 __attribute__((address(0x7DEA)));


extern volatile __bit CCP1M3 __attribute__((address(0x7DEB)));


extern volatile __bit CCP1MD __attribute__((address(0x7BF8)));


extern volatile __bit CCP1X __attribute__((address(0x7DED)));


extern volatile __bit CCP1Y __attribute__((address(0x7DEC)));


extern volatile __bit CCP2 __attribute__((address(0x7C11)));


extern volatile __bit CCP2IE __attribute__((address(0x7D00)));


extern volatile __bit CCP2IF __attribute__((address(0x7D08)));


extern volatile __bit CCP2IP __attribute__((address(0x7D10)));


extern volatile __bit CCP2M0 __attribute__((address(0x7CB8)));


extern volatile __bit CCP2M1 __attribute__((address(0x7CB9)));


extern volatile __bit CCP2M2 __attribute__((address(0x7CBA)));


extern volatile __bit CCP2M3 __attribute__((address(0x7CBB)));


extern volatile __bit CCP2MD __attribute__((address(0x7BF9)));


extern volatile __bit CCP2X __attribute__((address(0x7CBD)));


extern volatile __bit CCP2Y __attribute__((address(0x7CBC)));


extern volatile __bit CCP2_PA2 __attribute__((address(0x7C0B)));


extern volatile __bit CCP9E __attribute__((address(0x7C23)));


extern volatile __bit CFGS __attribute__((address(0x7D36)));


extern volatile __bit CHSN3 __attribute__((address(0x7E0B)));


extern volatile __bit CK __attribute__((address(0x7C16)));


extern volatile __bit CK1SPP __attribute__((address(0x7C20)));


extern volatile __bit CK2SPP __attribute__((address(0x7C21)));


extern volatile __bit CKE __attribute__((address(0x7E3E)));


extern volatile __bit CKE1 __attribute__((address(0x7E3E)));


extern volatile __bit CKP __attribute__((address(0x7E34)));


extern volatile __bit CKP1 __attribute__((address(0x7E34)));


extern volatile __bit CKTXP __attribute__((address(0x7DC4)));


extern volatile __bit CM1IE __attribute__((address(0x7D06)));


extern volatile __bit CM1IF __attribute__((address(0x7D0E)));


extern volatile __bit CM1IP __attribute__((address(0x7D16)));


extern volatile __bit CM2IE __attribute__((address(0x7D05)));


extern volatile __bit CM2IF __attribute__((address(0x7D0D)));


extern volatile __bit CM2IP __attribute__((address(0x7D15)));


extern volatile __bit CMIE __attribute__((address(0x7D06)));


extern volatile __bit CMIF __attribute__((address(0x7D0E)));


extern volatile __bit CMIP __attribute__((address(0x7D16)));


extern volatile __bit CMP1MD __attribute__((address(0x7BFB)));


extern volatile __bit CMP2MD __attribute__((address(0x7BFC)));


extern volatile __bit COUT1 __attribute__((address(0x7CC6)));


extern volatile __bit COUT2 __attribute__((address(0x7CCE)));


extern volatile __bit CRC16EE __attribute__((address(0x7B32)));


extern volatile __bit CRC16EF __attribute__((address(0x7B3A)));


extern volatile __bit CRC5EE __attribute__((address(0x7B31)));


extern volatile __bit CRC5EF __attribute__((address(0x7B39)));


extern volatile __bit CREN __attribute__((address(0x7D5C)));


extern volatile __bit CS __attribute__((address(0x7C22)));


extern volatile __bit CSRC __attribute__((address(0x7D67)));


extern volatile __bit CSRC1 __attribute__((address(0x7D67)));


extern volatile __bit CTMUEN __attribute__((address(0x7C7F)));


extern volatile __bit CTMUIE __attribute__((address(0x7D1B)));


extern volatile __bit CTMUIF __attribute__((address(0x7D23)));


extern volatile __bit CTMUIP __attribute__((address(0x7D2B)));


extern volatile __bit CTMUMD __attribute__((address(0x7BFD)));


extern volatile __bit CTMUSIDL __attribute__((address(0x7C7D)));


extern volatile __bit CTTRIG __attribute__((address(0x7C78)));


extern volatile __bit DA __attribute__((address(0x7E3D)));


extern volatile __bit DA1 __attribute__((address(0x7E3D)));


extern volatile __bit DACEN __attribute__((address(0x7BE7)));


extern volatile __bit DACLPS __attribute__((address(0x7BE6)));


extern volatile __bit DACNSS __attribute__((address(0x7BE0)));


extern volatile __bit DACOE __attribute__((address(0x7BE5)));


extern volatile __bit DACPSS0 __attribute__((address(0x7BE2)));


extern volatile __bit DACPSS1 __attribute__((address(0x7BE3)));


extern volatile __bit DACR0 __attribute__((address(0x7BD8)));


extern volatile __bit DACR1 __attribute__((address(0x7BD9)));


extern volatile __bit DACR2 __attribute__((address(0x7BDA)));


extern volatile __bit DACR3 __attribute__((address(0x7BDB)));


extern volatile __bit DACR4 __attribute__((address(0x7BDC)));


extern volatile __bit DATA_ADDRESS __attribute__((address(0x7E3D)));


extern volatile __bit DC __attribute__((address(0x7EC1)));


extern volatile __bit DC1B0 __attribute__((address(0x7DEC)));


extern volatile __bit DC1B1 __attribute__((address(0x7DED)));


extern volatile __bit DC2B0 __attribute__((address(0x7CBC)));


extern volatile __bit DC2B1 __attribute__((address(0x7CBD)));


extern volatile __bit DFN8EE __attribute__((address(0x7B33)));


extern volatile __bit DFN8EF __attribute__((address(0x7B3B)));


extern volatile __bit DHEN __attribute__((address(0x7E58)));


extern volatile __bit DIR __attribute__((address(0x7B0A)));


extern volatile __bit DONE __attribute__((address(0x7E11)));


extern volatile __bit DT __attribute__((address(0x7C17)));


extern volatile __bit DTRXP __attribute__((address(0x7DC5)));


extern volatile __bit DTRXP1 __attribute__((address(0x7DC5)));


extern volatile __bit D_A __attribute__((address(0x7E3D)));


extern volatile __bit D_NOT_A __attribute__((address(0x7E3D)));


extern volatile __bit D_nA __attribute__((address(0x7E3D)));


extern volatile __bit ECCP1AS0 __attribute__((address(0x7DB4)));


extern volatile __bit ECCP1AS1 __attribute__((address(0x7DB5)));


extern volatile __bit ECCP1AS2 __attribute__((address(0x7DB6)));


extern volatile __bit ECCP1ASE __attribute__((address(0x7DB7)));


extern volatile __bit EDG1POL __attribute__((address(0x7C74)));


extern volatile __bit EDG1SEL0 __attribute__((address(0x7C72)));


extern volatile __bit EDG1SEL1 __attribute__((address(0x7C73)));


extern volatile __bit EDG1STAT __attribute__((address(0x7C70)));


extern volatile __bit EDG2POL __attribute__((address(0x7C77)));


extern volatile __bit EDG2SEL0 __attribute__((address(0x7C75)));


extern volatile __bit EDG2SEL1 __attribute__((address(0x7C76)));


extern volatile __bit EDG2STAT __attribute__((address(0x7C71)));


extern volatile __bit EDGEN __attribute__((address(0x7C7B)));


extern volatile __bit EDGSEQEN __attribute__((address(0x7C7A)));


extern volatile __bit EEFS __attribute__((address(0x7D36)));


extern volatile __bit EEIE __attribute__((address(0x7D04)));


extern volatile __bit EEIF __attribute__((address(0x7D0C)));


extern volatile __bit EEIP __attribute__((address(0x7D14)));


extern volatile __bit EEPGD __attribute__((address(0x7D37)));


extern volatile __bit EMBMD __attribute__((address(0x7BF8)));


extern volatile __bit ENDP0 __attribute__((address(0x7B0B)));


extern volatile __bit ENDP1 __attribute__((address(0x7B0C)));


extern volatile __bit ENDP2 __attribute__((address(0x7B0D)));


extern volatile __bit ENDP3 __attribute__((address(0x7B0E)));


extern volatile __bit EP0CONDIS __attribute__((address(0x7B53)));


extern volatile __bit EP0HSHK __attribute__((address(0x7B54)));


extern volatile __bit EP0INEN __attribute__((address(0x7B51)));


extern volatile __bit EP0OUTEN __attribute__((address(0x7B52)));


extern volatile __bit EP0STALL __attribute__((address(0x7B50)));


extern volatile __bit EP1CONDIS __attribute__((address(0x7B5B)));


extern volatile __bit EP1HSHK __attribute__((address(0x7B5C)));


extern volatile __bit EP1INEN __attribute__((address(0x7B59)));


extern volatile __bit EP1OUTEN __attribute__((address(0x7B5A)));


extern volatile __bit EP1STALL __attribute__((address(0x7B58)));


extern volatile __bit EP2CONDIS __attribute__((address(0x7B63)));


extern volatile __bit EP2HSHK __attribute__((address(0x7B64)));


extern volatile __bit EP2INEN __attribute__((address(0x7B61)));


extern volatile __bit EP2OUTEN __attribute__((address(0x7B62)));


extern volatile __bit EP2STALL __attribute__((address(0x7B60)));


extern volatile __bit EP3CONDIS __attribute__((address(0x7B6B)));


extern volatile __bit EP3HSHK __attribute__((address(0x7B6C)));


extern volatile __bit EP3INEN __attribute__((address(0x7B69)));


extern volatile __bit EP3OUTEN __attribute__((address(0x7B6A)));


extern volatile __bit EP3STALL __attribute__((address(0x7B68)));


extern volatile __bit EP4CONDIS __attribute__((address(0x7B73)));


extern volatile __bit EP4HSHK __attribute__((address(0x7B74)));


extern volatile __bit EP4INEN __attribute__((address(0x7B71)));


extern volatile __bit EP4OUTEN __attribute__((address(0x7B72)));


extern volatile __bit EP4STALL __attribute__((address(0x7B70)));


extern volatile __bit EP5CONDIS __attribute__((address(0x7B7B)));


extern volatile __bit EP5HSHK __attribute__((address(0x7B7C)));


extern volatile __bit EP5INEN __attribute__((address(0x7B79)));


extern volatile __bit EP5OUTEN __attribute__((address(0x7B7A)));


extern volatile __bit EP5STALL __attribute__((address(0x7B78)));


extern volatile __bit EP6CONDIS __attribute__((address(0x7B83)));


extern volatile __bit EP6HSHK __attribute__((address(0x7B84)));


extern volatile __bit EP6INEN __attribute__((address(0x7B81)));


extern volatile __bit EP6OUTEN __attribute__((address(0x7B82)));


extern volatile __bit EP6STALL __attribute__((address(0x7B80)));


extern volatile __bit EP7CONDIS __attribute__((address(0x7B8B)));


extern volatile __bit EP7HSHK __attribute__((address(0x7B8C)));


extern volatile __bit EP7INEN __attribute__((address(0x7B89)));


extern volatile __bit EP7OUTEN __attribute__((address(0x7B8A)));


extern volatile __bit EP7STALL __attribute__((address(0x7B88)));


extern volatile __bit EPCONDIS0 __attribute__((address(0x7B53)));


extern volatile __bit EPCONDIS1 __attribute__((address(0x7B5B)));


extern volatile __bit EPCONDIS10 __attribute__((address(0x7BA3)));


extern volatile __bit EPCONDIS11 __attribute__((address(0x7BAB)));


extern volatile __bit EPCONDIS12 __attribute__((address(0x7BB3)));


extern volatile __bit EPCONDIS13 __attribute__((address(0x7BBB)));


extern volatile __bit EPCONDIS14 __attribute__((address(0x7BC3)));


extern volatile __bit EPCONDIS15 __attribute__((address(0x7BCB)));


extern volatile __bit EPCONDIS2 __attribute__((address(0x7B63)));


extern volatile __bit EPCONDIS3 __attribute__((address(0x7B6B)));


extern volatile __bit EPCONDIS4 __attribute__((address(0x7B73)));


extern volatile __bit EPCONDIS5 __attribute__((address(0x7B7B)));


extern volatile __bit EPCONDIS6 __attribute__((address(0x7B83)));


extern volatile __bit EPCONDIS7 __attribute__((address(0x7B8B)));


extern volatile __bit EPCONDIS8 __attribute__((address(0x7B93)));


extern volatile __bit EPCONDIS9 __attribute__((address(0x7B9B)));


extern volatile __bit EPHSHK0 __attribute__((address(0x7B54)));


extern volatile __bit EPHSHK1 __attribute__((address(0x7B5C)));


extern volatile __bit EPHSHK10 __attribute__((address(0x7BA4)));


extern volatile __bit EPHSHK11 __attribute__((address(0x7BAC)));


extern volatile __bit EPHSHK12 __attribute__((address(0x7BB4)));


extern volatile __bit EPHSHK13 __attribute__((address(0x7BBC)));


extern volatile __bit EPHSHK14 __attribute__((address(0x7BC4)));


extern volatile __bit EPHSHK15 __attribute__((address(0x7BCC)));


extern volatile __bit EPHSHK2 __attribute__((address(0x7B64)));


extern volatile __bit EPHSHK3 __attribute__((address(0x7B6C)));


extern volatile __bit EPHSHK4 __attribute__((address(0x7B74)));


extern volatile __bit EPHSHK5 __attribute__((address(0x7B7C)));


extern volatile __bit EPHSHK6 __attribute__((address(0x7B84)));


extern volatile __bit EPHSHK7 __attribute__((address(0x7B8C)));


extern volatile __bit EPHSHK8 __attribute__((address(0x7B94)));


extern volatile __bit EPHSHK9 __attribute__((address(0x7B9C)));


extern volatile __bit EPINEN0 __attribute__((address(0x7B51)));


extern volatile __bit EPINEN1 __attribute__((address(0x7B59)));


extern volatile __bit EPINEN10 __attribute__((address(0x7BA1)));


extern volatile __bit EPINEN11 __attribute__((address(0x7BA9)));


extern volatile __bit EPINEN12 __attribute__((address(0x7BB1)));


extern volatile __bit EPINEN13 __attribute__((address(0x7BB9)));


extern volatile __bit EPINEN14 __attribute__((address(0x7BC1)));


extern volatile __bit EPINEN15 __attribute__((address(0x7BC9)));


extern volatile __bit EPINEN2 __attribute__((address(0x7B61)));


extern volatile __bit EPINEN3 __attribute__((address(0x7B69)));


extern volatile __bit EPINEN4 __attribute__((address(0x7B71)));


extern volatile __bit EPINEN5 __attribute__((address(0x7B79)));


extern volatile __bit EPINEN6 __attribute__((address(0x7B81)));


extern volatile __bit EPINEN7 __attribute__((address(0x7B89)));


extern volatile __bit EPINEN8 __attribute__((address(0x7B91)));


extern volatile __bit EPINEN9 __attribute__((address(0x7B99)));


extern volatile __bit EPOUTEN0 __attribute__((address(0x7B52)));


extern volatile __bit EPOUTEN1 __attribute__((address(0x7B5A)));


extern volatile __bit EPOUTEN10 __attribute__((address(0x7BA2)));


extern volatile __bit EPOUTEN11 __attribute__((address(0x7BAA)));


extern volatile __bit EPOUTEN12 __attribute__((address(0x7BB2)));


extern volatile __bit EPOUTEN13 __attribute__((address(0x7BBA)));


extern volatile __bit EPOUTEN14 __attribute__((address(0x7BC2)));


extern volatile __bit EPOUTEN15 __attribute__((address(0x7BCA)));


extern volatile __bit EPOUTEN2 __attribute__((address(0x7B62)));


extern volatile __bit EPOUTEN3 __attribute__((address(0x7B6A)));


extern volatile __bit EPOUTEN4 __attribute__((address(0x7B72)));


extern volatile __bit EPOUTEN5 __attribute__((address(0x7B7A)));


extern volatile __bit EPOUTEN6 __attribute__((address(0x7B82)));


extern volatile __bit EPOUTEN7 __attribute__((address(0x7B8A)));


extern volatile __bit EPOUTEN8 __attribute__((address(0x7B92)));


extern volatile __bit EPOUTEN9 __attribute__((address(0x7B9A)));


extern volatile __bit EPSTALL0 __attribute__((address(0x7B50)));


extern volatile __bit EPSTALL1 __attribute__((address(0x7B58)));


extern volatile __bit EPSTALL10 __attribute__((address(0x7BA0)));


extern volatile __bit EPSTALL11 __attribute__((address(0x7BA8)));


extern volatile __bit EPSTALL12 __attribute__((address(0x7BB0)));


extern volatile __bit EPSTALL13 __attribute__((address(0x7BB8)));


extern volatile __bit EPSTALL14 __attribute__((address(0x7BC0)));


extern volatile __bit EPSTALL15 __attribute__((address(0x7BC8)));


extern volatile __bit EPSTALL2 __attribute__((address(0x7B60)));


extern volatile __bit EPSTALL3 __attribute__((address(0x7B68)));


extern volatile __bit EPSTALL4 __attribute__((address(0x7B70)));


extern volatile __bit EPSTALL5 __attribute__((address(0x7B78)));


extern volatile __bit EPSTALL6 __attribute__((address(0x7B80)));


extern volatile __bit EPSTALL7 __attribute__((address(0x7B88)));


extern volatile __bit EPSTALL8 __attribute__((address(0x7B90)));


extern volatile __bit EPSTALL9 __attribute__((address(0x7B98)));


extern volatile __bit FERR __attribute__((address(0x7D5A)));


extern volatile __bit FLTS __attribute__((address(0x7E9A)));


extern volatile __bit FREE __attribute__((address(0x7D34)));


extern volatile __bit FRM0 __attribute__((address(0x7B40)));


extern volatile __bit FRM1 __attribute__((address(0x7B41)));


extern volatile __bit FRM10 __attribute__((address(0x7B4A)));


extern volatile __bit FRM2 __attribute__((address(0x7B42)));


extern volatile __bit FRM3 __attribute__((address(0x7B43)));


extern volatile __bit FRM4 __attribute__((address(0x7B44)));


extern volatile __bit FRM5 __attribute__((address(0x7B45)));


extern volatile __bit FRM6 __attribute__((address(0x7B46)));


extern volatile __bit FRM7 __attribute__((address(0x7B47)));


extern volatile __bit FRM8 __attribute__((address(0x7B48)));


extern volatile __bit FRM9 __attribute__((address(0x7B49)));


extern volatile __bit FSEN __attribute__((address(0x7B12)));


extern volatile __bit FVREN __attribute__((address(0x7BEF)));


extern volatile __bit FVRS0 __attribute__((address(0x7BEC)));


extern volatile __bit FVRS1 __attribute__((address(0x7BED)));


extern volatile __bit FVRST __attribute__((address(0x7BEE)));


extern volatile __bit GCEN __attribute__((address(0x7E2F)));


extern volatile __bit GCEN1 __attribute__((address(0x7E2F)));


extern volatile __bit GIE __attribute__((address(0x7F97)));


extern volatile __bit GIEH __attribute__((address(0x7F97)));


extern volatile __bit GIEL __attribute__((address(0x7F96)));


extern volatile __bit GIE_GIEH __attribute__((address(0x7F97)));


extern volatile __bit GO __attribute__((address(0x7E11)));


extern volatile __bit GODONE __attribute__((address(0x7E11)));


extern volatile __bit GO_DONE __attribute__((address(0x7E11)));


extern volatile __bit GO_NOT_DONE __attribute__((address(0x7E11)));


extern volatile __bit GO_nDONE __attribute__((address(0x7E11)));


extern volatile __bit HFIOFR __attribute__((address(0x7E91)));


extern volatile __bit HFIOFS __attribute__((address(0x7E9A)));


extern volatile __bit HLVDEN __attribute__((address(0x7CE4)));


extern volatile __bit HLVDIE __attribute__((address(0x7D02)));


extern volatile __bit HLVDIF __attribute__((address(0x7D0A)));


extern volatile __bit HLVDIN __attribute__((address(0x7C05)));


extern volatile __bit HLVDIP __attribute__((address(0x7D12)));


extern volatile __bit HLVDL0 __attribute__((address(0x7CE0)));


extern volatile __bit HLVDL1 __attribute__((address(0x7CE1)));


extern volatile __bit HLVDL2 __attribute__((address(0x7CE2)));


extern volatile __bit HLVDL3 __attribute__((address(0x7CE3)));


extern volatile __bit I2C_DAT __attribute__((address(0x7E3D)));


extern volatile __bit I2C_READ __attribute__((address(0x7E3A)));


extern volatile __bit I2C_START __attribute__((address(0x7E3B)));


extern volatile __bit I2C_STOP __attribute__((address(0x7E3C)));


extern volatile __bit IDISSEN __attribute__((address(0x7C79)));


extern volatile __bit IDLEIE __attribute__((address(0x7B24)));


extern volatile __bit IDLEIF __attribute__((address(0x7B2C)));


extern volatile __bit IDLEN __attribute__((address(0x7E9F)));


extern volatile __bit INT0 __attribute__((address(0x7C08)));


extern volatile __bit INT0E __attribute__((address(0x7F94)));


extern volatile __bit INT0F __attribute__((address(0x7F91)));


extern volatile __bit INT0IE __attribute__((address(0x7F94)));


extern volatile __bit INT0IF __attribute__((address(0x7F91)));


extern volatile __bit INT1 __attribute__((address(0x7C09)));


extern volatile __bit INT1E __attribute__((address(0x7F83)));


extern volatile __bit INT1F __attribute__((address(0x7F80)));


extern volatile __bit INT1IE __attribute__((address(0x7F83)));


extern volatile __bit INT1IF __attribute__((address(0x7F80)));


extern volatile __bit INT1IP __attribute__((address(0x7F86)));


extern volatile __bit INT1P __attribute__((address(0x7F86)));


extern volatile __bit INT2 __attribute__((address(0x7C0A)));


extern volatile __bit INT2E __attribute__((address(0x7F84)));


extern volatile __bit INT2F __attribute__((address(0x7F81)));


extern volatile __bit INT2IE __attribute__((address(0x7F84)));


extern volatile __bit INT2IF __attribute__((address(0x7F81)));


extern volatile __bit INT2IP __attribute__((address(0x7F87)));


extern volatile __bit INT2P __attribute__((address(0x7F87)));


extern volatile __bit INTEDG0 __attribute__((address(0x7F8E)));


extern volatile __bit INTEDG1 __attribute__((address(0x7F8D)));


extern volatile __bit INTEDG2 __attribute__((address(0x7F8C)));


extern volatile __bit INTSRC __attribute__((address(0x7E95)));


extern volatile __bit IOCB4 __attribute__((address(0x7C34)));


extern volatile __bit IOCB5 __attribute__((address(0x7C35)));


extern volatile __bit IOCB6 __attribute__((address(0x7C36)));


extern volatile __bit IOCB7 __attribute__((address(0x7C37)));


extern volatile __bit IOCC0 __attribute__((address(0x7C38)));


extern volatile __bit IOCC1 __attribute__((address(0x7C39)));


extern volatile __bit IOCC2 __attribute__((address(0x7C3A)));


extern volatile __bit IOCC4 __attribute__((address(0x7C3C)));


extern volatile __bit IOCC5 __attribute__((address(0x7C3D)));


extern volatile __bit IOCC6 __attribute__((address(0x7C3E)));


extern volatile __bit IOCC7 __attribute__((address(0x7C3F)));


extern volatile __bit IOCIE __attribute__((address(0x7F93)));


extern volatile __bit IOCIF __attribute__((address(0x7F90)));


extern volatile __bit IOCIP __attribute__((address(0x7F88)));


extern volatile __bit IPEN __attribute__((address(0x7E87)));


extern volatile __bit IRCF0 __attribute__((address(0x7E9C)));


extern volatile __bit IRCF1 __attribute__((address(0x7E9D)));


extern volatile __bit IRCF2 __attribute__((address(0x7E9E)));


extern volatile __bit IRNG0 __attribute__((address(0x7C40)));


extern volatile __bit IRNG1 __attribute__((address(0x7C41)));


extern volatile __bit IRVST __attribute__((address(0x7CE5)));


extern volatile __bit ITRIM0 __attribute__((address(0x7C42)));


extern volatile __bit ITRIM1 __attribute__((address(0x7C43)));


extern volatile __bit ITRIM2 __attribute__((address(0x7C44)));


extern volatile __bit ITRIM3 __attribute__((address(0x7C45)));


extern volatile __bit ITRIM4 __attribute__((address(0x7C46)));


extern volatile __bit ITRIM5 __attribute__((address(0x7C47)));


extern volatile __bit LA0 __attribute__((address(0x7C48)));


extern volatile __bit LA1 __attribute__((address(0x7C49)));


extern volatile __bit LA2 __attribute__((address(0x7C4A)));


extern volatile __bit LA3 __attribute__((address(0x7C4B)));


extern volatile __bit LA4 __attribute__((address(0x7C4C)));


extern volatile __bit LA5 __attribute__((address(0x7C4D)));


extern volatile __bit LA6 __attribute__((address(0x7C4E)));


extern volatile __bit LA7 __attribute__((address(0x7C4F)));


extern volatile __bit LATA0 __attribute__((address(0x7C48)));


extern volatile __bit LATA1 __attribute__((address(0x7C49)));


extern volatile __bit LATA2 __attribute__((address(0x7C4A)));


extern volatile __bit LATA3 __attribute__((address(0x7C4B)));


extern volatile __bit LATA4 __attribute__((address(0x7C4C)));


extern volatile __bit LATA5 __attribute__((address(0x7C4D)));


extern volatile __bit LATA6 __attribute__((address(0x7C4E)));


extern volatile __bit LATA7 __attribute__((address(0x7C4F)));


extern volatile __bit LATB0 __attribute__((address(0x7C50)));


extern volatile __bit LATB1 __attribute__((address(0x7C51)));


extern volatile __bit LATB2 __attribute__((address(0x7C52)));


extern volatile __bit LATB3 __attribute__((address(0x7C53)));


extern volatile __bit LATB4 __attribute__((address(0x7C54)));


extern volatile __bit LATB5 __attribute__((address(0x7C55)));


extern volatile __bit LATB6 __attribute__((address(0x7C56)));


extern volatile __bit LATB7 __attribute__((address(0x7C57)));


extern volatile __bit LATC0 __attribute__((address(0x7C58)));


extern volatile __bit LATC1 __attribute__((address(0x7C59)));


extern volatile __bit LATC2 __attribute__((address(0x7C5A)));


extern volatile __bit LATC4 __attribute__((address(0x7C5C)));


extern volatile __bit LATC5 __attribute__((address(0x7C5D)));


extern volatile __bit LATC6 __attribute__((address(0x7C5E)));


extern volatile __bit LATC7 __attribute__((address(0x7C5F)));


extern volatile __bit LATD0 __attribute__((address(0x7C60)));


extern volatile __bit LATD1 __attribute__((address(0x7C61)));


extern volatile __bit LATD2 __attribute__((address(0x7C62)));


extern volatile __bit LATD3 __attribute__((address(0x7C63)));


extern volatile __bit LATD4 __attribute__((address(0x7C64)));


extern volatile __bit LATD5 __attribute__((address(0x7C65)));


extern volatile __bit LATD6 __attribute__((address(0x7C66)));


extern volatile __bit LATD7 __attribute__((address(0x7C67)));


extern volatile __bit LATE0 __attribute__((address(0x7C68)));


extern volatile __bit LATE1 __attribute__((address(0x7C69)));


extern volatile __bit LATE2 __attribute__((address(0x7C6A)));


extern volatile __bit LB0 __attribute__((address(0x7C50)));


extern volatile __bit LB1 __attribute__((address(0x7C51)));


extern volatile __bit LB2 __attribute__((address(0x7C52)));


extern volatile __bit LB3 __attribute__((address(0x7C53)));


extern volatile __bit LB4 __attribute__((address(0x7C54)));


extern volatile __bit LB5 __attribute__((address(0x7C55)));


extern volatile __bit LB6 __attribute__((address(0x7C56)));


extern volatile __bit LB7 __attribute__((address(0x7C57)));


extern volatile __bit LC0 __attribute__((address(0x7C58)));


extern volatile __bit LC1 __attribute__((address(0x7C59)));


extern volatile __bit LC2 __attribute__((address(0x7C5A)));


extern volatile __bit LC4 __attribute__((address(0x7C5C)));


extern volatile __bit LC5 __attribute__((address(0x7C5D)));


extern volatile __bit LC6 __attribute__((address(0x7C5E)));


extern volatile __bit LC7 __attribute__((address(0x7C5F)));


extern volatile __bit LD0 __attribute__((address(0x7C60)));


extern volatile __bit LD1 __attribute__((address(0x7C61)));


extern volatile __bit LD2 __attribute__((address(0x7C62)));


extern volatile __bit LD3 __attribute__((address(0x7C63)));


extern volatile __bit LD4 __attribute__((address(0x7C64)));


extern volatile __bit LD5 __attribute__((address(0x7C65)));


extern volatile __bit LD6 __attribute__((address(0x7C66)));


extern volatile __bit LD7 __attribute__((address(0x7C67)));


extern volatile __bit LE0 __attribute__((address(0x7C68)));


extern volatile __bit LE1 __attribute__((address(0x7C69)));


extern volatile __bit LE2 __attribute__((address(0x7C6A)));


extern volatile __bit LFIOFS __attribute__((address(0x7E90)));


extern volatile __bit LVDIE __attribute__((address(0x7D02)));


extern volatile __bit LVDIF __attribute__((address(0x7D0A)));


extern volatile __bit LVDIN __attribute__((address(0x7C05)));


extern volatile __bit LVDIP __attribute__((address(0x7D12)));


extern volatile __bit MC1OUT __attribute__((address(0x7CD7)));


extern volatile __bit MC2OUT __attribute__((address(0x7CD6)));


extern volatile __bit MSK0 __attribute__((address(0x7E40)));


extern volatile __bit MSK01 __attribute__((address(0x7E40)));


extern volatile __bit MSK1 __attribute__((address(0x7E41)));


extern volatile __bit MSK11 __attribute__((address(0x7E41)));


extern volatile __bit MSK2 __attribute__((address(0x7E42)));


extern volatile __bit MSK21 __attribute__((address(0x7E42)));


extern volatile __bit MSK3 __attribute__((address(0x7E43)));


extern volatile __bit MSK31 __attribute__((address(0x7E43)));


extern volatile __bit MSK4 __attribute__((address(0x7E44)));


extern volatile __bit MSK41 __attribute__((address(0x7E44)));


extern volatile __bit MSK5 __attribute__((address(0x7E45)));


extern volatile __bit MSK51 __attribute__((address(0x7E45)));


extern volatile __bit MSK6 __attribute__((address(0x7E46)));


extern volatile __bit MSK61 __attribute__((address(0x7E46)));


extern volatile __bit MSK7 __attribute__((address(0x7E47)));


extern volatile __bit MSK71 __attribute__((address(0x7E47)));


extern volatile __bit MSSP1MD __attribute__((address(0x7BFE)));


extern volatile __bit MSSPMD __attribute__((address(0x7BFE)));


extern volatile __bit NEGATIVE __attribute__((address(0x7EC4)));


extern volatile __bit NOT_A __attribute__((address(0x7E3D)));


extern volatile __bit NOT_ADDRESS __attribute__((address(0x7E3D)));


extern volatile __bit NOT_BOR __attribute__((address(0x7E80)));


extern volatile __bit NOT_DONE __attribute__((address(0x7E11)));


extern volatile __bit NOT_PD __attribute__((address(0x7E82)));


extern volatile __bit NOT_POR __attribute__((address(0x7E81)));


extern volatile __bit NOT_RBPU __attribute__((address(0x7F8F)));


extern volatile __bit NOT_RI __attribute__((address(0x7E84)));


extern volatile __bit NOT_T1DONE __attribute__((address(0x7E63)));


extern volatile __bit NOT_T1SYNC __attribute__((address(0x7E6A)));


extern volatile __bit NOT_T3DONE __attribute__((address(0x7DA3)));


extern volatile __bit NOT_T3SYNC __attribute__((address(0x7D8A)));


extern volatile __bit NOT_TO __attribute__((address(0x7E83)));


extern volatile __bit NOT_W __attribute__((address(0x7E3A)));


extern volatile __bit NOT_WRITE __attribute__((address(0x7E3A)));


extern volatile __bit NVCFG0 __attribute__((address(0x7E08)));


extern volatile __bit NVCFG1 __attribute__((address(0x7E09)));


extern volatile __bit OERR __attribute__((address(0x7D59)));


extern volatile __bit OESPP __attribute__((address(0x7C22)));


extern volatile __bit ON __attribute__((address(0x7C7F)));


extern volatile __bit OSC2 __attribute__((address(0x7C06)));


extern volatile __bit OSCFIE __attribute__((address(0x7D07)));


extern volatile __bit OSCFIF __attribute__((address(0x7D0F)));


extern volatile __bit OSCFIP __attribute__((address(0x7D17)));


extern volatile __bit OSTS __attribute__((address(0x7E9B)));


extern volatile __bit OV __attribute__((address(0x7EC3)));


extern volatile __bit OVERFLOW __attribute__((address(0x7EC3)));


extern volatile __bit P1A __attribute__((address(0x7C12)));


extern volatile __bit P1M0 __attribute__((address(0x7DEE)));


extern volatile __bit P1M1 __attribute__((address(0x7DEF)));


extern volatile __bit P1RSEN __attribute__((address(0x7DBF)));


extern volatile __bit PA1 __attribute__((address(0x7C12)));


extern volatile __bit PA2 __attribute__((address(0x7C11)));


extern volatile __bit PB2 __attribute__((address(0x7C22)));


extern volatile __bit PC2 __attribute__((address(0x7C21)));


extern volatile __bit PC3E __attribute__((address(0x7C23)));


extern volatile __bit PCIE __attribute__((address(0x7E5E)));


extern volatile __bit PD __attribute__((address(0x7E82)));


extern volatile __bit PD2 __attribute__((address(0x7C20)));


extern volatile __bit PDC0 __attribute__((address(0x7DB8)));


extern volatile __bit PDC1 __attribute__((address(0x7DB9)));


extern volatile __bit PDC2 __attribute__((address(0x7DBA)));


extern volatile __bit PDC3 __attribute__((address(0x7DBB)));


extern volatile __bit PDC4 __attribute__((address(0x7DBC)));


extern volatile __bit PDC5 __attribute__((address(0x7DBD)));


extern volatile __bit PDC6 __attribute__((address(0x7DBE)));


extern volatile __bit PEIE __attribute__((address(0x7F96)));


extern volatile __bit PEIE_GIEL __attribute__((address(0x7F96)));


extern volatile __bit PEN __attribute__((address(0x7E2A)));


extern volatile __bit PEN1 __attribute__((address(0x7E2A)));


extern volatile __bit PGC __attribute__((address(0x7C0E)));


extern volatile __bit PGD __attribute__((address(0x7C0F)));


extern volatile __bit PGM __attribute__((address(0x7C0D)));


extern volatile __bit PIDEE __attribute__((address(0x7B30)));


extern volatile __bit PIDEF __attribute__((address(0x7B38)));


extern volatile __bit PKTDIS __attribute__((address(0x7B04)));


extern volatile __bit PLLEN __attribute__((address(0x7E94)));


extern volatile __bit PLLRDY __attribute__((address(0x7E97)));


extern volatile __bit POR __attribute__((address(0x7E81)));


extern volatile __bit PPB0 __attribute__((address(0x7B10)));


extern volatile __bit PPB1 __attribute__((address(0x7B11)));


extern volatile __bit PPBI __attribute__((address(0x7B09)));


extern volatile __bit PPBRST __attribute__((address(0x7B06)));


extern volatile __bit PR1SEN __attribute__((address(0x7DBF)));


extern volatile __bit PRISD __attribute__((address(0x7E92)));


extern volatile __bit PSA __attribute__((address(0x7EAB)));


extern volatile __bit PSPIE __attribute__((address(0x7CEF)));


extern volatile __bit PSPIF __attribute__((address(0x7CF7)));


extern volatile __bit PSPIP __attribute__((address(0x7CFF)));


extern volatile __bit PSS1AC0 __attribute__((address(0x7DB2)));


extern volatile __bit PSS1AC1 __attribute__((address(0x7DB3)));


extern volatile __bit PSS1BD0 __attribute__((address(0x7DB0)));


extern volatile __bit PSS1BD1 __attribute__((address(0x7DB1)));


extern volatile __bit PSSAC0 __attribute__((address(0x7DB2)));


extern volatile __bit PSSAC1 __attribute__((address(0x7DB3)));


extern volatile __bit PSSBD0 __attribute__((address(0x7DB0)));


extern volatile __bit PSSBD1 __attribute__((address(0x7DB1)));


extern volatile __bit PVCFG0 __attribute__((address(0x7E0A)));


extern volatile __bit PVCFG1 __attribute__((address(0x7E0B)));


extern volatile __bit RBPU __attribute__((address(0x7F8F)));


extern volatile __bit RC1IE __attribute__((address(0x7CED)));


extern volatile __bit RC1IF __attribute__((address(0x7CF5)));


extern volatile __bit RC1IP __attribute__((address(0x7CFD)));


extern volatile __bit RC4 __attribute__((address(0x7C14)));


extern volatile __bit RC5 __attribute__((address(0x7C15)));


extern volatile __bit RC8_9 __attribute__((address(0x7D5E)));


extern volatile __bit RC9 __attribute__((address(0x7D5E)));


extern volatile __bit RCD8 __attribute__((address(0x7D58)));


extern volatile __bit RCEN __attribute__((address(0x7E2B)));


extern volatile __bit RCEN1 __attribute__((address(0x7E2B)));


extern volatile __bit RCIDL __attribute__((address(0x7DC6)));


extern volatile __bit RCIDL1 __attribute__((address(0x7DC6)));


extern volatile __bit RCIE __attribute__((address(0x7CED)));


extern volatile __bit RCIF __attribute__((address(0x7CF5)));


extern volatile __bit RCIP __attribute__((address(0x7CFD)));


extern volatile __bit RCMT __attribute__((address(0x7DC6)));


extern volatile __bit RCMT1 __attribute__((address(0x7DC6)));


extern volatile __bit RD __attribute__((address(0x7D30)));


extern volatile __bit RD161 __attribute__((address(0x7E6F)));


extern volatile __bit RD163 __attribute__((address(0x7D8F)));


extern volatile __bit RDE __attribute__((address(0x7C20)));


extern volatile __bit RE3 __attribute__((address(0x7C23)));


extern volatile __bit READ_WRITE __attribute__((address(0x7E3A)));


extern volatile __bit RESUME __attribute__((address(0x7B02)));


extern volatile __bit RI __attribute__((address(0x7E84)));


extern volatile __bit RJPU __attribute__((address(0x7C07)));


extern volatile __bit RSEN __attribute__((address(0x7E29)));


extern volatile __bit RSEN1 __attribute__((address(0x7E29)));


extern volatile __bit RW __attribute__((address(0x7E3A)));


extern volatile __bit RW1 __attribute__((address(0x7E3A)));


extern volatile __bit RX __attribute__((address(0x7C17)));


extern volatile __bit RX9 __attribute__((address(0x7D5E)));


extern volatile __bit RX9D __attribute__((address(0x7D58)));


extern volatile __bit RXB0IE __attribute__((address(0x7D18)));


extern volatile __bit RXB1IE __attribute__((address(0x7D19)));


extern volatile __bit RXBNIE __attribute__((address(0x7D19)));


extern volatile __bit RXBNIF __attribute__((address(0x7D21)));


extern volatile __bit RXBNIP __attribute__((address(0x7D29)));


extern volatile __bit RXCKP __attribute__((address(0x7DC5)));


extern volatile __bit RXDTP __attribute__((address(0x7DC5)));


extern volatile __bit RXDTP1 __attribute__((address(0x7DC5)));


extern volatile __bit R_NOT_W __attribute__((address(0x7E3A)));


extern volatile __bit R_W __attribute__((address(0x7E3A)));


extern volatile __bit R_nW __attribute__((address(0x7E3A)));


extern volatile __bit SBCDE __attribute__((address(0x7E5A)));


extern volatile __bit SBOREN __attribute__((address(0x7E86)));


extern volatile __bit SCIE __attribute__((address(0x7E5D)));


extern volatile __bit SCKP __attribute__((address(0x7DC4)));


extern volatile __bit SCKP1 __attribute__((address(0x7DC4)));


extern volatile __bit SCS0 __attribute__((address(0x7E98)));


extern volatile __bit SCS1 __attribute__((address(0x7E99)));


extern volatile __bit SDAHT __attribute__((address(0x7E5B)));


extern volatile __bit SE0 __attribute__((address(0x7B05)));


extern volatile __bit SEN __attribute__((address(0x7E28)));


extern volatile __bit SEN1 __attribute__((address(0x7E28)));


extern volatile __bit SENDB __attribute__((address(0x7D63)));


extern volatile __bit SENDB1 __attribute__((address(0x7D63)));


extern volatile __bit SIDL __attribute__((address(0x7C7D)));


extern volatile __bit SLRA __attribute__((address(0x7BD0)));


extern volatile __bit SLRB __attribute__((address(0x7BD1)));


extern volatile __bit SLRC __attribute__((address(0x7BD2)));


extern volatile __bit SLRD __attribute__((address(0x7BD3)));


extern volatile __bit SLRE __attribute__((address(0x7BD4)));


extern volatile __bit SMP __attribute__((address(0x7E3F)));


extern volatile __bit SMP1 __attribute__((address(0x7E3F)));


extern volatile __bit SOFIE __attribute__((address(0x7B26)));


extern volatile __bit SOFIF __attribute__((address(0x7B2E)));


extern volatile __bit SOSCEN1 __attribute__((address(0x7E6B)));


extern volatile __bit SOSCEN3 __attribute__((address(0x7D8B)));


extern volatile __bit SOSCGO __attribute__((address(0x7E93)));


extern volatile __bit SOSCRUN __attribute__((address(0x7E96)));


extern volatile __bit SP0 __attribute__((address(0x7FE0)));


extern volatile __bit SP1 __attribute__((address(0x7FE1)));


extern volatile __bit SP2 __attribute__((address(0x7FE2)));


extern volatile __bit SP3 __attribute__((address(0x7FE3)));


extern volatile __bit SP4 __attribute__((address(0x7FE4)));


extern volatile __bit SPEN __attribute__((address(0x7D5F)));


extern volatile __bit SPI1MD __attribute__((address(0x7BF1)));


extern volatile __bit SPI2MD __attribute__((address(0x7BF2)));


extern volatile __bit SPLLMULT __attribute__((address(0x7CDF)));


extern volatile __bit SPP0 __attribute__((address(0x7C18)));


extern volatile __bit SPP1 __attribute__((address(0x7C19)));


extern volatile __bit SPP2 __attribute__((address(0x7C1A)));


extern volatile __bit SPP3 __attribute__((address(0x7C1B)));


extern volatile __bit SPP4 __attribute__((address(0x7C1C)));


extern volatile __bit SPP5 __attribute__((address(0x7C1D)));


extern volatile __bit SPP6 __attribute__((address(0x7C1E)));


extern volatile __bit SPP7 __attribute__((address(0x7C1F)));


extern volatile __bit SRCLK0 __attribute__((address(0x7AC4)));


extern volatile __bit SRCLK1 __attribute__((address(0x7AC5)));


extern volatile __bit SRCLK2 __attribute__((address(0x7AC6)));


extern volatile __bit SREN __attribute__((address(0x7D5D)));


extern volatile __bit SRENA __attribute__((address(0x7D5D)));


extern volatile __bit SRLEN __attribute__((address(0x7AC7)));


extern volatile __bit SRNQEN __attribute__((address(0x7AC2)));


extern volatile __bit SRPR __attribute__((address(0x7AC0)));


extern volatile __bit SRPS __attribute__((address(0x7AC1)));


extern volatile __bit SRQEN __attribute__((address(0x7AC3)));


extern volatile __bit SRRC1E __attribute__((address(0x7AB8)));


extern volatile __bit SRRC2E __attribute__((address(0x7AB9)));


extern volatile __bit SRRCKE __attribute__((address(0x7ABA)));


extern volatile __bit SRRPE __attribute__((address(0x7ABB)));


extern volatile __bit SRSC1E __attribute__((address(0x7ABC)));


extern volatile __bit SRSC2E __attribute__((address(0x7ABD)));


extern volatile __bit SRSCKE __attribute__((address(0x7ABE)));


extern volatile __bit SRSPE __attribute__((address(0x7ABF)));


extern volatile __bit SS2 __attribute__((address(0x7C1F)));


extern volatile __bit SSP1ADD0 __attribute__((address(0x7E40)));


extern volatile __bit SSP1ADD1 __attribute__((address(0x7E41)));


extern volatile __bit SSP1ADD2 __attribute__((address(0x7E42)));


extern volatile __bit SSP1ADD3 __attribute__((address(0x7E43)));


extern volatile __bit SSP1ADD4 __attribute__((address(0x7E44)));


extern volatile __bit SSP1ADD5 __attribute__((address(0x7E45)));


extern volatile __bit SSP1ADD6 __attribute__((address(0x7E46)));


extern volatile __bit SSP1ADD7 __attribute__((address(0x7E47)));


extern volatile __bit SSP1IE __attribute__((address(0x7CEB)));


extern volatile __bit SSP1IF __attribute__((address(0x7CF3)));


extern volatile __bit SSP1IP __attribute__((address(0x7CFB)));


extern volatile __bit SSP1MD __attribute__((address(0x7BFE)));


extern volatile __bit SSP1MSK0 __attribute__((address(0x7E50)));


extern volatile __bit SSP1MSK1 __attribute__((address(0x7E51)));


extern volatile __bit SSP1MSK2 __attribute__((address(0x7E52)));


extern volatile __bit SSP1MSK3 __attribute__((address(0x7E53)));


extern volatile __bit SSP1MSK4 __attribute__((address(0x7E54)));


extern volatile __bit SSP1MSK5 __attribute__((address(0x7E55)));


extern volatile __bit SSP1MSK6 __attribute__((address(0x7E56)));


extern volatile __bit SSP1MSK7 __attribute__((address(0x7E57)));


extern volatile __bit SSPEN __attribute__((address(0x7E35)));


extern volatile __bit SSPEN1 __attribute__((address(0x7E35)));


extern volatile __bit SSPIE __attribute__((address(0x7CEB)));


extern volatile __bit SSPIF __attribute__((address(0x7CF3)));


extern volatile __bit SSPIP __attribute__((address(0x7CFB)));


extern volatile __bit SSPM0 __attribute__((address(0x7E30)));


extern volatile __bit SSPM01 __attribute__((address(0x7E30)));


extern volatile __bit SSPM1 __attribute__((address(0x7E31)));


extern volatile __bit SSPM11 __attribute__((address(0x7E31)));


extern volatile __bit SSPM2 __attribute__((address(0x7E32)));


extern volatile __bit SSPM21 __attribute__((address(0x7E32)));


extern volatile __bit SSPM3 __attribute__((address(0x7E33)));


extern volatile __bit SSPM31 __attribute__((address(0x7E33)));


extern volatile __bit SSPOV __attribute__((address(0x7E36)));


extern volatile __bit SSPOV1 __attribute__((address(0x7E36)));


extern volatile __bit STALLIE __attribute__((address(0x7B25)));


extern volatile __bit STALLIF __attribute__((address(0x7B2D)));


extern volatile __bit START __attribute__((address(0x7E3B)));


extern volatile __bit START1 __attribute__((address(0x7E3B)));


extern volatile __bit STEN __attribute__((address(0x7DAF)));


extern volatile __bit STIE __attribute__((address(0x7CEF)));


extern volatile __bit STIF __attribute__((address(0x7CF7)));


extern volatile __bit STIP __attribute__((address(0x7CFF)));


extern volatile __bit STKFUL __attribute__((address(0x7FE7)));


extern volatile __bit STKOVF __attribute__((address(0x7FE7)));


extern volatile __bit STKUNF __attribute__((address(0x7FE6)));


extern volatile __bit STLOCK __attribute__((address(0x7DAB)));


extern volatile __bit STMD __attribute__((address(0x7BF4)));


extern volatile __bit STOP __attribute__((address(0x7E3C)));


extern volatile __bit STOP1 __attribute__((address(0x7E3C)));


extern volatile __bit STOR __attribute__((address(0x7DA9)));


extern volatile __bit STR1A __attribute__((address(0x7DC8)));


extern volatile __bit STR1B __attribute__((address(0x7DC9)));


extern volatile __bit STR1C __attribute__((address(0x7DCA)));


extern volatile __bit STR1D __attribute__((address(0x7DCB)));


extern volatile __bit STR1SYNC __attribute__((address(0x7DCC)));


extern volatile __bit STRA __attribute__((address(0x7DC8)));


extern volatile __bit STRB __attribute__((address(0x7DC9)));


extern volatile __bit STRC __attribute__((address(0x7DCA)));


extern volatile __bit STRD __attribute__((address(0x7DCB)));


extern volatile __bit STRSYNC __attribute__((address(0x7DCC)));


extern volatile __bit STSRC __attribute__((address(0x7DAC)));


extern volatile __bit STUD __attribute__((address(0x7DAE)));


extern volatile __bit SUSPND __attribute__((address(0x7B01)));


extern volatile __bit SWDTE __attribute__((address(0x7E88)));


extern volatile __bit SWDTEN __attribute__((address(0x7E88)));


extern volatile __bit SYNC __attribute__((address(0x7D64)));


extern volatile __bit SYNC1 __attribute__((address(0x7D64)));


extern volatile __bit T08BIT __attribute__((address(0x7EAE)));


extern volatile __bit T0CKI __attribute__((address(0x7C04)));


extern volatile __bit T0CS __attribute__((address(0x7EAD)));


extern volatile __bit T0IE __attribute__((address(0x7F95)));


extern volatile __bit T0IF __attribute__((address(0x7F92)));


extern volatile __bit T0IP __attribute__((address(0x7F8A)));


extern volatile __bit T0PS0 __attribute__((address(0x7EA8)));


extern volatile __bit T0PS1 __attribute__((address(0x7EA9)));


extern volatile __bit T0PS2 __attribute__((address(0x7EAA)));


extern volatile __bit T0SE __attribute__((address(0x7EAC)));


extern volatile __bit T13CKI __attribute__((address(0x7C10)));


extern volatile __bit T1CKPS0 __attribute__((address(0x7E6C)));


extern volatile __bit T1CKPS1 __attribute__((address(0x7E6D)));


extern volatile __bit T1DONE __attribute__((address(0x7E63)));


extern volatile __bit T1GGO __attribute__((address(0x7E63)));


extern volatile __bit T1GGO_NOT_DONE __attribute__((address(0x7E63)));


extern volatile __bit T1GGO_NOT_T1DONE __attribute__((address(0x7E63)));


extern volatile __bit T1GGO_nDONE __attribute__((address(0x7E63)));


extern volatile __bit T1GGO_nT1DONE __attribute__((address(0x7E63)));


extern volatile __bit T1GPOL __attribute__((address(0x7E66)));


extern volatile __bit T1GSPM __attribute__((address(0x7E64)));


extern volatile __bit T1GSS0 __attribute__((address(0x7E60)));


extern volatile __bit T1GSS1 __attribute__((address(0x7E61)));


extern volatile __bit T1GTM __attribute__((address(0x7E65)));


extern volatile __bit T1GVAL __attribute__((address(0x7E62)));


extern volatile __bit T1OSCEN __attribute__((address(0x7E6B)));


extern volatile __bit T1OSI __attribute__((address(0x7C11)));


extern volatile __bit T1OSO __attribute__((address(0x7C10)));


extern volatile __bit T1RD16 __attribute__((address(0x7E69)));


extern volatile __bit T1SOSCEN __attribute__((address(0x7E6B)));


extern volatile __bit T1SYNC __attribute__((address(0x7E6A)));


extern volatile __bit T2CKPS0 __attribute__((address(0x7DD0)));


extern volatile __bit T2CKPS1 __attribute__((address(0x7DD1)));


extern volatile __bit T2OUTPS0 __attribute__((address(0x7DD3)));


extern volatile __bit T2OUTPS1 __attribute__((address(0x7DD4)));


extern volatile __bit T2OUTPS2 __attribute__((address(0x7DD5)));


extern volatile __bit T2OUTPS3 __attribute__((address(0x7DD6)));


extern volatile __bit T3CKPS0 __attribute__((address(0x7D8C)));


extern volatile __bit T3CKPS1 __attribute__((address(0x7D8D)));


extern volatile __bit T3DONE __attribute__((address(0x7DA3)));


extern volatile __bit T3GGO __attribute__((address(0x7DA3)));


extern volatile __bit T3GGO_NOT_DONE __attribute__((address(0x7DA3)));


extern volatile __bit T3GGO_NOT_T3DONE __attribute__((address(0x7DA3)));


extern volatile __bit T3GGO_nDONE __attribute__((address(0x7DA3)));


extern volatile __bit T3GGO_nT3DONE __attribute__((address(0x7DA3)));


extern volatile __bit T3GPOL __attribute__((address(0x7DA6)));


extern volatile __bit T3GSPM __attribute__((address(0x7DA4)));


extern volatile __bit T3GSS0 __attribute__((address(0x7DA0)));


extern volatile __bit T3GSS1 __attribute__((address(0x7DA1)));


extern volatile __bit T3GTM __attribute__((address(0x7DA5)));


extern volatile __bit T3GVAL __attribute__((address(0x7DA2)));


extern volatile __bit T3OSCEN __attribute__((address(0x7D8B)));


extern volatile __bit T3RD16 __attribute__((address(0x7D89)));


extern volatile __bit T3SOSCEN __attribute__((address(0x7D8B)));


extern volatile __bit T3SYNC __attribute__((address(0x7D8A)));


extern volatile __bit TGEN __attribute__((address(0x7C7C)));


extern volatile __bit TMR0IE __attribute__((address(0x7F95)));


extern volatile __bit TMR0IF __attribute__((address(0x7F92)));


extern volatile __bit TMR0IP __attribute__((address(0x7F8A)));


extern volatile __bit TMR0ON __attribute__((address(0x7EAF)));


extern volatile __bit TMR1CS0 __attribute__((address(0x7E6E)));


extern volatile __bit TMR1CS1 __attribute__((address(0x7E6F)));


extern volatile __bit TMR1GE __attribute__((address(0x7E67)));


extern volatile __bit TMR1GIE __attribute__((address(0x7D18)));


extern volatile __bit TMR1GIF __attribute__((address(0x7D20)));


extern volatile __bit TMR1GIP __attribute__((address(0x7D28)));


extern volatile __bit TMR1IE __attribute__((address(0x7CE8)));


extern volatile __bit TMR1IF __attribute__((address(0x7CF0)));


extern volatile __bit TMR1IP __attribute__((address(0x7CF8)));


extern volatile __bit TMR1MD __attribute__((address(0x7BF0)));


extern volatile __bit TMR1ON __attribute__((address(0x7E68)));


extern volatile __bit TMR2IE __attribute__((address(0x7CE9)));


extern volatile __bit TMR2IF __attribute__((address(0x7CF1)));


extern volatile __bit TMR2IP __attribute__((address(0x7CF9)));


extern volatile __bit TMR2MD __attribute__((address(0x7BF1)));


extern volatile __bit TMR2ON __attribute__((address(0x7DD2)));


extern volatile __bit TMR3CS0 __attribute__((address(0x7D8E)));


extern volatile __bit TMR3CS1 __attribute__((address(0x7D8F)));


extern volatile __bit TMR3GE __attribute__((address(0x7DA7)));


extern volatile __bit TMR3GIE __attribute__((address(0x7D19)));


extern volatile __bit TMR3GIF __attribute__((address(0x7D21)));


extern volatile __bit TMR3GIP __attribute__((address(0x7D29)));


extern volatile __bit TMR3IE __attribute__((address(0x7D01)));


extern volatile __bit TMR3IF __attribute__((address(0x7D09)));


extern volatile __bit TMR3IP __attribute__((address(0x7D11)));


extern volatile __bit TMR3MD __attribute__((address(0x7BF2)));


extern volatile __bit TMR3ON __attribute__((address(0x7D88)));


extern volatile __bit TO __attribute__((address(0x7E83)));


extern volatile __bit TRIGEN __attribute__((address(0x7C78)));


extern volatile __bit TRIGSEL __attribute__((address(0x7E0F)));


extern volatile __bit TRISA0 __attribute__((address(0x7C90)));


extern volatile __bit TRISA1 __attribute__((address(0x7C91)));


extern volatile __bit TRISA2 __attribute__((address(0x7C92)));


extern volatile __bit TRISA3 __attribute__((address(0x7C93)));


extern volatile __bit TRISA4 __attribute__((address(0x7C94)));


extern volatile __bit TRISA5 __attribute__((address(0x7C95)));


extern volatile __bit TRISA6 __attribute__((address(0x7C96)));


extern volatile __bit TRISA7 __attribute__((address(0x7C97)));


extern volatile __bit TRISB0 __attribute__((address(0x7C98)));


extern volatile __bit TRISB1 __attribute__((address(0x7C99)));


extern volatile __bit TRISB2 __attribute__((address(0x7C9A)));


extern volatile __bit TRISB3 __attribute__((address(0x7C9B)));


extern volatile __bit TRISB4 __attribute__((address(0x7C9C)));


extern volatile __bit TRISB5 __attribute__((address(0x7C9D)));


extern volatile __bit TRISB6 __attribute__((address(0x7C9E)));


extern volatile __bit TRISB7 __attribute__((address(0x7C9F)));


extern volatile __bit TRISC0 __attribute__((address(0x7CA0)));


extern volatile __bit TRISC1 __attribute__((address(0x7CA1)));


extern volatile __bit TRISC2 __attribute__((address(0x7CA2)));


extern volatile __bit TRISC4 __attribute__((address(0x7CA4)));


extern volatile __bit TRISC5 __attribute__((address(0x7CA5)));


extern volatile __bit TRISC6 __attribute__((address(0x7CA6)));


extern volatile __bit TRISC7 __attribute__((address(0x7CA7)));


extern volatile __bit TRISD0 __attribute__((address(0x7CA8)));


extern volatile __bit TRISD1 __attribute__((address(0x7CA9)));


extern volatile __bit TRISD2 __attribute__((address(0x7CAA)));


extern volatile __bit TRISD3 __attribute__((address(0x7CAB)));


extern volatile __bit TRISD4 __attribute__((address(0x7CAC)));


extern volatile __bit TRISD5 __attribute__((address(0x7CAD)));


extern volatile __bit TRISD6 __attribute__((address(0x7CAE)));


extern volatile __bit TRISD7 __attribute__((address(0x7CAF)));


extern volatile __bit TRISE0 __attribute__((address(0x7CB0)));


extern volatile __bit TRISE1 __attribute__((address(0x7CB1)));


extern volatile __bit TRISE2 __attribute__((address(0x7CB2)));


extern volatile __bit TRMT __attribute__((address(0x7D61)));


extern volatile __bit TRMT1 __attribute__((address(0x7D61)));


extern volatile __bit TRNIE __attribute__((address(0x7B23)));


extern volatile __bit TRNIF __attribute__((address(0x7B2B)));


extern volatile __bit TSEN __attribute__((address(0x7BEB)));


extern volatile __bit TSRNG __attribute__((address(0x7BEA)));


extern volatile __bit TUN0 __attribute__((address(0x7CD8)));


extern volatile __bit TUN1 __attribute__((address(0x7CD9)));


extern volatile __bit TUN2 __attribute__((address(0x7CDA)));


extern volatile __bit TUN3 __attribute__((address(0x7CDB)));


extern volatile __bit TUN4 __attribute__((address(0x7CDC)));


extern volatile __bit TUN5 __attribute__((address(0x7CDD)));


extern volatile __bit TUN6 __attribute__((address(0x7CDE)));


extern volatile __bit TX __attribute__((address(0x7C16)));


extern volatile __bit TX1IE __attribute__((address(0x7CEC)));


extern volatile __bit TX1IF __attribute__((address(0x7CF4)));


extern volatile __bit TX1IP __attribute__((address(0x7CFC)));


extern volatile __bit TX8_9 __attribute__((address(0x7D66)));


extern volatile __bit TX9 __attribute__((address(0x7D66)));


extern volatile __bit TX91 __attribute__((address(0x7D66)));


extern volatile __bit TX9D __attribute__((address(0x7D60)));


extern volatile __bit TX9D1 __attribute__((address(0x7D60)));


extern volatile __bit TXB0IE __attribute__((address(0x7D1A)));


extern volatile __bit TXB1IE __attribute__((address(0x7D1B)));


extern volatile __bit TXCKP __attribute__((address(0x7DC4)));


extern volatile __bit TXCKP1 __attribute__((address(0x7DC4)));


extern volatile __bit TXD8 __attribute__((address(0x7D60)));


extern volatile __bit TXEN __attribute__((address(0x7D65)));


extern volatile __bit TXEN1 __attribute__((address(0x7D65)));


extern volatile __bit TXIE __attribute__((address(0x7CEC)));


extern volatile __bit TXIF __attribute__((address(0x7CF4)));


extern volatile __bit TXIP __attribute__((address(0x7CFC)));


extern volatile __bit UA __attribute__((address(0x7E39)));


extern volatile __bit UA1 __attribute__((address(0x7E39)));


extern volatile __bit UART1MD __attribute__((address(0x7BF6)));


extern volatile __bit UARTMD __attribute__((address(0x7BF6)));


extern volatile __bit UERRIE __attribute__((address(0x7B21)));


extern volatile __bit UERRIF __attribute__((address(0x7B29)));


extern volatile __bit ULPWUIN __attribute__((address(0x7C00)));


extern volatile __bit UOEMON __attribute__((address(0x7B16)));


extern volatile __bit UPP0 __attribute__((address(0x7B10)));


extern volatile __bit UPP1 __attribute__((address(0x7B11)));


extern volatile __bit UPUEN __attribute__((address(0x7B14)));


extern volatile __bit URSTIE __attribute__((address(0x7B20)));


extern volatile __bit URSTIF __attribute__((address(0x7B28)));


extern volatile __bit USBEN __attribute__((address(0x7B03)));


extern volatile __bit USBIE __attribute__((address(0x7D1A)));


extern volatile __bit USBIF __attribute__((address(0x7D22)));


extern volatile __bit USBIP __attribute__((address(0x7D2A)));


extern volatile __bit USBMD __attribute__((address(0x7BF5)));


extern volatile __bit UTEYE __attribute__((address(0x7B17)));


extern volatile __bit UTRDIS __attribute__((address(0x7B13)));


extern volatile __bit VDIRMAG __attribute__((address(0x7CE7)));


extern volatile __bit VREFM __attribute__((address(0x7C02)));


extern volatile __bit VREFP __attribute__((address(0x7C03)));


extern volatile __bit W4E __attribute__((address(0x7DC1)));


extern volatile __bit WCOL __attribute__((address(0x7E37)));


extern volatile __bit WCOL1 __attribute__((address(0x7E37)));


extern volatile __bit WPUB0 __attribute__((address(0x7C28)));


extern volatile __bit WPUB1 __attribute__((address(0x7C29)));


extern volatile __bit WPUB2 __attribute__((address(0x7C2A)));


extern volatile __bit WPUB3 __attribute__((address(0x7C2B)));


extern volatile __bit WPUB4 __attribute__((address(0x7C2C)));


extern volatile __bit WPUB5 __attribute__((address(0x7C2D)));


extern volatile __bit WPUB6 __attribute__((address(0x7C2E)));


extern volatile __bit WPUB7 __attribute__((address(0x7C2F)));


extern volatile __bit WPUE3 __attribute__((address(0x7CB7)));


extern volatile __bit WR __attribute__((address(0x7D31)));


extern volatile __bit WRE __attribute__((address(0x7C21)));


extern volatile __bit WREN __attribute__((address(0x7D32)));


extern volatile __bit WRERR __attribute__((address(0x7D33)));


extern volatile __bit WUE __attribute__((address(0x7DC1)));


extern volatile __bit WUE1 __attribute__((address(0x7DC1)));


extern volatile __bit ZERO __attribute__((address(0x7EC2)));


extern volatile __bit nA __attribute__((address(0x7E3D)));


extern volatile __bit nADDRESS __attribute__((address(0x7E3D)));


extern volatile __bit nBOR __attribute__((address(0x7E80)));


extern volatile __bit nDONE __attribute__((address(0x7E11)));


extern volatile __bit nPD __attribute__((address(0x7E82)));


extern volatile __bit nPOR __attribute__((address(0x7E81)));


extern volatile __bit nRBPU __attribute__((address(0x7F8F)));


extern volatile __bit nRI __attribute__((address(0x7E84)));


extern volatile __bit nT1DONE __attribute__((address(0x7E63)));


extern volatile __bit nT1SYNC __attribute__((address(0x7E6A)));


extern volatile __bit nT3DONE __attribute__((address(0x7DA3)));


extern volatile __bit nT3SYNC __attribute__((address(0x7D8A)));


extern volatile __bit nTO __attribute__((address(0x7E83)));


extern volatile __bit nW __attribute__((address(0x7E3A)));


extern volatile __bit nWRITE __attribute__((address(0x7E3A)));
# 216 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\pic18_chip_select.h" 2 3
# 9 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\pic18.h" 2 3
# 19 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\pic18.h" 3
__attribute__((__unsupported__("The " "flash_write" " routine is no longer supported. Please use the MPLAB X MCC."))) void flash_write(const unsigned char *, unsigned int, __far unsigned char *);
__attribute__((__unsupported__("The " "EraseFlash" " routine is no longer supported. Please use the MPLAB X MCC."))) void EraseFlash(unsigned long startaddr, unsigned long endaddr);







# 1 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\errata.h" 1 3
# 28 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\pic18.h" 2 3
# 156 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\pic18.h" 3
__attribute__((__unsupported__("The " "Read_b_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) unsigned char Read_b_eep(unsigned int badd);
__attribute__((__unsupported__("The " "Busy_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) void Busy_eep(void);
__attribute__((__unsupported__("The " "Write_b_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) void Write_b_eep(unsigned int badd, unsigned char bdat);
# 192 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\pic18.h" 3
unsigned char __t1rd16on(void);
unsigned char __t3rd16on(void);
# 34 "C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC18F-K_DFP/1.5.114/xc8\\pic\\include\\xc.h" 2 3
# 74 "./cabecera.h" 2
# 1 "maincode3.c" 2



void configuro(void){
    OSCCON = 0x52;
    TRISAbits.RA0 = 1;
    ANSELAbits.ANSA0 = 1;
    TRISAbits.RA1 = 1;
    ANSELAbits.ANSA1 = 1;
    TRISB = 0x00;
    TRISD = 0x00;
    ADCON2 = 0x24;
    ADCON1 = 0x00;
    ADCON0 = 0x01;
}


void main(void){
    configuro();
    while(1){
        ADCON0 = 0x01;
        ADCON0bits.GO_DONE = 1;
        while(ADCON0bits.GO_DONE == 1);
        LATD = ADRESH;
        _delay((unsigned long)((10)*(4000000UL/4000.0)));
        ADCON0 = 0x05;
        ADCON0bits.GO_DONE = 1;
        while(ADCON0bits.GO_DONE == 1);
        LATB = ADRESH;
        _delay((unsigned long)((10)*(4000000UL/4000.0)));

    }
}
