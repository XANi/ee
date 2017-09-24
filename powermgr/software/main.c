
#include <avr/io.h>
#include <avr/pgmspace.h>
#include <util/delay.h>
#include <stdlib.h>
#include <stdio.h>
#include <avr/sleep.h>
#include <avr/interrupt.h>
//#include "lib/lcd.h"

#define XTAL   16000000
#define F_CPU 16000000


//set desired baud rate
#define BAUDRATE 9600

//calculate UBRR value
#define UBRRVAL ((F_CPU/(BAUDRATE*16UL))-1)

#define LSBFIRST 1
#define USBFIRST 0


#define tbi(PORT,BIT)        PORT^=_BV(BIT)
#define sbi(port, bit)   (port) |= (1 << (bit))
#define cbi(port, bit)   (port) &= ~(1 << (bit))
#define gbi(port, bit)   (port) & (1 << (bit))


#define SR_PORT PORTD
#define SR_PORT_DDR DDRD
#define SR_CLK 2
#define SR_DATA 3
#define SR_STROBE 4
#define SR_ENA 5

#define SLOWSTART_DELAY_MS 500

void shiftOut(uint8_t data)
{
	for(uint8_t i=0;i<8;i++)
	{
		if(data & 0b10000000)
		{
			sbi(PORTD,SR_DATA);
		}
		else
		{
			cbi(PORTD,SR_DATA);
		}
		sbi(PORTD,SR_CLK);
		_delay_ms(10);
		cbi(PORTD,SR_CLK);
		_delay_ms(10);
		data=data<<1;
		
	}
}

void shiftStrobe(void) {
	sbi(SR_PORT,SR_STROBE);
	_delay_ms(1);
	cbi(SR_PORT,SR_STROBE);
	_delay_ms(1);
}
void ledToggle(void) {
	tbi(PORTB,5);
}

void bootSequence(void) {
	_delay_ms(SLOWSTART_DELAY_MS);
	shiftOut(0b00000001);
	ledToggle();
	shiftStrobe();
	_delay_ms(SLOWSTART_DELAY_MS);
	shiftOut(0b00000011);
	ledToggle();
	shiftStrobe();
	_delay_ms(SLOWSTART_DELAY_MS);
	shiftOut(0b00000111);
	ledToggle();
	shiftStrobe();
	_delay_ms(SLOWSTART_DELAY_MS);
	shiftOut(0b00001111);
	ledToggle();
	shiftStrobe();
	_delay_ms(SLOWSTART_DELAY_MS);
	shiftOut(0b00011111);
	ledToggle();
	shiftStrobe();
	_delay_ms(SLOWSTART_DELAY_MS);
	shiftOut(0b00111111);
	ledToggle();
	shiftStrobe();
	_delay_ms(SLOWSTART_DELAY_MS);
	shiftOut(0b01111111);
	ledToggle();
	shiftStrobe();
	_delay_ms(SLOWSTART_DELAY_MS);
	shiftOut(0b11111111);
	ledToggle();
	shiftStrobe();
}
int main(void) {
	// setup ports
	sbi(SR_PORT_DDR,SR_CLK);
	sbi(SR_PORT_DDR,SR_DATA);
	sbi(SR_PORT_DDR,SR_STROBE);
	sbi(SR_PORT_DDR,SR_ENA);
	
	// set all ports to down
	shiftOut(0b000000);
	shiftStrobe();
	// and enable
	sbi(SR_PORT,SR_ENA);
	bootSequence();
	while(1) {
		ledToggle();
		cbi(PORTB,5);
		// SLEEP_MODE_IDLE / SLEEP_MODE_ADC / SLEEP_MODE_PWR_SAVE / SLEEP_MODE_STANDBY / SLEEP_MODE_PWR_DOWN 
		set_sleep_mode(SLEEP_MODE_PWR_DOWN);
		sleep_enable();
		sleep_bod_disable();
		sei();
		sleep_cpu();
	}

}


