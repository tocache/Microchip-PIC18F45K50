#ifndef PCF8574_LIB_H_
#define	PCF8574_LIB_H_

void MSSP_INIT(void);
void PCF8574_WR(unsigned char direccion, unsigned char dato);
void PCA9685_WR(unsigned char direccion, unsigned char registro, unsigned char dato);
unsigned char PCF8574_RD(unsigned char direccion);

#endif	/* XC_HEADER_TEMPLATE_H */