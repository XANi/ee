EESchema Schematic File Version 4
LIBS:leaflet-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 4
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
L Device:L L1
U 1 1 5B70C1CB
P 4000 1750
F 0 "L1" V 4190 1750 50  0000 C CNN
F 1 "4.7u" V 4099 1750 50  0000 C CNN
F 2 "Inductors_SMD:L_0805_HandSoldering" H 4000 1750 50  0001 C CNN
F 3 "~" H 4000 1750 50  0001 C CNN
	1    4000 1750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4400 2150 4400 1750
Wire Wire Line
	4400 1750 4150 1750
$Comp
L Device:CP C1
U 1 1 5B70C2B7
P 2550 2300
F 0 "C1" H 2668 2346 50  0000 L CNN
F 1 "10u" H 2668 2255 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2588 2150 50  0001 C CNN
F 3 "~" H 2550 2300 50  0001 C CNN
	1    2550 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5B70C392
P 2550 2450
F 0 "#PWR02" H 2550 2200 50  0001 C CNN
F 1 "GND" H 2555 2277 50  0000 C CNN
F 2 "" H 2550 2450 50  0001 C CNN
F 3 "" H 2550 2450 50  0001 C CNN
	1    2550 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5B70C3BD
P 4000 2750
F 0 "#PWR03" H 4000 2500 50  0001 C CNN
F 1 "GND" H 4005 2577 50  0000 C CNN
F 2 "" H 4000 2750 50  0001 C CNN
F 3 "" H 4000 2750 50  0001 C CNN
	1    4000 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5B70C48C
P 4900 2400
F 0 "R1" H 4970 2446 50  0000 L CNN
F 1 "1.8M" H 4970 2355 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4830 2400 50  0001 C CNN
F 3 "~" H 4900 2400 50  0001 C CNN
	1    4900 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5B70C4FA
P 4900 2700
F 0 "R2" H 4970 2746 50  0000 L CNN
F 1 "1M" H 4970 2655 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4830 2700 50  0001 C CNN
F 3 "~" H 4900 2700 50  0001 C CNN
	1    4900 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 2550 4400 2550
Wire Wire Line
	4400 2550 4400 2450
Connection ~ 4900 2550
Wire Wire Line
	4400 2250 4900 2250
$Comp
L power:GND #PWR04
U 1 1 5B70C636
P 4900 2850
F 0 "#PWR04" H 4900 2600 50  0001 C CNN
F 1 "GND" H 4905 2677 50  0000 C CNN
F 2 "" H 4900 2850 50  0001 C CNN
F 3 "" H 4900 2850 50  0001 C CNN
	1    4900 2850
	1    0    0    -1  
$EndComp
$Comp
L MCP1711:MCP1711 U2
U 1 1 5B70C3E8
P 6000 2450
F 0 "U2" H 6000 2937 60  0000 C CNN
F 1 "MCP1711" H 6000 2831 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-6_Handsoldering" H 6000 2831 60  0001 C CNN
F 3 "" H 5950 2450 60  0000 C CNN
	1    6000 2450
	1    0    0    -1  
$EndComp
Text Notes 4450 2550 0    50   ~ 0
1.23V
Wire Wire Line
	5500 2250 5400 2250
Connection ~ 4900 2250
Wire Wire Line
	5500 2450 5400 2450
Wire Wire Line
	5400 2450 5400 2250
Connection ~ 5400 2250
Wire Wire Line
	5400 2250 5250 2250
$Comp
L power:GND #PWR06
U 1 1 5B70C7F2
P 6000 2650
F 0 "#PWR06" H 6000 2400 50  0001 C CNN
F 1 "GND" H 6005 2477 50  0000 C CNN
F 2 "" H 6000 2650 50  0001 C CNN
F 3 "" H 6000 2650 50  0001 C CNN
	1    6000 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 5B70CAB3
P 5250 2400
F 0 "C2" H 5368 2446 50  0000 L CNN
F 1 "10u" H 5368 2355 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5288 2250 50  0001 C CNN
F 3 "~" H 5250 2400 50  0001 C CNN
	1    5250 2400
	1    0    0    -1  
$EndComp
Connection ~ 5250 2250
Wire Wire Line
	5250 2250 4900 2250
$Comp
L power:GND #PWR05
U 1 1 5B70CB9C
P 5250 2550
F 0 "#PWR05" H 5250 2300 50  0001 C CNN
F 1 "GND" H 5255 2377 50  0000 C CNN
F 2 "" H 5250 2550 50  0001 C CNN
F 3 "" H 5250 2550 50  0001 C CNN
	1    5250 2550
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5B70CC6D
P 1650 2150
F 0 "J1" H 1570 2367 50  0000 C CNN
F 1 "Conn_01x02" H 1570 2276 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 1650 2150 50  0001 C CNN
F 3 "~" H 1650 2150 50  0001 C CNN
	1    1650 2150
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 5B70CE1C
P 7000 2250
F 0 "J2" H 7080 2242 50  0000 L CNN
F 1 "Conn_01x02" H 7080 2151 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 7000 2250 50  0001 C CNN
F 3 "~" H 7000 2250 50  0001 C CNN
	1    7000 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 2150 2550 2150
Wire Wire Line
	6800 2250 6500 2250
$Comp
L power:GND #PWR01
U 1 1 5B70FA58
P 1850 2250
F 0 "#PWR01" H 1850 2000 50  0001 C CNN
F 1 "GND" H 1855 2077 50  0000 C CNN
F 2 "" H 1850 2250 50  0001 C CNN
F 3 "" H 1850 2250 50  0001 C CNN
	1    1850 2250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5B710AE5
P 6800 2350
F 0 "#PWR07" H 6800 2100 50  0001 C CNN
F 1 "GND" H 6805 2177 50  0000 C CNN
F 2 "" H 6800 2350 50  0001 C CNN
F 3 "" H 6800 2350 50  0001 C CNN
	1    6800 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 2750 4000 2650
$Comp
L MCP16251T-I_CH:MCP16252-I_CH U1
U 1 1 5B70C04B
P 4000 2350
F 0 "U1" H 4000 2817 50  0000 C CNN
F 1 "MCP16252-I_CH" H 4000 2726 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-6_Handsoldering" H 4050 2100 50  0001 L CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20005173B.pdf" H 3750 2800 50  0001 C CNN
	1    4000 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 1750 3850 1750
Wire Wire Line
	3600 2150 3500 2150
Connection ~ 2550 2150
Wire Wire Line
	3450 1750 3450 2150
Connection ~ 3450 2150
Wire Wire Line
	3450 2150 2550 2150
Wire Wire Line
	3600 2350 3500 2350
Wire Wire Line
	3500 2350 3500 2150
Connection ~ 3500 2150
Wire Wire Line
	3500 2150 3450 2150
Text Label 2950 2150 0    50   ~ 0
Vin
Text Label 4700 2250 0    50   ~ 0
Vsw
Text Label 6600 2250 0    50   ~ 0
Vout
Text Label 4700 2550 0    50   ~ 0
Vfb
Text GLabel 6800 2250 1    50   Input ~ 0
3.3V
Text GLabel 2150 2150 1    50   Input ~ 0
Vin
$EndSCHEMATC