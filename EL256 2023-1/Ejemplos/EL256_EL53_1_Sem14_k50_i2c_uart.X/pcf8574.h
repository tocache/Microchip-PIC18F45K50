#ifndef PCF8574_LIB_H_
#define	PCF8574_LIB_H_

void pcf8574_init(void);
void pcf8574_write(unsigned char direccion, unsigned char dato);
unsigned char pcf8574_read(unsigned char direccion);

#endif	/* XC_HEADER_TEMPLATE_H */