EESchema Schematic File Version 4
LIBS:leaflet-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 3625 1800 1    50   Input ~ 0
3.3V
$Comp
L power:GND #PWR?
U 1 1 5B84DE19
P 3500 1800
AR Path="/5B84DE19" Ref="#PWR?"  Part="1" 
AR Path="/5B84C18A/5B84DE19" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 3500 1550 50  0001 C CNN
F 1 "GND" H 3505 1627 50  0000 C CNN
F 2 "" H 3500 1800 50  0001 C CNN
F 3 "" H 3500 1800 50  0001 C CNN
	1    3500 1800
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x05 SWD?
U 1 1 5B84DE1F
P 3950 2100
AR Path="/5B84DE1F" Ref="SWD?"  Part="1" 
AR Path="/5B84C18A/5B84DE1F" Ref="SWD1"  Part="1" 
F 0 "SWD1" H 4030 2142 50  0000 L CNN
F 1 "Conn_01x05" H 4030 2051 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05_Pitch2.54mm" H 3950 2100 50  0001 C CNN
F 3 "~" H 3950 2100 50  0001 C CNN
	1    3950 2100
	1    0    0    -1  
$EndComp
Text GLabel 2975 2300 0    50   Input ~ 0
RESET
Text GLabel 2975 2100 0    50   Input ~ 0
USART1_SCK
Text GLabel 2975 2200 0    50   Input ~ 0
USART1_CS
$Comp
L Device:Jumper JP1
U 1 1 5B84FC84
P 3125 1700
F 0 "JP1" V 3079 1827 50  0000 L CNN
F 1 "Prog" V 3170 1827 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 3125 1700 50  0001 C CNN
F 3 "~" H 3125 1700 50  0001 C CNN
	1    3125 1700
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5B84FC8C
P 3125 1300
F 0 "R3" H 3066 1254 50  0000 R CNN
F 1 "3.3k" H 3066 1345 50  0000 R CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 3125 1300 50  0001 C CNN
F 3 "~" H 3125 1300 50  0001 C CNN
	1    3125 1300
	-1   0    0    1   
$EndComp
Text GLabel 3125 1200 1    50   Input ~ 0
3.3V
Wire Wire Line
	3625 1800 3625 1900
Wire Wire Line
	3625 1900 3750 1900
Wire Wire Line
	3500 1800 3500 2000
Wire Wire Line
	3500 2000 3750 2000
Wire Wire Line
	3000 2100 3125 2100
Wire Wire Line
	2975 2200 3750 2200
Wire Wire Line
	3125 2000 3125 2100
Connection ~ 3125 2100
Wire Wire Line
	3125 2100 3750 2100
Wire Wire Line
	3750 2300 2975 2300
$EndSCHEMATC
