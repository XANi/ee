//=========================================================
// src/InitDevice.c: generated by Hardware Configurator
//
// This file will be regenerated when saving a document.
// leave the sections inside the "$[...]" comment tags alone
// or they will be overwritten!
//=========================================================

// USER INCLUDES
#include "InitDevice.h"

// USER PROTOTYPES
// USER FUNCTIONS

// $[Library includes]
#include "em_system.h"
#include "em_emu.h"
#include "em_cmu.h"
#include "em_device.h"
#include "em_chip.h"
#include "em_assert.h"
#include "em_gpio.h"
// [Library includes]$

//==============================================================================
// enter_DefaultMode_from_RESET
//==============================================================================
extern void enter_DefaultMode_from_RESET(void) {
	// $[Config Calls]
	CMU_enter_DefaultMode_from_RESET();
	PORTIO_enter_DefaultMode_from_RESET();
	// [Config Calls]$

}

//================================================================================
// HFXO_enter_DefaultMode_from_RESET
//================================================================================
extern void HFXO_enter_DefaultMode_from_RESET(void) {

	// $[HFXO]
	// [HFXO]$

}

//================================================================================
// LFXO_enter_DefaultMode_from_RESET
//================================================================================
extern void LFXO_enter_DefaultMode_from_RESET(void) {

	// $[Use oscillator source]
	// [Use oscillator source]$

	// $[LFXO Boost Percent]
	// [LFXO Boost Percent]$

	// $[REDLFXO Boost]
	// [REDLFXO Boost]$

}

//================================================================================
// CMU_enter_DefaultMode_from_RESET
//================================================================================
extern void CMU_enter_DefaultMode_from_RESET(void) {

	// $[LFXO enable]
	// [LFXO enable]$

	// $[HFXO enable]
	// [HFXO enable]$

	// $[LFACLK Setup]
	// [LFACLK Setup]$

	// $[High Frequency Clock select]
	/* Using HFRCO at 14MHz as high frequency clock, HFCLK */
	CMU_ClockSelectSet(cmuClock_HF, cmuSelect_HFRCO);

	/* Enable peripheral clock */
	CMU_ClockEnable(cmuClock_HFPER, true);

	// [High Frequency Clock select]$

	// $[LF clock tree setup]
	/* No LF peripherals enabled */
	// [LF clock tree setup]$
	// $[Peripheral Clock enables]
	/* Enable clock for GPIO by default */
	CMU_ClockEnable(cmuClock_GPIO, true);

	// [Peripheral Clock enables]$

}

//================================================================================
// ADC0_enter_DefaultMode_from_RESET
//================================================================================
extern void ADC0_enter_DefaultMode_from_RESET(void) {

	// $[ADC_Init]
	// [ADC_Init]$

	// $[ADC_InitSingle]
	// [ADC_InitSingle]$

	// $[ADC_InitScan]
	// [ADC_InitScan]$

}

//================================================================================
// ACMP0_enter_DefaultMode_from_RESET
//================================================================================
extern void ACMP0_enter_DefaultMode_from_RESET(void) {

	// $[ACMP Initialization]
	// [ACMP Initialization]$

	// $[ACMP Channel config]
	// [ACMP Channel config]$

}

//================================================================================
// IDAC0_enter_DefaultMode_from_RESET
//================================================================================
extern void IDAC0_enter_DefaultMode_from_RESET(void) {

	// $[IDAC Initialization]
	// [IDAC Initialization]$

	// $[IDAC optional configurations]
	// [IDAC optional configurations]$

	// $[IDAC enable]
	// [IDAC enable]$

}

//================================================================================
// RTC_enter_DefaultMode_from_RESET
//================================================================================
extern void RTC_enter_DefaultMode_from_RESET(void) {

	// $[RTC_Init]
	// [RTC_Init]$

}

//================================================================================
// USART0_enter_DefaultMode_from_RESET
//================================================================================
extern void USART0_enter_DefaultMode_from_RESET(void) {

	// $[USART_InitAsync]
	// [USART_InitAsync]$

	// $[USART_InitSync]
	// [USART_InitSync]$

	// $[USART_InitPrsTrigger]
	// [USART_InitPrsTrigger]$

}

//================================================================================
// USART1_enter_DefaultMode_from_RESET
//================================================================================
extern void USART1_enter_DefaultMode_from_RESET(void) {

	// $[USART_InitAsync]
	// [USART_InitAsync]$

	// $[USART_InitSync]
	// [USART_InitSync]$

	// $[USART_InitPrsTrigger]
	// [USART_InitPrsTrigger]$

}

//================================================================================
// LEUART0_enter_DefaultMode_from_RESET
//================================================================================
extern void LEUART0_enter_DefaultMode_from_RESET(void) {

	// $[LEUART0 initialization]
	// [LEUART0 initialization]$

}

//================================================================================
// VCMP_enter_DefaultMode_from_RESET
//================================================================================
extern void VCMP_enter_DefaultMode_from_RESET(void) {

	// $[VCMP_Init]
	// [VCMP_Init]$

}

//================================================================================
// WDOG_enter_DefaultMode_from_RESET
//================================================================================
extern void WDOG_enter_DefaultMode_from_RESET(void) {

	// $[CMU_ClockEnable]
	// [CMU_ClockEnable]$

	// $[CMU_OscillatorEnable]
	// [CMU_OscillatorEnable]$

	// $[WDOG_Init]
	// [WDOG_Init]$

}

//================================================================================
// I2C0_enter_DefaultMode_from_RESET
//================================================================================
extern void I2C0_enter_DefaultMode_from_RESET(void) {

	// $[I2C0 initialization]
	// [I2C0 initialization]$

}

//================================================================================
// TIMER0_enter_DefaultMode_from_RESET
//================================================================================
extern void TIMER0_enter_DefaultMode_from_RESET(void) {

	// $[TIMER0 initialization]
	// [TIMER0 initialization]$

	// $[TIMER0 CC0 init]
	// [TIMER0 CC0 init]$

	// $[TIMER0 CC1 init]
	// [TIMER0 CC1 init]$

	// $[TIMER0 CC2 init]
	// [TIMER0 CC2 init]$

	// $[TIMER0 DTI init]
	// [TIMER0 DTI init]$

}

//================================================================================
// TIMER1_enter_DefaultMode_from_RESET
//================================================================================
extern void TIMER1_enter_DefaultMode_from_RESET(void) {

	// $[TIMER1 initialization]
	// [TIMER1 initialization]$

	// $[TIMER1 CC0 init]
	// [TIMER1 CC0 init]$

	// $[TIMER1 CC1 init]
	// [TIMER1 CC1 init]$

	// $[TIMER1 CC2 init]
	// [TIMER1 CC2 init]$

}

//================================================================================
// PCNT0_enter_DefaultMode_from_RESET
//================================================================================
extern void PCNT0_enter_DefaultMode_from_RESET(void) {

	// $[PCNT0 initialization]
	// [PCNT0 initialization]$

}

//================================================================================
// PRS_enter_DefaultMode_from_RESET
//================================================================================
extern void PRS_enter_DefaultMode_from_RESET(void) {

	// $[PRS initialization]
	// [PRS initialization]$

}

//================================================================================
// PORTIO_enter_DefaultMode_from_RESET
//================================================================================
extern void PORTIO_enter_DefaultMode_from_RESET(void) {

	// $[Port A Configuration]
	// [Port A Configuration]$

	// $[Port B Configuration]

	/* Pin PB7 is configured to Push-pull */
	GPIO->P[1].MODEL = (GPIO->P[1].MODEL & ~_GPIO_P_MODEL_MODE7_MASK)
			| GPIO_P_MODEL_MODE7_PUSHPULL;

	/* Pin PB8 is configured to Input enabled */
	GPIO->P[1].MODEH = (GPIO->P[1].MODEH & ~_GPIO_P_MODEH_MODE8_MASK)
			| GPIO_P_MODEH_MODE8_INPUT;

	/* Pin PB13 is configured to Push-pull */
	GPIO->P[1].MODEH = (GPIO->P[1].MODEH & ~_GPIO_P_MODEH_MODE13_MASK)
			| GPIO_P_MODEH_MODE13_PUSHPULL;

	/* Pin PB14 is configured to Push-pull */
	GPIO->P[1].MODEH = (GPIO->P[1].MODEH & ~_GPIO_P_MODEH_MODE14_MASK)
			| GPIO_P_MODEH_MODE14_PUSHPULL;
	// [Port B Configuration]$

	// $[Port C Configuration]

	/* Pin PC0 is configured to Open-drain with pull-up and filter */
	GPIO->P[2].MODEL = (GPIO->P[2].MODEL & ~_GPIO_P_MODEL_MODE0_MASK)
			| GPIO_P_MODEL_MODE0_WIREDANDPULLUPFILTER;

	/* Pin PC1 is configured to Open-drain with pull-up and filter */
	GPIO->P[2].MODEL = (GPIO->P[2].MODEL & ~_GPIO_P_MODEL_MODE1_MASK)
			| GPIO_P_MODEL_MODE1_WIREDANDPULLUPFILTER;

	/* Pin PC2 is configured to Input enabled */
	GPIO->P[2].MODEL = (GPIO->P[2].MODEL & ~_GPIO_P_MODEL_MODE2_MASK)
			| GPIO_P_MODEL_MODE2_INPUT;

	/* Pin PC3 is configured to Push-pull */
	GPIO->P[2].MODEL = (GPIO->P[2].MODEL & ~_GPIO_P_MODEL_MODE3_MASK)
			| GPIO_P_MODEL_MODE3_PUSHPULL;
	// [Port C Configuration]$

	// $[Port D Configuration]

	/* Pin PD6 is configured to Input enabled */
	GPIO->P[3].MODEL = (GPIO->P[3].MODEL & ~_GPIO_P_MODEL_MODE6_MASK)
			| GPIO_P_MODEL_MODE6_INPUT;

	/* Pin PD7 is configured to Push-pull */
	GPIO->P[3].MODEL = (GPIO->P[3].MODEL & ~_GPIO_P_MODEL_MODE7_MASK)
			| GPIO_P_MODEL_MODE7_PUSHPULL;
	// [Port D Configuration]$

	// $[Port E Configuration]
	// [Port E Configuration]$

	// $[Port F Configuration]
	// [Port F Configuration]$

	// $[Route Configuration]
	// [Route Configuration]$

}

