EESchema Schematic File Version 4
EELAYER 26 0
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
L Connector:Conn_01x02_Female J3
U 1 1 5C81AAE1
P 3025 1650
F 0 "J3" H 3052 1626 50  0000 L CNN
F 1 "Conn_01x02_Female" H 3052 1535 50  0000 L CNN
F 2 "Connector:Banana_Jack_2Pin" H 3025 1650 50  0001 C CNN
F 3 "~" H 3025 1650 50  0001 C CNN
	1    3025 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5C81AF83
P 2550 1975
F 0 "#PWR0101" H 2550 1725 50  0001 C CNN
F 1 "GND" H 2555 1802 50  0000 C CNN
F 2 "" H 2550 1975 50  0001 C CNN
F 3 "" H 2550 1975 50  0001 C CNN
	1    2550 1975
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0102
U 1 1 5C81B064
P 2600 1300
F 0 "#PWR0102" H 2600 1150 50  0001 C CNN
F 1 "VCC" H 2617 1473 50  0000 C CNN
F 2 "" H 2600 1300 50  0001 C CNN
F 3 "" H 2600 1300 50  0001 C CNN
	1    2600 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 1300 2600 1650
Wire Wire Line
	2600 1650 2825 1650
Wire Wire Line
	2600 1750 2600 1975
Wire Wire Line
	2600 1975 2550 1975
Wire Wire Line
	2600 1750 2825 1750
$Comp
L Connector:Conn_01x02_Female J1
U 1 1 5C81B2C2
P 2100 1750
F 0 "J1" H 1994 1425 50  0000 C CNN
F 1 "Conn_01x02_Female" H 1994 1516 50  0000 C CNN
F 2 "Connector:Banana_Jack_2Pin" H 2100 1750 50  0001 C CNN
F 3 "~" H 2100 1750 50  0001 C CNN
	1    2100 1750
	-1   0    0    1   
$EndComp
Wire Wire Line
	2300 1650 2600 1650
Connection ~ 2600 1650
Wire Wire Line
	2300 1750 2600 1750
Connection ~ 2600 1750
$EndSCHEMATC
