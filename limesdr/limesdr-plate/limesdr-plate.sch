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
L Connector:Conn_01x03_Male J1
U 1 1 5DC1F4E3
P 3700 1200
F 0 "J1" H 3673 1130 50  0000 R CNN
F 1 "Conn_01x03_Male" H 3673 1221 50  0000 R CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_Pad1.0x1.5mm" H 3700 1200 50  0001 C CNN
F 3 "~" H 3700 1200 50  0001 C CNN
	1    3700 1200
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D1
U 1 1 5DC1F78F
P 2575 1500
F 0 "D1" V 2613 1383 50  0000 R CNN
F 1 "LED" V 2522 1383 50  0000 R CNN
F 2 "Diode_SMD:D_0805_2012Metric_Castellated" H 2575 1500 50  0001 C CNN
F 3 "~" H 2575 1500 50  0001 C CNN
	1    2575 1500
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D2
U 1 1 5DC1F87C
P 2900 1525
F 0 "D2" V 2938 1408 50  0000 R CNN
F 1 "LED" V 2847 1408 50  0000 R CNN
F 2 "Diode_SMD:D_0805_2012Metric_Castellated" H 2900 1525 50  0001 C CNN
F 3 "~" H 2900 1525 50  0001 C CNN
	1    2900 1525
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 5DC1F953
P 2575 1125
F 0 "R1" H 2645 1171 50  0000 L CNN
F 1 "R" H 2645 1080 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2505 1125 50  0001 C CNN
F 3 "~" H 2575 1125 50  0001 C CNN
	1    2575 1125
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5DC1FB8B
P 2900 1125
F 0 "R2" H 2970 1171 50  0000 L CNN
F 1 "R" H 2970 1080 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2830 1125 50  0001 C CNN
F 3 "~" H 2900 1125 50  0001 C CNN
	1    2900 1125
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5DC1FC01
P 3175 1875
F 0 "#PWR0101" H 3175 1625 50  0001 C CNN
F 1 "GND" H 3180 1702 50  0000 C CNN
F 2 "" H 3175 1875 50  0001 C CNN
F 3 "" H 3175 1875 50  0001 C CNN
	1    3175 1875
	1    0    0    -1  
$EndComp
Wire Wire Line
	3175 1875 3100 1875
Wire Wire Line
	2900 1875 2900 1675
Wire Wire Line
	2900 1875 2575 1875
Wire Wire Line
	2575 1875 2575 1650
Connection ~ 2900 1875
Wire Wire Line
	2900 1275 2900 1375
Wire Wire Line
	2575 1275 2575 1350
Wire Wire Line
	3100 1875 3100 1750
Wire Wire Line
	3100 1750 3500 1750
Wire Wire Line
	3500 1750 3500 1300
Connection ~ 3100 1875
Wire Wire Line
	3100 1875 2900 1875
Wire Wire Line
	2900 975  3225 975 
Wire Wire Line
	3225 975  3225 1200
Wire Wire Line
	3225 1200 3500 1200
Wire Wire Line
	2575 950  2575 825 
Wire Wire Line
	2575 825  3500 825 
Wire Wire Line
	3500 825  3500 1100
$EndSCHEMATC
