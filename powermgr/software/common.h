#ifndef COMMON_H
#define COMMON_H
#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <avr/io.h>
#include <avr/pgmspace.h>

#define tbi(PORT,BIT)        PORT^=_BV(BIT)
#define sbi(port, bit)   (port) |= (1 << (bit))
#define cbi(port, bit)   (port) &= ~(1 << (bit))
#define gbi(port, bit)   (port) & (1 << (bit)
// 10 bit
#define FAN_REGISTER OCR1A

#endif
