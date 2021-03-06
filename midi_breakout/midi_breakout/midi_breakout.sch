EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L Connector:DIN-5_180degree MIDI_IN1
U 1 1 5F39851B
P 2525 1600
F 0 "MIDI_IN1" H 2525 1325 50  0000 C CNN
F 1 "DIN-5_180degree" H 2525 1234 50  0000 C CNN
F 2 "0_euro:DIN-5-ext" H 2525 1600 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/18/40_c091_abd_e-75918.pdf" H 2525 1600 50  0001 C CNN
	1    2525 1600
	1    0    0    -1  
$EndComp
$Comp
L Connector:DIN-5_180degree MIDI_OUT1
U 1 1 5F398FC8
P 2500 2875
F 0 "MIDI_OUT1" H 2500 2600 50  0000 C CNN
F 1 "DIN-5_180degree" H 2500 2509 50  0000 C CNN
F 2 "0_euro:DIN-5-ext" H 2500 2875 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/18/40_c091_abd_e-75918.pdf" H 2500 2875 50  0001 C CNN
	1    2500 2875
	1    0    0    -1  
$EndComp
Wire Wire Line
	2225 1500 2200 1500
Wire Wire Line
	2200 1500 2200 650 
Wire Wire Line
	2200 650  3875 650 
Wire Wire Line
	3875 1075 3875 650 
Connection ~ 3875 650 
Wire Wire Line
	2825 1500 4075 1500
Wire Wire Line
	4075 1175 4075 1500
Wire Wire Line
	2200 2775 2200 2350
Wire Wire Line
	4000 2350 4000 2775
Wire Wire Line
	2800 2775 3125 2775
Wire Wire Line
	3125 2775 3125 4600
Wire Wire Line
	3125 4600 4150 4600
Wire Wire Line
	4150 4600 4150 4000
Wire Wire Line
	4400 4100 4400 3450
Wire Wire Line
	2200 2350 4000 2350
Connection ~ 4000 2350
Wire Wire Line
	4000 2350 4400 2350
Wire Wire Line
	4150 4000 4150 2875
Connection ~ 4150 4000
$Comp
L Connector_Generic:Conn_01x04 J6
U 1 1 5F3A4C29
P 6525 2450
F 0 "J6" H 6605 2442 50  0000 L CNN
F 1 "Conn_01x04" H 6605 2351 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical_SMD_Pin1Left" H 6525 2450 50  0001 C CNN
F 3 "~" H 6525 2450 50  0001 C CNN
	1    6525 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6325 2350 5000 2350
Connection ~ 4400 2350
Wire Wire Line
	6325 2450 4575 2450
Wire Wire Line
	4575 2450 4575 2875
Wire Wire Line
	4575 2875 4150 2875
Connection ~ 4150 2875
Wire Wire Line
	6325 2550 5925 2550
Wire Wire Line
	6325 2650 6025 2650
Wire Wire Line
	6025 2650 6025 1575
Wire Wire Line
	6025 1575 5825 1575
Text GLabel 2200 2425 0    50   Input ~ 0
Midi_out_+
Text GLabel 3125 3650 0    50   Input ~ 0
Midi_out_-
Text GLabel 6025 1625 2    50   Input ~ 0
Midi_in_+
Text GLabel 5925 2100 2    50   Input ~ 0
Midi_in_-
$Comp
L Device:R R2
U 1 1 5F3ACF78
P 6750 1625
F 0 "R2" H 6820 1671 50  0000 L CNN
F 1 "R" H 6820 1580 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6680 1625 50  0001 C CNN
F 3 "~" H 6750 1625 50  0001 C CNN
	1    6750 1625
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 5F3AE346
P 6750 2025
F 0 "D3" V 6789 1907 50  0000 R CNN
F 1 "LED" V 6698 1907 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 6750 2025 50  0001 C CNN
F 3 "~" H 6750 2025 50  0001 C CNN
	1    6750 2025
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D2
U 1 1 5F3AEDE6
P 5000 3175
F 0 "D2" V 5039 3057 50  0000 R CNN
F 1 "LED" V 4948 3057 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 5000 3175 50  0001 C CNN
F 3 "~" H 5000 3175 50  0001 C CNN
	1    5000 3175
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5000 3025 5000 2900
Wire Wire Line
	5000 2600 5000 2350
Connection ~ 5000 2350
Wire Wire Line
	5000 2350 4400 2350
Wire Wire Line
	5000 3450 4400 3450
Connection ~ 4400 3450
Wire Wire Line
	4400 3450 4400 2350
Wire Wire Line
	6750 1775 6750 1875
Wire Wire Line
	6750 1475 6625 1475
Wire Wire Line
	5825 1475 5825 1575
Wire Wire Line
	6750 2175 5925 2175
Wire Wire Line
	5925 1950 5925 2175
Connection ~ 5925 2175
Wire Wire Line
	5925 2175 5925 2550
$Comp
L euro:BAS70BRW D1
U 1 1 5F3C09F4
P 4900 1450
F 0 "D1" H 4900 1925 50  0000 C CNN
F 1 "BAS70BRW" H 4900 1834 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6_Handsoldering" H 4800 1450 50  0001 C CNN
F 3 "" H 4800 1450 50  0001 C CNN
	1    4900 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4075 1500 4075 1700
Wire Wire Line
	4075 1700 4550 1700
Connection ~ 4075 1500
Wire Wire Line
	5250 1200 5250 650 
Wire Wire Line
	3875 650  5250 650 
Wire Wire Line
	4550 1450 4475 1450
Wire Wire Line
	4475 1450 4475 1200
Wire Wire Line
	4475 1200 4550 1200
Wire Wire Line
	4475 1200 4475 950 
Wire Wire Line
	4475 950  6625 950 
Wire Wire Line
	6625 950  6625 1475
Connection ~ 4475 1200
Connection ~ 6625 1475
Wire Wire Line
	6625 1475 5825 1475
Wire Wire Line
	5250 1450 5250 1575
Wire Wire Line
	5300 1950 5925 1950
Wire Wire Line
	5250 1575 5300 1575
Wire Wire Line
	5300 1575 5300 1950
Connection ~ 5250 1575
Wire Wire Line
	5250 1575 5250 1700
$Comp
L Connector_Generic:Conn_01x03 MIDI_OUT_A1
U 1 1 5F3CBB05
P 3625 2875
F 0 "MIDI_OUT_A1" H 3543 2550 50  0000 C CNN
F 1 "Conn_01x03" H 3543 2641 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical_SMD_Pin1Left" H 3625 2875 50  0001 C CNN
F 3 "~" H 3625 2875 50  0001 C CNN
	1    3625 2875
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 MIDI_IN_AB1
U 1 1 5F3CCD6C
P 3525 1175
F 0 "MIDI_IN_AB1" H 3443 850 50  0000 C CNN
F 1 "Conn_01x03" H 3443 941 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical_SMD_Pin1Left" H 3525 1175 50  0001 C CNN
F 3 "~" H 3525 1175 50  0001 C CNN
	1    3525 1175
	-1   0    0    1   
$EndComp
Wire Wire Line
	3825 4100 4400 4100
Wire Wire Line
	3825 4000 4150 4000
Wire Wire Line
	4000 2775 3825 2775
Wire Wire Line
	3825 2875 4150 2875
Wire Wire Line
	3875 1075 3725 1075
Wire Wire Line
	3725 1175 4075 1175
Text Notes 3200 3925 0    50   ~ 0
Out B connected on PCB
$Comp
L Device:R R1
U 1 1 5F3AD9F3
P 5000 2750
F 0 "R1" H 5070 2796 50  0000 L CNN
F 1 "R" H 5070 2705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4930 2750 50  0001 C CNN
F 3 "~" H 5000 2750 50  0001 C CNN
	1    5000 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3450 5000 3325
$EndSCHEMATC
