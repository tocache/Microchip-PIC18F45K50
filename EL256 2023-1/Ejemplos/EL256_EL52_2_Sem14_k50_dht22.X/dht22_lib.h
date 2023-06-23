#ifndef XC_HEADER_TEMPLATE_H
#define	XC_HEADER_TEMPLATE_H

#include <xc.h> // include processor files - each processor file is guarded.  

#define _XTAL_FREQ 4000000UL

void DHT22_Start(void);
void DHT22_Check(void);
unsigned char DHT22_Read(void);

#endif	/* XC_HEADER_TEMPLATE_H */