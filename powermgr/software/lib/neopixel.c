/*
 This is an example of how simple driving a Neopixel can be
 This code is optimized for understandability and changability rather than raw speed
 More info at http://wp.josh.com/2014/05/11/ws2812-neopixels-made-easy/
*/

// Change this to be at least as long as your pixel string (too long will work fine, just be a little slower)
#include <avr/io.h>
#define PIXELS 8
#define PIXEL_PORT  PORTB
#define PIXEL_DDR   DDRB
#define PIXEL_BIT 4 // Bit of the pin the pixels are connected to


// These are the timing constraints taken mostly from the WS2812 datasheets 
// These are chosen to be conservative and avoid problems rather than for maximum throughput 

#include <stdlib.h>
#include <stdio.h>
#define T1H  900    // Width of a 1 bit in ns
#define T1L  600    // Width of a 1 bit in ns

#define T0H  400    // Width of a 0 bit in ns
#define T0L  900    // Width of a 0 bit in ns

#define RES 6000    // Width of the low gap between bits to cause a frame to latch

// Here are some convience defines for using nanoseconds specs to generate actual CPU delays

#define NS_PER_SEC (1000000000L)          // Note that this has to be SIGNED since we want to be able to check for negative values of derivatives

#define CYCLES_PER_SEC (F_CPU)

#define NS_PER_CYCLE ( NS_PER_SEC / CYCLES_PER_SEC )

#define NS_TO_CYCLES(n) ( (n) / NS_PER_CYCLE )
#define bitRead(value, bit) (((value) >> (bit)) & 0x01)
#define sbi(port, bit)   (port) |= (1 << (bit))
#define cbi(port, bit)   (port) &= ~(1 << (bit))

// Actually send a bit to the string. We must to drop to asm to enusre that the complier does
// not reorder things and make it so the delay happens in the wrong place.

volatile extern inline void neopixelSendBit( uint8_t bitVal ) {

	if (  bitVal ) {				// 0 bit

		asm volatile (
			"sbi %[port], %[bit] \n\t"				// Set the output bit
			".rept %[onCycles] \n\t"                                // Execute NOPs to delay exactly the specified number of cycles
			"nop \n\t"
			".endr \n\t"
			"cbi %[port], %[bit] \n\t"                              // Clear the output bit
			".rept %[offCycles] \n\t"                               // Execute NOPs to delay exactly the specified number of cycles
			"nop \n\t"
			".endr \n\t"
			::
			 [port]		"I" (_SFR_IO_ADDR(PIXEL_PORT)),
			 [bit]		"I" (PIXEL_BIT),
			 [onCycles]	"I" (NS_TO_CYCLES(T1H) - 2),		// 1-bit width less overhead  for the actual bit setting, note that this delay could be longer and everything would still work
			 [offCycles] 	"I" (NS_TO_CYCLES(T1L) - 2)			// Minimum interbit delay. Note that we probably don't need this at all since the loop overhead will be enough, but here for correctness

			);

	} else {					// 1 bit

		// **************************************************************************
		// This line is really the only tight goldilocks timing in the whole program!
		// **************************************************************************


		asm volatile (
			"sbi %[port], %[bit] \n\t"				// Set the output bit
			".rept %[onCycles] \n\t"				// Now timing actually matters. The 0-bit must be long enough to be detected but not too long or it will be a 1-bit
			"nop \n\t"                                              // Execute NOPs to delay exactly the specified number of cycles
			".endr \n\t"
			"cbi %[port], %[bit] \n\t"                              // Clear the output bit
			".rept %[offCycles] \n\t"                               // Execute NOPs to delay exactly the specified number of cycles
			"nop \n\t"
			".endr \n\t"
			::
			 [port]		"I" (_SFR_IO_ADDR(PIXEL_PORT)),
			 [bit]		"I" (PIXEL_BIT),
			 [onCycles]	"I" (NS_TO_CYCLES(T0H) - 2),
			 [offCycles]	"I" (NS_TO_CYCLES(T0L) - 2)

			);

	}

	// Note that the inter-bit gap can be as long as you want as long as it doesn't exceed the 5us reset timeout (which is A long time)
	// Here I have been generous and not tried to squeeze the gap tight but instead erred on the side of lots of extra time.
	// This has thenice side effect of avoid glitches on very long strings becuase


}

extern inline void neopixelSendByte( unsigned char byte ) {
	for( unsigned char bit = 0 ; bit < 8 ; bit++ ) {
		neopixelSendBit( bitRead( byte , 7 ) );  // Neopixel wants bit in highest-to-lowest order
		// so send highest bit (bit #7 in an 8-bit byte since they start at 0)
		byte <<= 1; // and then shift left so bit 6 moves into 7, 5 moves into 6, etc
	}
}
