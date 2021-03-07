EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
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
L leaflet-rescue:USB_B_Micro-Connector J3
U 1 1 5B7C3C46
P 5050 1450
AR Path="/5B7C3C46" Ref="J3"  Part="1" 
AR Path="/5B7C2F15/5B7C3C46" Ref="J3"  Part="1" 
F 0 "J3" H 4821 1441 50  0000 R CNN
F 1 "USB_B_Micro" H 4821 1350 50  0000 R CNN
F 2 "Connectors:USB_Micro-B" H 5200 1400 50  0001 C CNN
F 3 "~" H 5200 1400 50  0001 C CNN
	1    5050 1450
	-1   0    0    -1  
$EndComp
$Comp
L Power_Protection:NUP4202 U4
U 1 1 5B7C4082
P 3450 1700
F 0 "U4" H 3680 1746 50  0000 L CNN
F 1 "IP4220CZ6" H 3680 1655 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:TSOT-23-6_MK06A_HandSoldering" H 3500 1775 50  0001 C CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/NUP4202W1-D.PDF" H 3500 1775 50  0001 C CNN
	1    3450 1700
	1    0    0    -1  
$EndComp
Text HLabel 1500 1100 0    50   Input ~ 0
D+
Text HLabel 1500 1200 0    50   Input ~ 0
D-
Text HLabel 1500 1000 0    50   Input ~ 0
USB_5V
Text HLabel 1500 1300 0    50   Input ~ 0
ID
$Comp
L power:GND #PWR011
U 1 1 5B7C41D1
P 3450 1900
F 0 "#PWR011" H 3450 1650 50  0001 C CNN
F 1 "GND" H 3455 1727 50  0000 C CNN
F 2 "" H 3450 1900 50  0001 C CNN
F 3 "" H 3450 1900 50  0001 C CNN
	1    3450 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 1000 4750 1250
Wire Wire Line
	3450 1500 3450 1000
Wire Wire Line
	3450 1000 4750 1000
$Comp
L Device:Ferrite_Bead_Small L2
U 1 1 5B7C4286
P 2950 1000
F 0 "L2" V 2713 1000 50  0000 C CNN
F 1 "BLM21PG221" V 2804 1000 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric_Pad1.05x1.20mm_HandSolder" V 2880 1000 50  0001 C CNN
F 3 "~" H 2950 1000 50  0001 C CNN
	1    2950 1000
	0    1    1    0   
$EndComp
Wire Wire Line
	3050 1000 3450 1000
Connection ~ 3450 1000
Wire Wire Line
	2850 1000 1500 1000
$Comp
L Device:R_Small R7
U 1 1 5B7C443D
P 2550 1100
F 0 "R7" V 2746 1100 50  0000 C CNN
F 1 "15" V 2655 1100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 2550 1100 50  0001 C CNN
F 3 "~" H 2550 1100 50  0001 C CNN
	1    2550 1100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R6
U 1 1 5B7C4522
P 2300 1200
F 0 "R6" V 2496 1200 50  0000 C CNN
F 1 "15" V 2405 1200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 2300 1200 50  0001 C CNN
F 3 "~" H 2300 1200 50  0001 C CNN
	1    2300 1200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2450 1100 1500 1100
Wire Wire Line
	1500 1200 2150 1200
Wire Wire Line
	2650 1100 3350 1100
Wire Wire Line
	4650 1100 4650 1450
Wire Wire Line
	4650 1450 4750 1450
Wire Wire Line
	2400 1200 3550 1200
Wire Wire Line
	4550 1200 4550 1550
Wire Wire Line
	4550 1550 4750 1550
Wire Wire Line
	1500 1300 3150 1300
Wire Wire Line
	4450 1300 4450 1650
Wire Wire Line
	4450 1650 4750 1650
Wire Wire Line
	3350 1500 3350 1100
Connection ~ 3350 1100
Wire Wire Line
	3350 1100 4650 1100
Wire Wire Line
	3550 1500 3550 1200
Connection ~ 3550 1200
Wire Wire Line
	3550 1200 4550 1200
Wire Wire Line
	3350 1900 3150 1900
Wire Wire Line
	3150 1900 3150 1300
Connection ~ 3150 1300
Wire Wire Line
	3150 1300 4450 1300
$Comp
L power:GND #PWR012
U 1 1 5B7C4D93
P 5050 2000
F 0 "#PWR012" H 5050 1750 50  0001 C CNN
F 1 "GND" H 5055 1827 50  0000 C CNN
F 2 "" H 5050 2000 50  0001 C CNN
F 3 "" H 5050 2000 50  0001 C CNN
	1    5050 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 1850 5050 1950
Wire Wire Line
	5150 1850 5150 1950
Wire Wire Line
	5150 1950 5050 1950
Connection ~ 5050 1950
Wire Wire Line
	5050 1950 5050 2000
Text HLabel 1500 1400 0    50   Input ~ 0
USB_DMPU
$Comp
L Device:R_Small R5
U 1 1 5B7C536F
P 2050 1400
F 0 "R5" V 2246 1400 50  0000 C CNN
F 1 "3.3k" V 2155 1400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 2050 1400 50  0001 C CNN
F 3 "~" H 2050 1400 50  0001 C CNN
	1    2050 1400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1950 1400 1500 1400
Wire Wire Line
	2150 1400 2150 1200
Connection ~ 2150 1200
Wire Wire Line
	2150 1200 2200 1200
Text Label 4225 1100 0    50   ~ 0
DR+
Text Label 4250 1200 0    50   ~ 0
DR-
Text Label 4425 1000 0    50   ~ 0
VBUS
Text Label 1825 1000 0    50   ~ 0
USB_5V
$EndSCHEMATC
