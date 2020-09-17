//
// Created by xani on 17.09.2020.
//
#include "main.h"
// 0x00 (54272) 	frequency voice 1 low byte
// 0x01 (54273) 	frequency voice 1 high byte
#define SID_V1_FREQ_WORD ((uint8_t)0x00
#define SID_V1_FREQ_LOW ((uint8_t)0x00)
#define SID_V1_FREQ_HIGH ((uint8_t)0x01
// 0x02 (54274) 	pulse wave duty cycle voice 1 low byte
#define SID_V1_DUTY_LOW  ((uint8_t)0x02
// 0x03 (54275) 	— 	pulse wave duty cycle voice 1 high byte
#define SID_V1_DUTY_HIGH_4BIT  ((uint8_t)0x03
// 0x04 (54276) 	control register voice 1
#define SID_V1_CTRL_REG   ((uint8_t)0x04)
// 	7 	6 	5 	4 	3 	2 	1 	0
// 	noise
#define SID_V1_CTRL_BIT_NOISE ((uint8_t)7)
// 	pulse
#define SID_V1_CTRL_BIT_PULSE ((uint8_t)6)
// 	sawtooth
#define SID_V1_CTRL_BIT_SAW ((uint8_t)5)
// 	triangle
#define SID_V1_CTRL_BIT_TRIANGLE ((uint8_t)4)
// 	test
#define SID_V1_CTRL_BIT_TEST ((uint8_t)3)
// 	ring modulation with voice 3
#define SID_V1_CTRL_BIT_RINGMOD ((uint8_t)2)
// 	synchronize with voice 3
#define SID_V1_CTRL_BIT_SYNC ((uint8_t)1)
// 	gate
#define SID_V1_CTRL_BIT_GATE ((uint8_t)0)
// 	7..4 	3..0
// 0x05 (54277) 	attack duration 	decay duration voice 1
#define SID_V1_AD_4bit ((uint8_t)0x05)
// 0x06 (54278) 	sustain level 	release duration
#define SID_V1_SR_4bit ((uint8_t)0x06)
// 0x07 (54279) 	frequency voice 2 low byte
// 0x08 (54280) 	frequency voice 2 high byte
// 0x09 (54281) 	pulse wave duty cycle voice 2 low byte
// 	7..4 	3..0
// 0x0a (54282) 	— 	pulse wave duty cycle voice 2 high byte
// 0x0b (54283) 	control register voice 2
// 	7 	6 	5 	4 	3 	2 	1 	0
// 	noise 	pulse 	sawtooth 	triangle 	test 	ring modulation with voice 1 	synchronize with voice 1 	gate
// 	7..4 	3..0
// 0x0c (54284) 	attack duration 	decay duration voice 2
// 0x0d (54285) 	sustain level 	release duration voice 2
// 0x0e (54286) 	frequency voice 3 low byte
// 0x0f (54287) 	frequency voice 3 high byte
// 0x10 (54288) 	pulse wave duty cycle voice 3 low byte
// 	7..4 	3..0
// 0x11 (54289) 	— 	pulse wave duty cycle voice 3 high byte
// 0x12 (54290) 	control register voice 3
// 	7 	6 	5 	4 	3 	2 	1 	0
// 	noise 	pulse 	sawtooth 	triangle 	test 	ring modulation with voice 2 	synchronize with voice 2 	gate
// 	7..4 	3..0
// 0x13 (54291) 	attack duration 	decay duration voice 3
// 0x14 (54292) 	sustain level 	release duration voice 3
// 0x15 (54293) 	— 	filter cutoff frequency low byte
// 0x16 (54294) 	filter cutoff frequency high byte
// 0x17 (54295) 	filter resonance and routing
// 	7..4 	3 	2 	1 	0
// 	filter resonance 	external input 	voice 3 	voice 2 	voice 1
// 0x18 (54296) 	filter mode and main volume control
// 	7 	6 	5 	4 	3..0
// 	mute voice 3 	high pass 	band pass 	low pass 	main volume
// 0x19 (54297) 	paddle x value (read only)
// 0x1a (54298) 	paddle y value (read only)
// 0x1b (54299) 	oscillator voice 3 (read only)
// 0x1c (54300) 	envelope voice 3 (read only)

#define SID_CTRL_NOISE    ((uint8_t)0b10000000)
#define SID_CTRL_PULSE    ((uint8_t)0b01000000)
#define SID_CTRL_SAW      ((uint8_t)0b00100000)
#define SID_CTRL_TRIANGLE ((uint8_t)0b00010000)
#define SID_CTRL_TEST     ((uint8_t)0b00001000)
#define SID_CTRL_RINGMOD  ((uint8_t)0b00000100)
#define SID_CTRL_SYNC     ((uint8_t)0b00000010)
#define SID_CTRL_GATE     ((uint8_t)0b00000001)


void sidwrite(uint8_t addr, uint8_t data) {
    // write data
    uint16_t set_bits = data << 8u;
    uint16_t reset_bits = (data ^ 0xff) << 8u;
    uint32_t bsrr = (reset_bits << 16) | set_bits;
    GPIOB->BSRR = bsrr;
    // write addr
    HAL_GPIO_WritePin(SID_A0_GPIO_Port, SID_A0_Pin, addr & 0b00000001);
    HAL_GPIO_WritePin(SID_A1_GPIO_Port, SID_A1_Pin, addr & 0b00000010);
    HAL_GPIO_WritePin(SID_A2_GPIO_Port, SID_A2_Pin, addr & 0b00000100);
    HAL_GPIO_WritePin(SID_A3_GPIO_Port, SID_A3_Pin, addr & 0b00001000);
    HAL_GPIO_WritePin(SID_A4_GPIO_Port, SID_A4_Pin, addr & 0b00010000);
    HAL_Delay(1);
    HAL_GPIO_WritePin(SID_RW_GPIO_Port, SID_RW_Pin, 0);
    HAL_GPIO_WritePin(SID_CS_GPIO_Port, SID_CS_Pin, 1);
    HAL_Delay(1);
    HAL_GPIO_WritePin(SID_RW_GPIO_Port, SID_RW_Pin, 1);
    HAL_GPIO_WritePin(SID_CS_GPIO_Port, SID_CS_Pin, 0);
};

void sidplay(void) {
    sidwrite(SID_V1_FREQ_LOW,0x01);
    sidwrite(SID_V1_CTRL_REG,SID_CTRL_SAW | SID_CTRL_GATE);
    sidwrite(SID_V1_AD_4bit, 0b01010101);
    sidwrite(SID_V1_SR_4bit, 0b10101010);
    HAL_Delay(100);
    sidwrite(SID_V1_CTRL_REG,SID_CTRL_SAW);
}
