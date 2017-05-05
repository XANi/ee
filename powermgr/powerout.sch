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
Sheet 2 2
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
L AP24x1 IC2
U 1 1 5908AE3E
P 3100 950
F 0 "IC2" H 2950 1250 60  0000 C CNN
F 1 "AP24x1" H 3100 600 60  0000 C CNN
F 2 "Housings_SSOP:MSOP-8_3x3mm_Pitch0.65mm" H 3150 900 60  0001 C CNN
F 3 "" H 3150 900 60  0000 C CNN
F 4 "Diodes Incorporated" H 3100 500 60  0001 C CNN "Manufacturer"
	1    3100 950 
	1    0    0    -1  
$EndComp
Text GLabel 1650 1100 0    60   Input ~ 0
ctrl_out0
Text GLabel 3500 1100 2    60   Input ~ 0
OVERLOAD
Text Label 3650 900  0    60   ~ 0
out_pwr0
$Comp
L AP24x1 IC3
U 1 1 5908C36A
P 3100 1750
F 0 "IC3" H 2950 2050 60  0000 C CNN
F 1 "AP24x1" H 3100 1400 60  0000 C CNN
F 2 "Housings_SSOP:MSOP-8_3x3mm_Pitch0.65mm" H 3150 1700 60  0001 C CNN
F 3 "" H 3150 1700 60  0000 C CNN
F 4 "Diodes Incorporated" H 3100 1300 60  0001 C CNN "Manufacturer"
	1    3100 1750
	1    0    0    -1  
$EndComp
Text GLabel 1650 1900 0    60   Input ~ 0
ctrl_out1
Text GLabel 3500 1900 2    60   Input ~ 0
OVERLOAD
Text Label 3650 1700 0    60   ~ 0
out_pwr1
$Comp
L AP24x1 IC4
U 1 1 5908C56F
P 3100 2600
F 0 "IC4" H 2950 2900 60  0000 C CNN
F 1 "AP24x1" H 3100 2250 60  0000 C CNN
F 2 "Housings_SSOP:MSOP-8_3x3mm_Pitch0.65mm" H 3150 2550 60  0001 C CNN
F 3 "" H 3150 2550 60  0000 C CNN
F 4 "Diodes Incorporated" H 3100 2150 60  0001 C CNN "Manufacturer"
	1    3100 2600
	1    0    0    -1  
$EndComp
Text GLabel 1650 2750 0    60   Input ~ 0
ctrl_out2
Text GLabel 3500 2750 2    60   Input ~ 0
OVERLOAD
Text Label 3650 2550 0    60   ~ 0
out_pwr2
$Comp
L AP24x1 IC5
U 1 1 5908C5D1
P 3100 3400
F 0 "IC5" H 2950 3700 60  0000 C CNN
F 1 "AP24x1" H 3100 3050 60  0000 C CNN
F 2 "Housings_SSOP:MSOP-8_3x3mm_Pitch0.65mm" H 3150 3350 60  0001 C CNN
F 3 "" H 3150 3350 60  0000 C CNN
F 4 "Diodes Incorporated" H 3100 2950 60  0001 C CNN "Manufacturer"
	1    3100 3400
	1    0    0    -1  
$EndComp
Text GLabel 1650 3550 0    60   Input ~ 0
ctrl_out3
Text GLabel 3500 3550 2    60   Input ~ 0
OVERLOAD
Text Label 3650 3350 0    60   ~ 0
out_pwr3
$Comp
L AP24x1 IC6
U 1 1 5908C8C6
P 3100 4150
F 0 "IC6" H 2950 4450 60  0000 C CNN
F 1 "AP24x1" H 3100 3800 60  0000 C CNN
F 2 "Housings_SSOP:MSOP-8_3x3mm_Pitch0.65mm" H 3150 4100 60  0001 C CNN
F 3 "" H 3150 4100 60  0000 C CNN
F 4 "Diodes Incorporated" H 3100 3700 60  0001 C CNN "Manufacturer"
	1    3100 4150
	1    0    0    -1  
$EndComp
Text GLabel 1650 4300 0    60   Input ~ 0
ctrl_out4
Text GLabel 3500 4300 2    60   Input ~ 0
OVERLOAD
Text Label 3650 4100 0    60   ~ 0
out_pwr4
$Comp
L AP24x1 IC7
U 1 1 5908C8E7
P 3100 4950
F 0 "IC7" H 2950 5250 60  0000 C CNN
F 1 "AP24x1" H 3100 4600 60  0000 C CNN
F 2 "Housings_SSOP:MSOP-8_3x3mm_Pitch0.65mm" H 3150 4900 60  0001 C CNN
F 3 "" H 3150 4900 60  0000 C CNN
F 4 "Diodes Incorporated" H 3100 4500 60  0001 C CNN "Manufacturer"
	1    3100 4950
	1    0    0    -1  
$EndComp
Text GLabel 1650 5100 0    60   Input ~ 0
ctrl_out5
Text GLabel 3500 5100 2    60   Input ~ 0
OVERLOAD
Text Label 3650 4900 0    60   ~ 0
out_pwr5
$Comp
L AP24x1 IC8
U 1 1 5908C908
P 3100 5800
F 0 "IC8" H 2950 6100 60  0000 C CNN
F 1 "AP24x1" H 3100 5450 60  0000 C CNN
F 2 "Housings_SSOP:MSOP-8_3x3mm_Pitch0.65mm" H 3150 5750 60  0001 C CNN
F 3 "" H 3150 5750 60  0000 C CNN
F 4 "Diodes Incorporated" H 3100 5350 60  0001 C CNN "Manufacturer"
	1    3100 5800
	1    0    0    -1  
$EndComp
Text GLabel 1650 5950 0    60   Input ~ 0
ctrl_out6
Text GLabel 3500 5950 2    60   Input ~ 0
OVERLOAD
Text Label 3650 5750 0    60   ~ 0
out_pwr6
$Comp
L AP24x1 IC9
U 1 1 5908C929
P 3100 6600
F 0 "IC9" H 2950 6900 60  0000 C CNN
F 1 "AP24x1" H 3100 6250 60  0000 C CNN
F 2 "Housings_SSOP:MSOP-8_3x3mm_Pitch0.65mm" H 3150 6550 60  0001 C CNN
F 3 "" H 3150 6550 60  0000 C CNN
F 4 "Diodes Incorporated" H 3100 6150 60  0001 C CNN "Manufacturer"
	1    3100 6600
	1    0    0    -1  
$EndComp
Text GLabel 1650 6750 0    60   Input ~ 0
ctrl_out7
Text GLabel 3500 6750 2    60   Input ~ 0
OVERLOAD
Text Label 3650 6550 0    60   ~ 0
out_pwr7
$Comp
L CONN_01X16 P1
U 1 1 5908CEDA
P 7350 1700
F 0 "P1" H 7350 2550 50  0000 C CNN
F 1 "CONN_01X16" V 7450 1700 50  0000 C CNN
F 2 "Connectors_Phoenix:PhoenixContact_MC-G_16x3.50mm_Angled" H 7350 1700 50  0000 C CNN
F 3 "" H 7350 1700 50  0000 C CNN
	1    7350 1700
	1    0    0    -1  
$EndComp
Text Label 6850 950  2    60   ~ 0
out_pwr0
Text Label 6850 1150 2    60   ~ 0
out_pwr1
Text Label 6850 1350 2    60   ~ 0
out_pwr2
Text Label 6850 1550 2    60   ~ 0
out_pwr3
Text Label 6850 1750 2    60   ~ 0
out_pwr4
Text Label 6850 1950 2    60   ~ 0
out_pwr5
Text Label 6850 2150 2    60   ~ 0
out_pwr6
Text Label 6850 2350 2    60   ~ 0
out_pwr7
Text GLabel 6250 2850 0    60   Input ~ 0
GND
Text GLabel 2400 900  0    60   Input ~ 0
VPWR
Text GLabel 2400 1700 0    60   Input ~ 0
VPWR
Text GLabel 2400 2550 0    60   Input ~ 0
VPWR
Text GLabel 2400 3350 0    60   Input ~ 0
VPWR
Text GLabel 2400 4100 0    60   Input ~ 0
VPWR
Text GLabel 2400 4900 0    60   Input ~ 0
VPWR
Text GLabel 2400 5750 0    60   Input ~ 0
VPWR
Text GLabel 2400 6550 0    60   Input ~ 0
VPWR
$Comp
L GND #PWR07
U 1 1 5908E164
P 6650 3100
F 0 "#PWR07" H 6650 2850 50  0001 C CNN
F 1 "GND" H 6650 2950 50  0000 C CNN
F 2 "" H 6650 3100 50  0001 C CNN
F 3 "" H 6650 3100 50  0001 C CNN
	1    6650 3100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 5908E298
P 2700 3150
F 0 "#PWR08" H 2700 2900 50  0001 C CNN
F 1 "GND" H 2700 3000 50  0000 C CNN
F 2 "" H 2700 3150 50  0001 C CNN
F 3 "" H 2700 3150 50  0001 C CNN
	1    2700 3150
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR09
U 1 1 5908E35C
P 2700 3900
F 0 "#PWR09" H 2700 3650 50  0001 C CNN
F 1 "GND" H 2700 3750 50  0000 C CNN
F 2 "" H 2700 3900 50  0001 C CNN
F 3 "" H 2700 3900 50  0001 C CNN
	1    2700 3900
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR010
U 1 1 5908E706
P 2700 4700
F 0 "#PWR010" H 2700 4450 50  0001 C CNN
F 1 "GND" H 2700 4550 50  0000 C CNN
F 2 "" H 2700 4700 50  0001 C CNN
F 3 "" H 2700 4700 50  0001 C CNN
	1    2700 4700
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR011
U 1 1 5908E72C
P 2700 5550
F 0 "#PWR011" H 2700 5300 50  0001 C CNN
F 1 "GND" H 2700 5400 50  0000 C CNN
F 2 "" H 2700 5550 50  0001 C CNN
F 3 "" H 2700 5550 50  0001 C CNN
	1    2700 5550
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR012
U 1 1 5908E7A5
P 2700 6350
F 0 "#PWR012" H 2700 6100 50  0001 C CNN
F 1 "GND" H 2700 6200 50  0000 C CNN
F 2 "" H 2700 6350 50  0001 C CNN
F 3 "" H 2700 6350 50  0001 C CNN
	1    2700 6350
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR013
U 1 1 5908EAFD
P 2700 2350
F 0 "#PWR013" H 2700 2100 50  0001 C CNN
F 1 "GND" H 2700 2200 50  0000 C CNN
F 2 "" H 2700 2350 50  0001 C CNN
F 3 "" H 2700 2350 50  0001 C CNN
	1    2700 2350
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR014
U 1 1 5908EDCF
P 2700 1500
F 0 "#PWR014" H 2700 1250 50  0001 C CNN
F 1 "GND" H 2700 1350 50  0000 C CNN
F 2 "" H 2700 1500 50  0001 C CNN
F 3 "" H 2700 1500 50  0001 C CNN
	1    2700 1500
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR015
U 1 1 5908EDF5
P 2700 700
F 0 "#PWR015" H 2700 450 50  0001 C CNN
F 1 "GND" H 2700 550 50  0000 C CNN
F 2 "" H 2700 700 50  0001 C CNN
F 3 "" H 2700 700 50  0001 C CNN
	1    2700 700 
	-1   0    0    1   
$EndComp
Text Label 3650 3450 0    60   ~ 0
out_pwr3
$Comp
L CONN_01X02 J4
U 1 1 590BC6B8
P 5400 1050
F 0 "J4" H 5400 1200 50  0000 C CNN
F 1 "CONN_01X02" V 5500 1050 50  0000 C CNN
F 2 "Connectors_Phoenix:PhoenixContact_GMSTBVA-G_02x7.62mm_Vertical" H 5400 1050 50  0001 C CNN
F 3 "" H 5400 1050 50  0001 C CNN
	1    5400 1050
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 J3
U 1 1 590BC6F5
P 4700 1050
F 0 "J3" H 4700 1200 50  0000 C CNN
F 1 "CONN_01X02" V 4800 1050 50  0000 C CNN
F 2 "Connectors_Phoenix:PhoenixContact_GMSTBVA-G_02x7.62mm_Vertical" H 4700 1050 50  0001 C CNN
F 3 "" H 4700 1050 50  0001 C CNN
	1    4700 1050
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 590BC83B
P 5050 1200
F 0 "#PWR016" H 5050 950 50  0001 C CNN
F 1 "GND" H 5050 1050 50  0000 C CNN
F 2 "" H 5050 1200 50  0001 C CNN
F 3 "" H 5050 1200 50  0001 C CNN
	1    5050 1200
	1    0    0    -1  
$EndComp
Text GLabel 5050 800  1    60   Input ~ 0
VPWR
Text GLabel 5150 4450 0    60   Input ~ 0
OVERLOAD
$Comp
L 1N4001 D1
U 1 1 590BE27D
P 5700 3600
F 0 "D1" H 5700 3700 50  0000 C CNN
F 1 "1N4001" H 5700 3500 50  0000 C CNN
F 2 "LEDs:LED_0805" H 5700 3425 50  0001 C CNN
F 3 "" H 5700 3600 50  0001 C CNN
	1    5700 3600
	0    -1   -1   0   
$EndComp
Text GLabel 5850 3300 1    60   Input ~ 0
VPWR
$Comp
L R R1
U 1 1 590BE500
P 5850 3950
F 0 "R1" V 5930 3950 50  0000 C CNN
F 1 "R" V 5850 3950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5780 3950 50  0001 C CNN
F 3 "" H 5850 3950 50  0001 C CNN
	1    5850 3950
	1    0    0    -1  
$EndComp
$Comp
L 1N4001 D2
U 1 1 590BE6C6
P 6000 3600
F 0 "D2" H 6000 3700 50  0000 C CNN
F 1 "1N4001" H 6000 3500 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 6000 3425 50  0001 C CNN
F 3 "" H 6000 3600 50  0001 C CNN
	1    6000 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1650 1100 2700 1100
Wire Wire Line
	2400 900  2700 900 
Wire Wire Line
	2700 1000 2600 1000
Wire Wire Line
	2600 1000 2600 900 
Connection ~ 2600 900 
Wire Wire Line
	3500 900  3650 900 
Wire Wire Line
	3500 1000 3600 1000
Wire Wire Line
	3600 1000 3600 900 
Connection ~ 3600 900 
Wire Wire Line
	2700 800  2700 700 
Wire Wire Line
	1650 1900 2700 1900
Wire Wire Line
	2400 1700 2700 1700
Wire Wire Line
	2700 1800 2600 1800
Wire Wire Line
	2600 1800 2600 1700
Connection ~ 2600 1700
Wire Wire Line
	3500 1700 3650 1700
Wire Wire Line
	3500 1800 3600 1800
Wire Wire Line
	3600 1800 3600 1700
Connection ~ 3600 1700
Wire Wire Line
	2700 1600 2700 1500
Wire Wire Line
	1650 2750 2700 2750
Wire Wire Line
	2400 2550 2700 2550
Wire Wire Line
	2700 2650 2600 2650
Wire Wire Line
	2600 2650 2600 2550
Connection ~ 2600 2550
Wire Wire Line
	3500 2550 3650 2550
Wire Wire Line
	3500 2650 3600 2650
Wire Wire Line
	3600 2650 3600 2550
Connection ~ 3600 2550
Wire Wire Line
	2700 2450 2700 2350
Wire Wire Line
	1650 3550 2700 3550
Wire Wire Line
	2400 3350 2700 3350
Wire Wire Line
	2700 3450 2600 3450
Wire Wire Line
	2600 3450 2600 3350
Connection ~ 2600 3350
Wire Wire Line
	1650 4300 2700 4300
Wire Wire Line
	2400 4100 2700 4100
Wire Wire Line
	2700 4200 2600 4200
Wire Wire Line
	2600 4200 2600 4100
Connection ~ 2600 4100
Wire Wire Line
	3500 4100 3650 4100
Wire Wire Line
	3500 4200 3600 4200
Wire Wire Line
	3600 4200 3600 4100
Connection ~ 3600 4100
Wire Wire Line
	1650 5100 2700 5100
Wire Wire Line
	2400 4900 2700 4900
Wire Wire Line
	2700 5000 2600 5000
Wire Wire Line
	2600 5000 2600 4900
Connection ~ 2600 4900
Wire Wire Line
	3500 4900 3650 4900
Wire Wire Line
	3500 5000 3600 5000
Wire Wire Line
	3600 5000 3600 4900
Connection ~ 3600 4900
Wire Wire Line
	2700 4800 2700 4700
Wire Wire Line
	1650 5950 2700 5950
Wire Wire Line
	2400 5750 2700 5750
Wire Wire Line
	2700 5850 2600 5850
Wire Wire Line
	2600 5850 2600 5750
Connection ~ 2600 5750
Wire Wire Line
	3500 5750 3650 5750
Wire Wire Line
	3500 5850 3600 5850
Wire Wire Line
	3600 5850 3600 5750
Connection ~ 3600 5750
Wire Wire Line
	2700 5650 2700 5550
Wire Wire Line
	1650 6750 2700 6750
Wire Wire Line
	2400 6550 2700 6550
Wire Wire Line
	2700 6650 2600 6650
Wire Wire Line
	2600 6650 2600 6550
Connection ~ 2600 6550
Wire Wire Line
	3500 6550 3650 6550
Wire Wire Line
	3500 6650 3600 6650
Wire Wire Line
	3600 6650 3600 6550
Connection ~ 3600 6550
Wire Wire Line
	2700 6450 2700 6350
Wire Wire Line
	7150 1050 6950 1050
Wire Wire Line
	6950 1050 6950 2850
Wire Wire Line
	6950 1250 7150 1250
Wire Wire Line
	6950 1450 7150 1450
Connection ~ 6950 1250
Wire Wire Line
	6950 1650 7150 1650
Connection ~ 6950 1450
Wire Wire Line
	6950 1850 7150 1850
Connection ~ 6950 1650
Wire Wire Line
	6950 2050 7150 2050
Connection ~ 6950 1850
Wire Wire Line
	6950 2250 7150 2250
Connection ~ 6950 2050
Wire Wire Line
	6950 2450 7150 2450
Connection ~ 6950 2250
Connection ~ 6950 2450
Wire Wire Line
	6850 950  7150 950 
Wire Wire Line
	6850 1150 7150 1150
Wire Wire Line
	6850 1350 7150 1350
Wire Wire Line
	6850 1550 7150 1550
Wire Wire Line
	6850 1750 7150 1750
Wire Wire Line
	6850 1950 7150 1950
Wire Wire Line
	6850 2150 7150 2150
Wire Wire Line
	6850 2350 7150 2350
Wire Wire Line
	6950 2850 6250 2850
Wire Wire Line
	6650 3100 6650 2850
Connection ~ 6650 2850
Wire Wire Line
	2700 4000 2700 3900
Wire Wire Line
	2700 3250 2700 3150
Wire Wire Line
	3500 3450 3650 3450
Wire Wire Line
	3500 3350 3650 3350
Wire Wire Line
	4900 1100 5200 1100
Wire Wire Line
	4900 1000 5200 1000
Wire Wire Line
	5050 1000 5050 800 
Connection ~ 5050 1000
Wire Wire Line
	5050 1200 5050 1100
Connection ~ 5050 1100
Wire Wire Line
	5850 3450 5850 3300
Wire Wire Line
	5850 3800 5850 3750
Wire Wire Line
	5850 4100 5850 4450
Wire Wire Line
	5850 4450 5150 4450
Wire Wire Line
	5700 3450 6000 3450
Connection ~ 5850 3450
Wire Wire Line
	5700 3750 6000 3750
Connection ~ 5850 3750
$EndSCHEMATC
