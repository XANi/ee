EESchema Schematic File Version 4
LIBS:powerleaf-cache
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
L Device:L L?
U 1 1 5C0427D1
P 3325 750
AR Path="/5B70BF95/5C0427D1" Ref="L?"  Part="1" 
AR Path="/5C0427D1" Ref="L1"  Part="1" 
F 0 "L1" V 3515 750 50  0000 C CNN
F 1 "4.7u" V 3424 750 50  0000 C CNN
F 2 "Inductor_SMD:L_Vishay_IHLP-1616" H 3325 750 50  0001 C CNN
F 3 "~" H 3325 750 50  0001 C CNN
	1    3325 750 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3725 1150 3725 750 
Wire Wire Line
	3725 750  3475 750 
$Comp
L Device:CP C?
U 1 1 5C0427DA
P 1875 1300
AR Path="/5B70BF95/5C0427DA" Ref="C?"  Part="1" 
AR Path="/5C0427DA" Ref="C1"  Part="1" 
F 0 "C1" H 1993 1346 50  0000 L CNN
F 1 "10u" H 1993 1255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1913 1150 50  0001 C CNN
F 3 "~" H 1875 1300 50  0001 C CNN
	1    1875 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C0427E1
P 1875 1450
AR Path="/5B70BF95/5C0427E1" Ref="#PWR?"  Part="1" 
AR Path="/5C0427E1" Ref="#PWR02"  Part="1" 
F 0 "#PWR02" H 1875 1200 50  0001 C CNN
F 1 "GND" H 1880 1277 50  0000 C CNN
F 2 "" H 1875 1450 50  0001 C CNN
F 3 "" H 1875 1450 50  0001 C CNN
	1    1875 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C0427E7
P 3325 1750
AR Path="/5B70BF95/5C0427E7" Ref="#PWR?"  Part="1" 
AR Path="/5C0427E7" Ref="#PWR03"  Part="1" 
F 0 "#PWR03" H 3325 1500 50  0001 C CNN
F 1 "GND" H 3330 1577 50  0000 C CNN
F 2 "" H 3325 1750 50  0001 C CNN
F 3 "" H 3325 1750 50  0001 C CNN
	1    3325 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5C0427ED
P 4225 1400
AR Path="/5B70BF95/5C0427ED" Ref="R?"  Part="1" 
AR Path="/5C0427ED" Ref="R1"  Part="1" 
F 0 "R1" H 4295 1446 50  0000 L CNN
F 1 "1.87M" H 4295 1355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4155 1400 50  0001 C CNN
F 3 "~" H 4225 1400 50  0001 C CNN
	1    4225 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5C0427F4
P 4225 1700
AR Path="/5B70BF95/5C0427F4" Ref="R?"  Part="1" 
AR Path="/5C0427F4" Ref="R2"  Part="1" 
F 0 "R2" H 4295 1746 50  0000 L CNN
F 1 "1M" H 4295 1655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4155 1700 50  0001 C CNN
F 3 "~" H 4225 1700 50  0001 C CNN
	1    4225 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4225 1550 3725 1550
Wire Wire Line
	3725 1550 3725 1450
Connection ~ 4225 1550
$Comp
L power:GND #PWR?
U 1 1 5C0427FF
P 4225 1850
AR Path="/5B70BF95/5C0427FF" Ref="#PWR?"  Part="1" 
AR Path="/5C0427FF" Ref="#PWR04"  Part="1" 
F 0 "#PWR04" H 4225 1600 50  0001 C CNN
F 1 "GND" H 4230 1677 50  0000 C CNN
F 2 "" H 4225 1850 50  0001 C CNN
F 3 "" H 4225 1850 50  0001 C CNN
	1    4225 1850
	1    0    0    -1  
$EndComp
$Comp
L MCP1711:MCP1711 U?
U 1 1 5C042805
P 5600 1450
AR Path="/5B70BF95/5C042805" Ref="U?"  Part="1" 
AR Path="/5C042805" Ref="U2"  Part="1" 
F 0 "U2" H 5600 1937 60  0000 C CNN
F 1 "MCP1711" H 5600 1831 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-6_Handsoldering" H 5600 1831 60  0001 C CNN
F 3 "" H 5550 1450 60  0000 C CNN
	1    5600 1450
	1    0    0    -1  
$EndComp
Text Notes 3775 1550 0    50   ~ 0
1.23V
Connection ~ 4225 1250
Wire Wire Line
	5100 1450 5000 1450
$Comp
L Device:CP C?
U 1 1 5C042819
P 4575 1400
AR Path="/5B70BF95/5C042819" Ref="C?"  Part="1" 
AR Path="/5C042819" Ref="C2"  Part="1" 
F 0 "C2" H 4550 1625 50  0000 L CNN
F 1 "10u" H 4650 1250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4613 1250 50  0001 C CNN
F 3 "~" H 4575 1400 50  0001 C CNN
	1    4575 1400
	1    0    0    -1  
$EndComp
Connection ~ 4575 1250
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5C042828
P 625 675
AR Path="/5B70BF95/5C042828" Ref="J?"  Part="1" 
AR Path="/5C042828" Ref="J1"  Part="1" 
F 0 "J1" H 545 892 50  0000 C CNN
F 1 "Conn_01x02" H 545 801 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 625 675 50  0001 C CNN
F 3 "~" H 625 675 50  0001 C CNN
	1    625  675 
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6400 1250 6225 1250
$Comp
L power:GND #PWR?
U 1 1 5C042838
P 825 875
AR Path="/5B70BF95/5C042838" Ref="#PWR?"  Part="1" 
AR Path="/5C042838" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 825 625 50  0001 C CNN
F 1 "GND" H 830 702 50  0000 C CNN
F 2 "" H 825 875 50  0001 C CNN
F 3 "" H 825 875 50  0001 C CNN
	1    825  875 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C04283E
P 6350 1525
AR Path="/5B70BF95/5C04283E" Ref="#PWR?"  Part="1" 
AR Path="/5C04283E" Ref="#PWR07"  Part="1" 
F 0 "#PWR07" H 6350 1275 50  0001 C CNN
F 1 "GND" H 6355 1352 50  0000 C CNN
F 2 "" H 6350 1525 50  0001 C CNN
F 3 "" H 6350 1525 50  0001 C CNN
	1    6350 1525
	1    0    0    -1  
$EndComp
Wire Wire Line
	3325 1750 3325 1650
$Comp
L MCP16251T-I_CH:MCP16252-I_CH U?
U 1 1 5C042845
P 3325 1350
AR Path="/5B70BF95/5C042845" Ref="U?"  Part="1" 
AR Path="/5C042845" Ref="U1"  Part="1" 
F 0 "U1" H 3325 1817 50  0000 C CNN
F 1 "MCP16252-I_CH" H 3325 1726 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-6_Handsoldering" H 3375 1100 50  0001 L CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20005173B.pdf" H 3075 1800 50  0001 C CNN
	1    3325 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2775 750  3175 750 
Wire Wire Line
	2775 750  2775 1150
Connection ~ 2775 1150
Wire Wire Line
	2775 1150 2725 1150
Wire Wire Line
	2925 1350 2825 1350
Wire Wire Line
	2825 1350 2825 1150
Wire Wire Line
	2825 1150 2775 1150
Text Label 1000 675  0    50   ~ 0
Vin
Text Label 4025 1250 0    50   ~ 0
Vsw
Text Label 6200 1250 0    50   ~ 0
Vout
Text Label 4025 1550 0    50   ~ 0
Vfb
Text GLabel 6150 1225 1    50   Input ~ 0
3.3V
Text GLabel 950  750  3    50   Input ~ 0
Vin
$Comp
L Connector_Generic:Conn_01x03 J3
U 1 1 5C043818
P 6600 1250
F 0 "J3" H 6519 925 50  0000 C CNN
F 1 "Conn_01x03" H 6519 1016 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6600 1250 50  0001 C CNN
F 3 "~" H 6600 1250 50  0001 C CNN
	1    6600 1250
	1    0    0    1   
$EndComp
Text GLabel 6275 925  1    50   Input ~ 0
Vsense
$Comp
L Device:R R?
U 1 1 5C04902E
P 6025 750
AR Path="/5B70BF95/5C04902E" Ref="R?"  Part="1" 
AR Path="/5C04902E" Ref="R3"  Part="1" 
F 0 "R3" H 6095 796 50  0000 L CNN
F 1 "10k" H 6095 705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5955 750 50  0001 C CNN
F 3 "~" H 6025 750 50  0001 C CNN
	1    6025 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 600  6025 600 
Wire Wire Line
	6025 875  6025 900 
Wire Wire Line
	6025 975  6225 975 
Connection ~ 6025 900 
Wire Wire Line
	6025 900  6025 975 
Text GLabel 5900 600  0    50   Input ~ 0
Vin
$Comp
L Device:C_Small C4
U 1 1 5C04D60C
P 4775 1350
F 0 "C4" H 4750 1525 50  0000 L CNN
F 1 "100n" H 4800 1250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4775 1350 50  0001 C CNN
F 3 "~" H 4775 1350 50  0001 C CNN
	1    4775 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5C04E9A0
P 6225 1350
F 0 "C5" H 6025 1400 50  0000 L CNN
F 1 "100n" H 6025 1300 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6225 1350 50  0001 C CNN
F 3 "~" H 6225 1350 50  0001 C CNN
	1    6225 1350
	1    0    0    -1  
$EndComp
Connection ~ 6225 1250
Wire Wire Line
	6100 1250 6150 1250
Wire Wire Line
	4575 1250 4775 1250
Wire Wire Line
	4225 1250 4575 1250
Wire Wire Line
	4775 1250 5000 1250
Connection ~ 4775 1250
Wire Wire Line
	5000 1250 5000 1450
Connection ~ 5000 1250
Wire Wire Line
	5000 1250 5100 1250
Wire Wire Line
	6350 1525 6350 1450
Wire Wire Line
	6350 1450 6225 1450
Wire Wire Line
	6400 1350 6350 1350
Wire Wire Line
	6350 1350 6350 1450
Connection ~ 6350 1450
$Comp
L Device:CP C?
U 1 1 5C05419F
P 2225 1300
AR Path="/5B70BF95/5C05419F" Ref="C?"  Part="1" 
AR Path="/5C05419F" Ref="C3"  Part="1" 
F 0 "C3" H 2343 1346 50  0000 L CNN
F 1 "super" H 2250 1200 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P2.50mm_P5.00mm" H 2263 1150 50  0001 C CNN
F 3 "~" H 2225 1300 50  0001 C CNN
	1    2225 1300
	1    0    0    -1  
$EndComp
Connection ~ 2225 1150
Wire Wire Line
	2225 1150 1875 1150
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5C054283
P 2550 850
AR Path="/5B70BF95/5C054283" Ref="J?"  Part="1" 
AR Path="/5C054283" Ref="J2"  Part="1" 
F 0 "J2" H 2470 1067 50  0000 C CNN
F 1 "Cap" H 2470 976 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2550 850 50  0001 C CNN
F 3 "~" H 2550 850 50  0001 C CNN
	1    2550 850 
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5C0545F6
P 2225 1650
F 0 "#PWR09" H 2225 1400 50  0001 C CNN
F 1 "GND" H 2230 1477 50  0000 C CNN
F 2 "" H 2225 1650 50  0001 C CNN
F 3 "" H 2225 1650 50  0001 C CNN
	1    2225 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D1
U 1 1 5C056031
P 1400 675
F 0 "D1" H 1400 459 50  0000 C CNN
F 1 "D_Schottky" H 1400 550 50  0000 C CNN
F 2 "Diode_SMD:D_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1400 675 50  0001 C CNN
F 3 "~" H 1400 675 50  0001 C CNN
	1    1400 675 
	-1   0    0    1   
$EndComp
$Comp
L Device:D_Zener D2
U 1 1 5C056385
P 1600 825
F 0 "D2" V 1554 904 50  0000 L CNN
F 1 "5.1V" V 1645 904 50  0000 L CNN
F 2 "Diode_SMD:D_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1600 825 50  0001 C CNN
F 3 "~" H 1600 825 50  0001 C CNN
	1    1600 825 
	0    1    1    0   
$EndComp
Wire Wire Line
	1550 675  1600 675 
$Comp
L power:GND #PWR?
U 1 1 5C057C4B
P 1600 975
AR Path="/5B70BF95/5C057C4B" Ref="#PWR?"  Part="1" 
AR Path="/5C057C4B" Ref="#PWR08"  Part="1" 
F 0 "#PWR08" H 1600 725 50  0001 C CNN
F 1 "GND" H 1605 802 50  0000 C CNN
F 2 "" H 1600 975 50  0001 C CNN
F 3 "" H 1600 975 50  0001 C CNN
	1    1600 975 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 675  1875 675 
Wire Wire Line
	1875 675  1875 925 
Connection ~ 1600 675 
Connection ~ 1875 1150
$Comp
L Device:C_Small C6
U 1 1 5C05D497
P 2725 1250
F 0 "C6" H 2550 1250 50  0000 L CNN
F 1 "100n" H 2525 1175 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2725 1250 50  0001 C CNN
F 3 "~" H 2725 1250 50  0001 C CNN
	1    2725 1250
	1    0    0    -1  
$EndComp
Connection ~ 2725 1150
Wire Wire Line
	2225 1150 2725 1150
Wire Wire Line
	2225 1450 2225 1650
$Comp
L power:GND #PWR010
U 1 1 5C05D67D
P 2350 850
F 0 "#PWR010" H 2350 600 50  0001 C CNN
F 1 "GND" H 2355 677 50  0000 C CNN
F 2 "" H 2350 850 50  0001 C CNN
F 3 "" H 2350 850 50  0001 C CNN
	1    2350 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 750  2175 750 
Wire Wire Line
	2175 750  2175 925 
Wire Wire Line
	2175 925  1875 925 
Connection ~ 1875 925 
Wire Wire Line
	1875 925  1875 1150
Text Notes 2500 700  0    50   ~ 0
External capacitor
$Comp
L power:GND #PWR011
U 1 1 5C05E07D
P 2725 1350
F 0 "#PWR011" H 2725 1100 50  0001 C CNN
F 1 "GND" H 2730 1177 50  0000 C CNN
F 2 "" H 2725 1350 50  0001 C CNN
F 3 "" H 2725 1350 50  0001 C CNN
	1    2725 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:Polyfuse_Small F1
U 1 1 5C060737
P 1150 675
F 0 "F1" V 945 675 50  0000 C CNN
F 1 "100na" V 1036 675 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Vertical" H 1200 475 50  0001 L CNN
F 3 "~" H 1150 675 50  0001 C CNN
	1    1150 675 
	0    1    1    0   
$EndComp
Wire Wire Line
	825  675  950  675 
$Comp
L power:GND #PWR?
U 1 1 5C063A3A
P 4575 1550
AR Path="/5B70BF95/5C063A3A" Ref="#PWR?"  Part="1" 
AR Path="/5C063A3A" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 4575 1300 50  0001 C CNN
F 1 "GND" H 4580 1377 50  0000 C CNN
F 2 "" H 4575 1550 50  0001 C CNN
F 3 "" H 4575 1550 50  0001 C CNN
	1    4575 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C063A69
P 4775 1450
AR Path="/5B70BF95/5C063A69" Ref="#PWR?"  Part="1" 
AR Path="/5C063A69" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 4775 1200 50  0001 C CNN
F 1 "GND" H 4780 1277 50  0000 C CNN
F 2 "" H 4775 1450 50  0001 C CNN
F 3 "" H 4775 1450 50  0001 C CNN
	1    4775 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C063AAB
P 5600 1650
AR Path="/5B70BF95/5C063AAB" Ref="#PWR?"  Part="1" 
AR Path="/5C063AAB" Ref="#PWR0103"  Part="1" 
F 0 "#PWR0103" H 5600 1400 50  0001 C CNN
F 1 "GND" H 5605 1477 50  0000 C CNN
F 2 "" H 5600 1650 50  0001 C CNN
F 3 "" H 5600 1650 50  0001 C CNN
	1    5600 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6275 925  6275 975 
Wire Wire Line
	6150 1225 6150 1250
Connection ~ 6150 1250
Wire Wire Line
	6150 1250 6225 1250
Wire Wire Line
	2925 1150 2825 1150
Connection ~ 2825 1150
Wire Wire Line
	825  875  825  775 
Wire Wire Line
	6600 1250 6400 1250
Wire Wire Line
	950  750  950  675 
Connection ~ 6400 1250
Connection ~ 950  675 
Wire Wire Line
	950  675  1050 675 
Text Label 2675 1125 0    50   ~ 0
Vcap
Wire Wire Line
	6400 1150 6225 1150
Wire Wire Line
	6225 1150 6225 975 
Connection ~ 6225 975 
Wire Wire Line
	6225 975  6275 975 
Text GLabel 1875 800  2    50   Input ~ 0
Vcap
Text GLabel 1625 1975 0    50   Input ~ 0
Vcap
$Comp
L Device:CP C?
U 1 1 5C06E5EF
P 1775 2200
AR Path="/5B70BF95/5C06E5EF" Ref="C?"  Part="1" 
AR Path="/5C06E5EF" Ref="C7"  Part="1" 
F 0 "C7" H 1893 2246 50  0000 L CNN
F 1 "Cextra" H 1893 2155 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x7.7" H 1813 2050 50  0001 C CNN
F 3 "~" H 1775 2200 50  0001 C CNN
	1    1775 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1775 2050 1775 1975
Wire Wire Line
	1775 1975 1625 1975
Wire Wire Line
	4025 1250 4225 1250
Wire Wire Line
	3725 1250 4225 1250
$Comp
L power:GND #PWR?
U 1 1 5C06F3E6
P 1775 2350
AR Path="/5B70BF95/5C06F3E6" Ref="#PWR?"  Part="1" 
AR Path="/5C06F3E6" Ref="#PWR0104"  Part="1" 
F 0 "#PWR0104" H 1775 2100 50  0001 C CNN
F 1 "GND" H 1780 2177 50  0000 C CNN
F 2 "" H 1775 2350 50  0001 C CNN
F 3 "" H 1775 2350 50  0001 C CNN
	1    1775 2350
	1    0    0    -1  
$EndComp
$EndSCHEMATC
