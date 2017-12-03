
#include <avr/io.h>
#include <avr/pgmspace.h>
#include <util/delay.h>
#include <stdlib.h>
#include <stdio.h>
#include <avr/sleep.h>
#include <avr/interrupt.h>
#include <ctype.h>
#include <string.h>
//#include "lib/lcd.h"
#define var __auto_type

#define F_CPU 8000000


//set desired baud rate
#define _BAUD 57600

#include "common.h"
#include "main.h"
#include "lib/uart.h"
#include "state.h"


//calculate UBRR value
#define UBRRVAL ((F_CPU/(BAUDRATE*16UL))-1)

#define LSBFIRST 1
#define USBFIRST 0



#include "lib/neopixel.h"


#define SR_PORT PORTD
#define SR_PORT_DDR DDRD
#define SR_CLK 2
#define SR_DATA 3
#define SR_STROBE 4
#define SR_ENA 5
// how long each clock tick takes. Increase if there is a lot of capacity on line
#define SR_EDGE_DELAY_US 10

#define FAN_PORT PORTB
#define FAN_PORT_DDR DDRB
#define FAN_PORT_PIN 1

//#define DEBUG

#define SLOWSTART_DELAY_MS 5000


#define MAX_CMD_SIZE 20
volatile char serialBuffer[MAX_CMD_SIZE+1];
volatile char cmdBuffer[MAX_CMD_SIZE+1];
volatile uint8_t newCmd = 0;
volatile uint8_t serialBufferPos = 0;

void sendNeopixels() {
	cli();
	for(uint8_t i=0;i<8;i++) {
		neopixelSendByte(ledG[i]);
		neopixelSendByte(ledR[i]);
		neopixelSendByte(ledB[i]);
	}
	sei();
}



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
	for(uint8_t i=0;i<8;i++) {
		ledR[i]=1;
		ledG[i]=1;
		ledB[i]=1;
	}
	sendNeopixels();
	for(uint8_t i=0;i<8;i++) {
		shiftOut(out);
		shiftStrobe();
		ledToggle();
		out = (out<<1) + 1;
		writeByte('.');
		writeByte(i + 0x30);
		ledR[i]=10;
		ledG[i]=0;
		ledB[i]=0;
		sendNeopixels();
		_delay_ms(SLOWSTART_DELAY_MS);
	}
	writeString("\n");
}
void bootFan(void) {
	writeString("enabling fan\n");
	sbi(FAN_PORT_DDR,FAN_PORT_PIN);
	sbi(FAN_PORT,FAN_PORT_PIN);
}

void bootFanPWM(void) {
	// set TOP to 16bit
	ICR1 = 0xFFFF;

	// set PWM duty cycle (~20%(
	OCR1A = 0x0050;
	TCCR1A |= (1 << COM1A1);

	// 9bit fast pwm
	TCCR1A |= (1 << WGM11);
	TCCR1B |= (1 << WGM12);
	// START the timer with no prescaler
	TCCR1B |= (1 << CS10);

}

ISR(USART_RX_vect)
{
	var b = tolower(getByte());
//	char b = getByte();
	if (b == '\n' || b == '\r') {
		writeByte(b); // echo
		if (!serialBufferPos) { return ;}
		memcpy(cmdBuffer, serialBuffer, sizeof(cmdBuffer));
		cmdBuffer[sizeof(cmdBuffer) -1] = 0;
		serialBufferPos = 0;
		serialBuffer[0]=0;
		newCmd = 1;
		return;
	}
	if (serialBufferPos >= sizeof(cmdBuffer)) {
		writeByte('X');
		return;
		// buffer overrun, ignore rest
	}
	writeByte(b); // echo
	serialBuffer[serialBufferPos++] = b;
	serialBuffer[serialBufferPos] = 0;

	return;
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

void displayHelp() {
	writeString("\nHelp:\n");
	writeString("  H - display help:\n");
	writeString("  C - command:\n");
	writeString("    -- socket number goes 0-7 --\n");
	writeString("    C:P:0: - power-on socket 0\n");
	writeString("    C:S:0: - shut down socket 0\n");
	writeString("");
}

void invalidCmd() {
	writeString("\nInvalid cmd. Press H for help\n");
}

int main(void) {
	// setup ports
	sbi(SR_PORT_DDR,SR_CLK);
	sbi(SR_PORT_DDR,SR_DATA);
	sbi(SR_PORT_DDR,SR_STROBE);
	sbi(SR_PORT_DDR,SR_ENA);
	initUART();
	// setup neopixel
	sbi(DDRB, 4);
	// set all ports to down
	shiftOut(0b000000);
	shiftStrobe();
	// and enable
	sbi(SR_PORT,SR_ENA);
	bootFan();
	bootSequence();
	bootFanPWM();
	// enable UART interrupt
	UCSR0B |= (1 << RXCIE0);
	sei();
	PCICR |= (1 << PCIE2);     // set PCIE2 to enable PCMSK2 scan
	PCMSK2 |= (1 << PCINT16);   // set PCINT16 to trigger an interrupt on state change
	set_sleep_mode(SLEEP_MODE_IDLE);
	uint8_t ctr = 0; //todo interrupt should clock that
	uint8_t update;
	while(1) {
		sleep_enable();
		sleep_bod_disable();
		sei();
		sleep_cpu();
		sleep_disable();
		//	PCMSK2 |= (1 << PCINT16);
		if (newCmd) {
			//cli();
			runCli(cmdBuffer);
			writeByte('>');
			newCmd=0;
			update = 1;
			//sei();
		}
		if ((ctr % 128) == 1 || update == 1) {
			update = 0;
			shiftOut(out);
			shiftStrobe();
			ledToggle();
			sendNeopixels();
		}
	}
}



void badRangeError() {
	writeString("input should be in range of 0-7");
}
