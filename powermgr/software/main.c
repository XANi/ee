
#include <avr/io.h>
#include <avr/pgmspace.h>
#include <util/delay.h>
#include <stdlib.h>
#include <stdio.h>
#include <avr/sleep.h>
#include <avr/interrupt.h>
//#include "lib/lcd.h"


#define F_CPU 8000000


//set desired baud rate
#define _BAUD 57600

#include "lib/uart.h"
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
// how long each clock tick takes. Increase if there is a lot of capacity on line
#define SR_EDGE_DELAY_US 10

//#define DEBUG

#define SLOWSTART_DELAY_MS 5000

static volatile int16_t ticks_till_sleep=1000;

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
		_delay_us(SR_EDGE_DELAY_US);
		cbi(PORTD,SR_CLK);
		_delay_us(SR_EDGE_DELAY_US);
		data=data<<1;
		
	}
}

void shiftStrobe(void) {
	sbi(SR_PORT,SR_STROBE);
	_delay_us(SR_EDGE_DELAY_US);
	cbi(SR_PORT,SR_STROBE);
	_delay_us(SR_EDGE_DELAY_US);
}
void ledToggle(void) {
#ifdef DEBUG
	tbi(PORTB,5);
#endif
}

void bootSequence(void) {
	writeString("Running boot sequence");
	uint8_t out = 0b00000001;
	for(uint8_t i=0;i<8;i++) {
		shiftOut(out);
		shiftStrobe();
		ledToggle();
		out = (out<<1) + 1;
		writeByte('.');
		writeByte(i + 0x30);
		_delay_ms(SLOWSTART_DELAY_MS);
	}
	writeString("\n");
}

ISR(USART_RX_vect)
{
	ticks_till_sleep=1000;
	writeString("gotcha\n");
	while(!getByte()){};
}

// this will trigger once when we get back from sleep
ISR(PCINT2_vect)
{
	//trigger once after sleep
	cli();
	PCMSK2 = 0;
	ledToggle();
	sei();


}

int main(void) {
	// setup ports
	sbi(SR_PORT_DDR,SR_CLK);
	sbi(SR_PORT_DDR,SR_DATA);
	sbi(SR_PORT_DDR,SR_STROBE);
	sbi(SR_PORT_DDR,SR_ENA);
	initUART();
	// set all ports to down
	shiftOut(0b000000);
	shiftStrobe();
	// and enable
	sbi(SR_PORT,SR_ENA);
	bootSequence();
	// enable UART interrupt
	UCSR0B |= (1 << RXCIE0);
	sei();
	PCICR |= (1 << PCIE2);     // set PCIE2 to enable PCMSK2 scan
	PCMSK2 |= (1 << PCINT16);   // set PCINT16 to trigger an interrupt on state change
	while(1) {
		// SLEEP_MODE_IDLE / SLEEP_MODE_ADC / SLEEP_MODE_PWR_SAVE / SLEEP_MODE_STANDBY / SLEEP_MODE_PWR_DOWN
		// need clock for USART
		set_sleep_mode(SLEEP_MODE_IDLE);
		sleep_enable();
		sleep_bod_disable();
		sei();
		PCMSK2 |= (1 << PCINT16);
		while (ticks_till_sleep > 0) {
			_delay_ms(1);
			--ticks_till_sleep;
		}
		writeString("going to sleep\n");
		_delay_ms(50);
		sleep_cpu();
		sleep_disable();
		writeString("\nback from sleep\n");
	}

}


