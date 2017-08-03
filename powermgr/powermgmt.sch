EESchema Schematic File Version 2
LIBS:cmos4000
LIBS:battery_management
LIBS:diode
LIBS:cmos_ieee
LIBS:74xgxx
LIBS:74xx
LIBS:switches
LIBS:linear
LIBS:maxim
LIBS:Symbols_ICs-Diskrete_RevD10
LIBS:conn
LIBS:diode-inc-ic
LIBS:powerint
LIBS:power
LIBS:leds
LIBS:ir
LIBS:bbd
LIBS:brooktre
LIBS:contrib
LIBS:cypress
LIBS:ac-dc
LIBS:actel
LIBS:adc-dac
LIBS:allegro
LIBS:Altera
LIBS:analog_devices
LIBS:analog_switches
LIBS:atmel
LIBS:audio
LIBS:bosch
LIBS:dc-dc
LIBS:device
LIBS:digital-audio
LIBS:display
LIBS:dsp
LIBS:elec-unifil
LIBS:ESD_Protection
LIBS:ftdi
LIBS:gennum
LIBS:graphic
LIBS:hc11
LIBS:infineon
LIBS:intel
LIBS:interface
LIBS:intersil
LIBS:Lattice
LIBS:LEM
LIBS:logo
LIBS:mechanical
LIBS:memory
LIBS:microchip
LIBS:microchip_dspic33dsc
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic24mcu
LIBS:microchip_pic32mcu
LIBS:microcontrollers
LIBS:modules
LIBS:motor_drivers
LIBS:motorola
LIBS:motors
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp
LIBS:nxp_armmcu
LIBS:onsemi
LIBS:opto
LIBS:Oscillators
LIBS:philips
LIBS:Power_Management
LIBS:pspice
LIBS:references
LIBS:regul
LIBS:relays
LIBS:rfcom
LIBS:RFSolutions
LIBS:sensors
LIBS:silabs
LIBS:siliconi
LIBS:stm8
LIBS:stm32
LIBS:supertex
LIBS:texas
LIBS:transf
LIBS:transistors
LIBS:triac_thyristor
LIBS:ttl_ieee
LIBS:valves
LIBS:video
LIBS:wiznet
LIBS:Worldsemi
LIBS:Xicor
LIBS:xilinx
LIBS:zetex
LIBS:Zilog
LIBS:powermgmt-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 74HC4094_RevA_23Aug2012 IC1
U 1 1 58642F14
P 1800 1600
F 0 "IC1" H 1800 2050 50  0000 C CNN
F 1 "CD4094" H 1800 1150 50  0000 C CNN
F 2 "Housings_SSOP:TSSOP-16_4.4x5mm_Pitch0.65mm" H 1800 1600 50  0001 C CNN
F 3 "" H 1800 1600 50  0000 C CNN
	1    1800 1600
	1    0    0    -1  
$EndComp
Text GLabel 950  1550 0    60   Input ~ 0
ctrl_out0
$Sheet
S 3600 2750 1250 900 
U 5908DC66
F0 "Power out" 60
F1 "powerout.sch" 60
$EndSheet
Text GLabel 950  1650 0    60   Input ~ 0
ctrl_out1
Text GLabel 950  1750 0    60   Input ~ 0
ctrl_out2
Text GLabel 950  1850 0    60   Input ~ 0
ctrl_out3
Text GLabel 2300 1450 2    60   Input ~ 0
ctrl_out4
Text GLabel 2300 1550 2    60   Input ~ 0
ctrl_out5
Text GLabel 2300 1650 2    60   Input ~ 0
ctrl_out6
Text GLabel 2300 1750 2    60   Input ~ 0
ctrl_out7
$Comp
L GND #PWR3
U 1 1 590BB78A
P 1500 1950
F 0 "#PWR3" H 1500 1700 50  0001 C CNN
F 1 "GND" H 1500 1800 50  0000 C CNN
F 2 "" H 1500 1950 50  0001 C CNN
F 3 "" H 1500 1950 50  0001 C CNN
	1    1500 1950
	0    1    1    0   
$EndComp
$Comp
L CONN_01X06 J2
U 1 1 590BB7CA
P 2650 900
F 0 "J2" H 2650 1250 50  0000 C CNN
F 1 "OUT" V 2750 900 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06_Pitch2.54mm" H 2650 900 50  0001 C CNN
F 3 "" H 2650 900 50  0001 C CNN
	1    2650 900 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR5
U 1 1 590BB8A5
P 2400 1150
F 0 "#PWR5" H 2400 900 50  0001 C CNN
F 1 "GND" H 2400 1000 50  0000 C CNN
F 2 "" H 2400 1150 50  0001 C CNN
F 3 "" H 2400 1150 50  0001 C CNN
	1    2400 1150
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR6
U 1 1 590BB9CE
P 2450 650
F 0 "#PWR6" H 2450 500 50  0001 C CNN
F 1 "VCC" H 2450 800 50  0000 C CNN
F 2 "" H 2450 650 50  0001 C CNN
F 3 "" H 2450 650 50  0001 C CNN
	1    2450 650 
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR4
U 1 1 590BB9E6
P 2100 1250
F 0 "#PWR4" H 2100 1100 50  0001 C CNN
F 1 "VCC" H 2100 1400 50  0000 C CNN
F 2 "" H 2100 1250 50  0001 C CNN
F 3 "" H 2100 1250 50  0001 C CNN
	1    2100 1250
	0    1    1    0   
$EndComp
$Comp
L CONN_01X06 J1
U 1 1 590BBDF2
P 700 900
F 0 "J1" H 700 1250 50  0000 C CNN
F 1 "IN" V 800 900 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06_Pitch2.54mm" H 700 900 50  0001 C CNN
F 3 "" H 700 900 50  0001 C CNN
	1    700  900 
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR2
U 1 1 590BBE93
P 900 1150
F 0 "#PWR2" H 900 900 50  0001 C CNN
F 1 "GND" H 900 1000 50  0000 C CNN
F 2 "" H 900 1150 50  0001 C CNN
F 3 "" H 900 1150 50  0001 C CNN
	1    900  1150
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR1
U 1 1 590BBEBB
P 900 650
F 0 "#PWR1" H 900 500 50  0001 C CNN
F 1 "VCC" H 900 800 50  0000 C CNN
F 2 "" H 900 650 50  0001 C CNN
F 3 "" H 900 650 50  0001 C CNN
	1    900  650 
	0    1    1    0   
$EndComp
$Comp
L GND #PWR9
U 1 1 5973A1D3
P 3500 1900
F 0 "#PWR9" H 3500 1650 50  0001 C CNN
F 1 "GND" H 3500 1750 50  0000 C CNN
F 2 "" H 3500 1900 50  0001 C CNN
F 3 "" H 3500 1900 50  0001 C CNN
	1    3500 1900
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR8
U 1 1 5973A1E7
P 3500 1400
F 0 "#PWR8" H 3500 1250 50  0001 C CNN
F 1 "VCC" H 3500 1550 50  0000 C CNN
F 2 "" H 3500 1400 50  0001 C CNN
F 3 "" H 3500 1400 50  0001 C CNN
	1    3500 1400
	1    0    0    -1  
$EndComp
$Comp
L CAP C13
U 1 1 5973A488
P 3500 1650
F 0 "C13" V 3600 1800 50  0000 C CNN
F 1 "100n" V 3600 1500 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3500 1650 50  0001 C CNN
F 3 "" H 3500 1650 50  0001 C CNN
	1    3500 1650
	1    0    0    -1  
$EndComp
$Comp
L R R18
U 1 1 597F86ED
P 2950 850
F 0 "R18" V 3030 850 50  0000 C CNN
F 1 "100k" V 2950 850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2880 850 50  0001 C CNN
F 3 "" H 2950 850 50  0001 C CNN
	1    2950 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  1550 1500 1550
Wire Wire Line
	950  1650 1500 1650
Wire Wire Line
	950  1750 1500 1750
Wire Wire Line
	950  1850 1500 1850
Wire Wire Line
	2200 1950 2100 1950
Wire Wire Line
	3800 2050 3800 2150
Wire Wire Line
	2100 1450 2300 1450
Wire Wire Line
	2100 1550 2300 1550
Wire Wire Line
	2100 1650 2300 1650
Wire Wire Line
	2100 1750 2300 1750
Wire Wire Line
	900  1050 2450 1050
Wire Wire Line
	1200 1050 1200 1450
Wire Wire Line
	1200 1450 1500 1450
Wire Wire Line
	1500 1250 1500 850 
Wire Wire Line
	900  850  2450 850 
Wire Wire Line
	900  750  2450 750 
Connection ~ 1200 1050
Wire Wire Line
	900  950  1350 950 
Wire Wire Line
	1350 950  1350 1350
Wire Wire Line
	1350 1350 1500 1350
Wire Wire Line
	2200 1950 2200 950 
Wire Wire Line
	2200 950  2450 950 
Connection ~ 1500 850 
Wire Wire Line
	2100 1350 2300 1350
Wire Wire Line
	2300 1350 2300 750 
Connection ~ 2300 750 
Wire Wire Line
	2950 700  2000 700 
Wire Wire Line
	2000 700  2000 750 
Connection ~ 2000 750 
Wire Wire Line
	2400 1150 2450 1150
$Comp
L GND #PWR7
U 1 1 597F8A61
P 2950 1100
F 0 "#PWR7" H 2950 850 50  0001 C CNN
F 1 "GND" H 2950 950 50  0000 C CNN
F 2 "" H 2950 1100 50  0001 C CNN
F 3 "" H 2950 1100 50  0001 C CNN
	1    2950 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 1100 2950 1000
$EndSCHEMATC
