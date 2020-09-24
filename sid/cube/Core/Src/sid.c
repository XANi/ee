//
// Created by xani on 17.09.2020.
//
#include "main.h"
#include "sid_notes.h"
// 0x00 (54272) 	frequency voice 1 low byte
// 0x01 (54273) 	frequency voice 1 high byte
#define SID_V1_FREQ_WORD ((uint8_t)0x00)
#define SID_V1_FREQ_LOW ((uint8_t)0x00)
#define SID_V1_FREQ_HIGH ((uint8_t)0x01)
// 0x02 (54274) 	pulse wave duty cycle voice 1 low byte
#define SID_V1_DUTY_LOW  ((uint8_t)0x02)
// 0x03 (54275) 	— 	pulse wave duty cycle voice 1 high byte
#define SID_V1_DUTY_HIGH_4BIT  ((uint8_t)0x03)
// 0x04 (54276) 	control register voice 1
#define SID_V1_CTRL_REG   ((uint8_t)0x04)
// 	7..4 	3..0
// 0x05 (54277) 	attack duration 	decay duration voice 1
#define SID_V1_AD_4bit ((uint8_t)0x05)
// 0x06 (54278) 	sustain level 	release duration
#define SID_V1_SR_4bit ((uint8_t)0x06)
// 0x07 (54279) 	frequency voice 2 low byte
// 0x08 (54280) 	frequency voice 2 high byte
#define SID_V2_FREQ_WORD ((uint8_t)0x07)
#define SID_V2_FREQ_LOW ((uint8_t)0x07)
#define SID_V2_FREQ_HIGH ((uint8_t)0x08)
// 0x09 (54281) 	pulse wave duty cycle voice 2 low byte
#define SID_V2_DUTY_LOW  ((uint8_t)0x09)
// 	7..4 	3..0
// 0x0a (54282) 	— 	pulse wave duty cycle voice 2 high byte
#define SID_V2_DUTY_HIGH_4BIT  ((uint8_t)0x0a
// 0x0b (54283) 	control register voice 2
#define SID_V2_CTRL_REG   ((uint8_t)0x0b)
// 0x0c (54284) 	attack duration 	decay duration voice 2
#define SID_V2_AD_4bit ((uint8_t)0x0c)
// 0x0d (54285) 	sustain level 	release duration voice 2
#define SID_V2_SR_4bit ((uint8_t)0x0d)
// 0x0e (54286) 	frequency voice 3 low byte
// 0x0f (54287) 	frequency voice 3 high byte
#define SID_V3_FREQ_WORD ((uint8_t)0x0e)
#define SID_V3_FREQ_LOW ((uint8_t)0x0e)
#define SID_V3_FREQ_HIGH ((uint8_t)0x0f)
// 0x10 (54288) 	pulse wave duty cycle voice 3 low byte
// 	7..4 	3..0
// 0x11 (54289) 	— 	pulse wave duty cycle voice 3 high byte
// 0x12 (54290) 	control register voice 3
// 	7 	6 	5 	4 	3 	2 	1 	0
// 	noise 	pulse 	sawtooth 	triangle 	test 	ring modulation with voice 2 	synchronize with voice 2 	gate
// 	7..4 	3..0
#define SID_V3_CTRL_REG   ((uint8_t)0x12)
// 0x13 (54291) 	attack duration 	decay duration voice 3
// 0x14 (54292) 	sustain level 	release duration voice 3
#define SID_V3_AD_4bit ((uint8_t)0x13)
// 0x0d (54285) 	sustain level 	release duration voice 2
#define SID_V3_SR_4bit ((uint8_t)0x14)
// 0x15 (54293) 	— 	filter cutoff frequency low byte
// 0x16 (54294) 	filter cutoff frequency high byte
// 0x17 (54295) 	filter resonance and routing
// 	7..4 	3 	2 	1 	0
// 	filter resonance 	external input 	voice 3 	voice 2 	voice 1
#define SID_FILTER_RES ((uint8_t)0x17)
// 0x18 (54296) 	filter mode and main volume control
#define SID_FILTER ((uint8_t)0x18)
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

void sidwait() {
    volatile uint8_t z;
    for (uint8_t i = 0; i < 1; i++) { z++; }
}


void sidwrite(uint8_t addr, uint8_t data) {
    // disable SID
    HAL_GPIO_WritePin(SID_CS_GPIO_Port, SID_CS_Pin, 1);
   // HAL_GPIO_WritePin(SID_CLOCK_GPIO_Port, SID_CLOCK_Pin, 0);
    // write data
    uint16_t set_bits = data << 8u;
    uint16_t reset_bits = (data ^ 0xff) << 8u;
    uint32_t bsrr = (reset_bits << 16) | set_bits;
    GPIOB->BSRR = bsrr;
//    HAL_GPIO_WritePin(SID_D0_GPIO_Port,SID_D0_Pin,(data & 0x00000001) > 0);
//    HAL_GPIO_WritePin(SID_D1_GPIO_Port,SID_D1_Pin,(data & 0x00000010) > 0);
//    HAL_GPIO_WritePin(SID_D2_GPIO_Port,SID_D2_Pin,(data & 0x00000100) > 0);
//    HAL_GPIO_WritePin(SID_D3_GPIO_Port,SID_D3_Pin,(data & 0x00001000) > 0);
//    HAL_GPIO_WritePin(SID_D4_GPIO_Port,SID_D4_Pin,(data & 0x00010000) > 0);
//    HAL_GPIO_WritePin(SID_D5_GPIO_Port,SID_D5_Pin,(data & 0x00100000) > 0);
//    HAL_GPIO_WritePin(SID_D6_GPIO_Port,SID_D6_Pin,(data & 0x01000000) > 0);
//    HAL_GPIO_WritePin(SID_D7_GPIO_Port,SID_D7_Pin,(data & 0x10000000) > 0);
    // write addr
    HAL_GPIO_WritePin(SID_A0_GPIO_Port, SID_A0_Pin, (addr & 0b00000001) > 0 );
    HAL_GPIO_WritePin(SID_A1_GPIO_Port, SID_A1_Pin, (addr & 0b00000010) > 0 );
    HAL_GPIO_WritePin(SID_A2_GPIO_Port, SID_A2_Pin, (addr & 0b00000100) > 0 );
    HAL_GPIO_WritePin(SID_A3_GPIO_Port, SID_A3_Pin, (addr & 0b00001000) > 0 );
    HAL_GPIO_WritePin(SID_A4_GPIO_Port, SID_A4_Pin, (addr & 0b00010000) > 0 );
    HAL_GPIO_WritePin(SID_RW_GPIO_Port, SID_RW_Pin, 0);
    sidwait();
    //HAL_GPIO_WritePin(SID_CLOCK_GPIO_Port, SID_CLOCK_Pin, 1);
    sidwait();
    HAL_GPIO_WritePin(SID_CS_GPIO_Port, SID_CS_Pin, 0);
    sidwait();
    HAL_GPIO_WritePin(SID_CS_GPIO_Port, SID_CS_Pin, 1);
    sidwait();
    HAL_GPIO_WritePin(SID_RW_GPIO_Port, SID_RW_Pin, 1);
};

void sidwrite16(uint8_t addr, uint16_t data) {
    sidwrite(addr, (uint8_t) (data & 0xff));
    sidwrite(addr+1, (uint8_t) (data >> 8));
}

void sidinit() {
    HAL_GPIO_WritePin(SID_RST_GPIO_Port,SID_RST_Pin,1);
    sidwrite(SID_FILTER, 0b00010111);
    sidwrite(SID_V1_AD_4bit, SID_DecayRelease_72ms);
    sidwrite(SID_V1_SR_4bit, 0b1000000 + SID_DecayRelease_24ms);
    sidwrite(SID_V2_AD_4bit, SID_DecayRelease_72ms);
    sidwrite(SID_V2_SR_4bit, 0b1000000 + SID_DecayRelease_24ms);
    sidwrite(SID_V3_AD_4bit, SID_DecayRelease_72ms);
    sidwrite(SID_V3_SR_4bit, 0b1000000 + SID_DecayRelease_24ms);

}
//c---D---f--D--f-f---A-G-gf
void sidplay(uint8_t v) {
    HAL_GPIO_WritePin(SID_RST_GPIO_Port,SID_RST_Pin,1);
    sidwrite(SID_FILTER_RES, 0b11110000);
    sidwrite(SID_FILTER, 0b00010111);

    sidwrite(SID_V1_AD_4bit, SID_DecayRelease_72ms);
    sidwrite(SID_V1_SR_4bit, 0b1000000 + SID_DecayRelease_24ms);
    sidwrite(SID_V2_AD_4bit, SID_DecayRelease_72ms);
    sidwrite(SID_V2_SR_4bit, 0b1000000 + SID_DecayRelease_24ms);
    sidwrite(SID_V2_AD_4bit, SID_DecayRelease_72ms);
    sidwrite(SID_V2_SR_4bit, 0b1000000 + SID_DecayRelease_24ms);
    HAL_Delay(500);

    sidwrite16(SID_V1_FREQ_LOW, SID_Midi_Notes[36]);
    sidwrite(SID_V1_CTRL_REG, SID_CTRL_SAW | SID_CTRL_GATE);

    sidwrite16(SID_V2_FREQ_LOW, SID_Midi_Notes[36+7]);
    sidwrite(SID_V2_CTRL_REG, SID_CTRL_TRIANGLE | SID_CTRL_GATE);

    HAL_Delay(100);
    sidwrite(SID_V1_CTRL_REG, SID_CTRL_SAW);
    sidwrite(SID_V2_CTRL_REG, SID_CTRL_SAW);
    HAL_Delay(100);

    sidwrite16(SID_V1_FREQ_LOW, SID_NOTE_Dh_3);
    sidwrite(SID_V1_CTRL_REG, SID_CTRL_SAW | SID_CTRL_GATE);
    sidwrite16(SID_V2_FREQ_LOW, SID_NOTE_Dh_4);
    sidwrite(SID_V2_CTRL_REG, SID_CTRL_TRIANGLE | SID_CTRL_GATE);
    HAL_Delay(100);
    sidwrite(SID_V1_CTRL_REG, SID_CTRL_SAW);
    sidwrite(SID_V2_CTRL_REG, SID_CTRL_TRIANGLE);
    HAL_Delay(100);

    sidwrite16(SID_V1_FREQ_LOW, SID_NOTE_F_3);
    sidwrite(SID_V1_CTRL_REG, SID_CTRL_SAW | SID_CTRL_GATE);
    sidwrite16(SID_V2_FREQ_LOW, SID_NOTE_F_4);
    sidwrite(SID_V2_CTRL_REG, SID_CTRL_TRIANGLE | SID_CTRL_GATE);
    HAL_Delay(70);
    sidwrite(SID_V1_CTRL_REG, SID_CTRL_SAW);
    sidwrite(SID_V2_CTRL_REG, SID_CTRL_TRIANGLE);
    HAL_Delay(70);

    sidwrite16(SID_V2_FREQ_LOW, SID_NOTE_Dh_3);
    sidwrite(SID_V2_CTRL_REG, SID_CTRL_SAW | SID_CTRL_GATE);
    HAL_Delay(70);
    sidwrite(SID_V2_CTRL_REG, SID_CTRL_SAW);
    HAL_Delay(70);

    sidwrite16(SID_V1_FREQ_LOW, SID_NOTE_F_4);
    sidwrite16(SID_V3_FREQ_LOW, SID_NOTE_F_3);
    sidwrite(SID_V1_CTRL_REG, SID_CTRL_SAW | SID_CTRL_GATE);
    sidwrite(SID_V3_CTRL_REG, SID_CTRL_SAW | SID_CTRL_GATE);
    HAL_Delay(50);
    sidwrite(SID_V3_CTRL_REG, SID_CTRL_SAW);
    sidwrite(SID_V3_CTRL_REG, SID_CTRL_SAW);
    HAL_Delay(50);

    sidwrite16(SID_V1_FREQ_LOW, SID_NOTE_F_3);
    sidwrite16(SID_V3_FREQ_LOW, SID_NOTE_F_4);
    sidwrite(SID_V1_CTRL_REG, SID_CTRL_SAW | SID_CTRL_GATE);
    sidwrite(SID_V3_CTRL_REG, SID_CTRL_SAW | SID_CTRL_GATE);
    HAL_Delay(50);
    sidwrite(SID_V1_CTRL_REG, SID_CTRL_SAW);
    sidwrite(SID_V3_CTRL_REG, SID_CTRL_SAW);
    HAL_Delay(200);

    sidwrite16(SID_V3_FREQ_LOW, SID_NOTE_Ah_3);
    sidwrite(SID_V3_CTRL_REG, SID_CTRL_SAW | SID_CTRL_GATE);
    HAL_Delay(100);
    sidwrite(SID_V3_CTRL_REG, SID_CTRL_SAW);
    HAL_Delay(100);

    sidwrite16(SID_V3_FREQ_LOW, SID_NOTE_Gh_3);
    sidwrite(SID_V3_CTRL_REG, SID_CTRL_SAW | SID_CTRL_GATE);
    HAL_Delay(100);
    sidwrite(SID_V3_CTRL_REG, SID_CTRL_SAW);
    HAL_Delay(100);

    sidwrite16(SID_V3_FREQ_LOW, SID_NOTE_G_3);
    sidwrite(SID_V3_CTRL_REG, SID_CTRL_SAW | SID_CTRL_GATE);
    HAL_Delay(50);
    sidwrite(SID_V3_CTRL_REG, SID_CTRL_SAW);
    HAL_Delay(50);

    sidwrite16(SID_V1_FREQ_LOW, SID_NOTE_F_3);
    sidwrite(SID_V1_CTRL_REG, SID_CTRL_SAW | SID_CTRL_GATE);
    HAL_Delay(50);
    sidwrite(SID_V1_CTRL_REG, SID_CTRL_SAW);
    HAL_Delay(50);

    HAL_Delay(1000);
}
void sid_note(uint8_t chan, uint8_t note, uint8_t on, uint8_t velocity) {
    if (chan == 1) {
        sidwrite16(SID_V1_FREQ_WORD, SID_Midi_Notes[note]);
        if (on > 0) {
            sidwrite(SID_V1_CTRL_REG, SID_CTRL_SAW | SID_CTRL_GATE);
        } else {
            sidwrite(SID_V1_CTRL_REG, SID_CTRL_SAW);
        }
    }
    else if (chan == 2) {
        sidwrite16(SID_V2_FREQ_WORD, SID_Midi_Notes[note]);
        if (on > 0) {
            sidwrite(SID_V2_CTRL_REG, SID_CTRL_SAW | SID_CTRL_GATE);
        } else {
            sidwrite(SID_V2_CTRL_REG, SID_CTRL_SAW);
        }
    } else if (chan == 3) {
        sidwrite16(SID_V3_FREQ_WORD, SID_Midi_Notes[note]);
        if (on > 0) {
            sidwrite(SID_V3_CTRL_REG, SID_CTRL_SAW | SID_CTRL_GATE);
        } else {
            sidwrite(SID_V3_CTRL_REG, SID_CTRL_SAW);
        }
    }
}