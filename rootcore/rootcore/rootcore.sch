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
L Connector_Generic:Conn_02x20_Odd_Even J2
U 1 1 6013835A
P 1100 2300
F 0 "J2" H 1150 3417 50  0000 C CNN
F 1 "Conn_02x20_Odd_Even" H 1150 3326 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 1100 2300 50  0001 C CNN
F 3 "~" H 1100 2300 50  0001 C CNN
	1    1100 2300
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J1
U 1 1 6013C1E8
P 1075 4625
F 0 "J1" H 1125 5742 50  0000 C CNN
F 1 "Conn_02x20_Odd_Even" H 1125 5651 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 1075 4625 50  0001 C CNN
F 3 "~" H 1075 4625 50  0001 C CNN
	1    1075 4625
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM13700 U2
U 1 1 60164008
P 5250 1850
F 0 "U2" H 5250 2217 50  0000 C CNN
F 1 "LM13700" H 5250 2126 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 4950 1875 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm13700.pdf" H 4950 1875 50  0001 C CNN
	1    5250 1850
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM13700 U2
U 2 1 601678B7
P 6175 1750
F 0 "U2" H 6075 2098 50  0000 C CNN
F 1 "LM13700" H 6075 2007 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 5875 1775 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm13700.pdf" H 5875 1775 50  0001 C CNN
	2    6175 1750
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM13700 U2
U 3 1 60167F7C
P 7500 2300
F 0 "U2" H 7500 2667 50  0000 C CNN
F 1 "LM13700" H 7500 2576 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 7200 2325 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm13700.pdf" H 7200 2325 50  0001 C CNN
	3    7500 2300
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM13700 U2
U 4 1 6016A11C
P 6250 2975
F 0 "U2" H 6150 3323 50  0000 C CNN
F 1 "LM13700" H 6150 3232 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 5950 3000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm13700.pdf" H 5950 3000 50  0001 C CNN
	4    6250 2975
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM13700 U2
U 5 1 6016A944
P 5275 3325
F 0 "U2" H 5233 3371 50  0000 L CNN
F 1 "LM13700" H 5233 3280 50  0000 L CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 4975 3350 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm13700.pdf" H 4975 3350 50  0001 C CNN
	5    5275 3325
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AP1117-15 U3
U 1 1 6016C190
P 7350 1100
F 0 "U3" H 7350 1342 50  0000 C CNN
F 1 "AP1117-15" H 7350 1251 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 7350 1300 50  0001 C CNN
F 3 "http://www.diodes.com/datasheets/AP1117.pdf" H 7450 850 50  0001 C CNN
	1    7350 1100
	1    0    0    -1  
$EndComp
Text GLabel 2400 2350 0    50   Input ~ 0
PE8
Text GLabel 2400 2450 0    50   Input ~ 0
PE9
Text GLabel 2400 2950 0    50   Input ~ 0
PC0
Text GLabel 2400 3050 0    50   Input ~ 0
PC1
Text GLabel 2400 3150 0    50   Input ~ 0
PC2
Text GLabel 2400 3250 0    50   Input ~ 0
PC3
Text GLabel 2400 3350 0    50   Input ~ 0
PC4
Text GLabel 2400 3450 0    50   Input ~ 0
PC5
Text GLabel 2400 3550 0    50   Input ~ 0
PC6
Text GLabel 2400 3650 0    50   Input ~ 0
PC7
Text GLabel 2400 3750 0    50   Input ~ 0
PC8
Text GLabel 2400 3850 0    50   Input ~ 0
PC9
Text GLabel 2400 3950 0    50   Input ~ 0
PC10
Text GLabel 2400 4050 0    50   Input ~ 0
PC11
Text GLabel 2400 4150 0    50   Input ~ 0
PC12
Text GLabel 2400 4250 0    50   Input ~ 0
PC13
Text GLabel 2400 4350 0    50   Input ~ 0
PC14
Text GLabel 2400 4450 0    50   Input ~ 0
PC15
Text GLabel 3800 3350 2    50   Input ~ 0
PB0
Text GLabel 3800 3450 2    50   Input ~ 0
PB1
Text GLabel 3800 3550 2    50   Input ~ 0
PB2
Text GLabel 3800 3650 2    50   Input ~ 0
PB3
Text GLabel 3800 3750 2    50   Input ~ 0
PB4
Text GLabel 3800 3850 2    50   Input ~ 0
PB5
Text GLabel 3800 4050 2    50   Input ~ 0
PB7
Text GLabel 3800 4150 2    50   Input ~ 0
PB8
Text GLabel 3800 4250 2    50   Input ~ 0
PB9
Text GLabel 3800 4350 2    50   Input ~ 0
PB14
Text GLabel 3800 4450 2    50   Input ~ 0
PB15
Text GLabel 3800 1650 2    50   Input ~ 0
PA0
Text GLabel 3800 1750 2    50   Input ~ 0
PA1
Text GLabel 3800 1850 2    50   Input ~ 0
PA2
Text GLabel 3800 1950 2    50   Input ~ 0
PA3
Text GLabel 3800 2050 2    50   Input ~ 0
PA4
Text GLabel 3800 2150 2    50   Input ~ 0
PA5
Text GLabel 3800 2250 2    50   Input ~ 0
PA6
Text GLabel 3800 2350 2    50   Input ~ 0
PA7
Text GLabel 3800 2450 2    50   Input ~ 0
PA8
Text GLabel 3800 2550 2    50   Input ~ 0
PA9
Text GLabel 3800 2650 2    50   Input ~ 0
PA10
Text GLabel 3800 2750 2    50   Input ~ 0
PA11
Text GLabel 3800 2850 2    50   Input ~ 0
PA12
Text GLabel 3800 2950 2    50   Input ~ 0
PA13
Text GLabel 3800 3050 2    50   Input ~ 0
PA14
Text GLabel 3800 3150 2    50   Input ~ 0
PA15
Text GLabel 2400 1850 0    50   Input ~ 0
PF0
Text GLabel 2400 1950 0    50   Input ~ 0
PF1
Text GLabel 2400 2150 0    50   Input ~ 0
PF7
Text GLabel 2400 2050 0    50   Input ~ 0
PF6
$Comp
L Device:Crystal Y1
U 1 1 60237237
P 6625 3900
F 0 "Y1" H 6625 4168 50  0000 C CNN
F 1 "Crystal" H 6625 4077 50  0000 C CNN
F 2 "Crystal:Crystal_SMD_7050-2Pin_7.0x5.0mm" H 6625 3900 50  0001 C CNN
F 3 "~" H 6625 3900 50  0001 C CNN
	1    6625 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 6023DFC4
P 6425 4200
F 0 "C1" H 6540 4246 50  0000 L CNN
F 1 "18p" H 6540 4155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 6463 4050 50  0001 C CNN
F 3 "~" H 6425 4200 50  0001 C CNN
	1    6425 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 6023EC21
P 6850 4200
F 0 "C2" H 6965 4246 50  0000 L CNN
F 1 "18p" H 6965 4155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 6888 4050 50  0001 C CNN
F 3 "~" H 6850 4200 50  0001 C CNN
	1    6850 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 6023FF9F
P 6425 4600
F 0 "#PWR0101" H 6425 4350 50  0001 C CNN
F 1 "GND" H 6430 4427 50  0000 C CNN
F 2 "" H 6425 4600 50  0001 C CNN
F 3 "" H 6425 4600 50  0001 C CNN
	1    6425 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 602466DB
P 6850 4600
F 0 "#PWR0102" H 6850 4350 50  0001 C CNN
F 1 "GND" H 6855 4427 50  0000 C CNN
F 2 "" H 6850 4600 50  0001 C CNN
F 3 "" H 6850 4600 50  0001 C CNN
	1    6850 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 4600 6850 4350
Wire Wire Line
	6425 4600 6425 4350
Wire Wire Line
	6475 3900 6425 3900
Wire Wire Line
	6425 3900 6425 4050
Wire Wire Line
	6775 3900 6850 3900
Wire Wire Line
	6850 3900 6850 4050
Text GLabel 6250 3900 0    50   Input ~ 0
PF0
Text GLabel 7050 3900 2    50   Input ~ 0
PF1
Wire Wire Line
	7050 3900 6850 3900
Connection ~ 6850 3900
Wire Wire Line
	6250 3900 6425 3900
Connection ~ 6425 3900
Text GLabel 3200 950  1    50   Input ~ 0
3v3
$Comp
L power:GND #PWR0103
U 1 1 602850EA
P 7350 1550
F 0 "#PWR0103" H 7350 1300 50  0001 C CNN
F 1 "GND" H 7355 1377 50  0000 C CNN
F 2 "" H 7350 1550 50  0001 C CNN
F 3 "" H 7350 1550 50  0001 C CNN
	1    7350 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 1550 7350 1400
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J3
U 1 1 6028C416
P 8675 1775
F 0 "J3" H 8725 2292 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 8725 2201 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x08_P2.54mm_Vertical" H 8675 1775 50  0001 C CNN
F 3 "~" H 8675 1775 50  0001 C CNN
	1    8675 1775
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 60296631
P 8125 2425
F 0 "#PWR0104" H 8125 2175 50  0001 C CNN
F 1 "GND" H 8130 2252 50  0000 C CNN
F 2 "" H 8125 2425 50  0001 C CNN
F 3 "" H 8125 2425 50  0001 C CNN
	1    8125 2425
	1    0    0    -1  
$EndComp
Wire Wire Line
	8125 2425 8125 2075
Wire Wire Line
	8125 2075 8475 2075
Wire Wire Line
	8475 1975 8125 1975
Wire Wire Line
	8125 1975 8125 2075
Connection ~ 8125 2075
Wire Wire Line
	8475 1875 8125 1875
Wire Wire Line
	8125 1875 8125 1975
Connection ~ 8125 1975
$Comp
L power:GND #PWR0105
U 1 1 602A4B9C
P 9425 2350
F 0 "#PWR0105" H 9425 2100 50  0001 C CNN
F 1 "GND" H 9430 2177 50  0000 C CNN
F 2 "" H 9425 2350 50  0001 C CNN
F 3 "" H 9425 2350 50  0001 C CNN
	1    9425 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8975 2075 9425 2075
Wire Wire Line
	9425 2075 9425 2350
Wire Wire Line
	8975 1975 9425 1975
Wire Wire Line
	9425 1975 9425 2075
Connection ~ 9425 2075
Wire Wire Line
	8975 1875 9425 1875
Wire Wire Line
	9425 1875 9425 1975
Connection ~ 9425 1975
Text GLabel 9075 1675 2    50   Input ~ 0
5v
Text GLabel 8325 1675 0    50   Input ~ 0
5v
Text GLabel 6875 1100 0    50   Input ~ 0
5v
Wire Wire Line
	6875 1100 7050 1100
Wire Wire Line
	7875 1100 7650 1100
Text GLabel 3100 950  1    50   Input ~ 0
3v3
Text GLabel 3000 950  1    50   Input ~ 0
3v3
$Comp
L Device:L L1
U 1 1 602E4B32
P 8000 3250
F 0 "L1" V 7819 3250 50  0000 C CNN
F 1 "100u" V 7910 3250 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric_Pad1.05x1.20mm_HandSolder" H 8000 3250 50  0001 C CNN
F 3 "~" H 8000 3250 50  0001 C CNN
	1    8000 3250
	0    1    1    0   
$EndComp
$Comp
L Device:C C3
U 1 1 602EC376
P 7675 3400
F 0 "C3" H 7790 3446 50  0000 L CNN
F 1 "100n" H 7790 3355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 7713 3250 50  0001 C CNN
F 3 "~" H 7675 3400 50  0001 C CNN
	1    7675 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 602ECF54
P 8350 3400
F 0 "C4" H 8465 3446 50  0000 L CNN
F 1 "100n" H 8465 3355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 8388 3250 50  0001 C CNN
F 3 "~" H 8350 3400 50  0001 C CNN
	1    8350 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 3250 8150 3250
Wire Wire Line
	7850 3250 7675 3250
Text GLabel 7875 1100 2    50   Input ~ 0
3v3
Text GLabel 8875 3250 2    50   Input ~ 0
3v3
Text GLabel 7325 3250 0    50   Input ~ 0
3v3a
Connection ~ 7675 3250
Connection ~ 8350 3250
$Comp
L power:GND #PWR0106
U 1 1 60310D14
P 8350 3750
F 0 "#PWR0106" H 8350 3500 50  0001 C CNN
F 1 "GND" H 8355 3577 50  0000 C CNN
F 2 "" H 8350 3750 50  0001 C CNN
F 3 "" H 8350 3750 50  0001 C CNN
	1    8350 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 3750 8350 3625
Wire Wire Line
	7675 3750 7675 3625
Text GLabel 3300 950  1    50   Input ~ 0
3v3a
$Comp
L power:GNDA #PWR0107
U 1 1 60323CE6
P 7675 3750
F 0 "#PWR0107" H 7675 3500 50  0001 C CNN
F 1 "GNDA" H 7680 3577 50  0000 C CNN
F 2 "" H 7675 3750 50  0001 C CNN
F 3 "" H 7675 3750 50  0001 C CNN
	1    7675 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 603254D2
P 8000 3625
F 0 "R1" V 7793 3625 50  0000 C CNN
F 1 "0" V 7884 3625 50  0000 C CNN
F 2 "NetTie:NetTie-2_SMD_Pad0.5mm" V 7930 3625 50  0001 C CNN
F 3 "~" H 8000 3625 50  0001 C CNN
	1    8000 3625
	0    1    1    0   
$EndComp
Wire Wire Line
	8150 3625 8350 3625
Connection ~ 8350 3625
Wire Wire Line
	8350 3625 8350 3550
Wire Wire Line
	7850 3625 7675 3625
Connection ~ 7675 3625
Wire Wire Line
	7675 3625 7675 3550
Text GLabel 1475 3725 2    50   Input ~ 0
3v3
$Comp
L power:GND #PWR0108
U 1 1 6034C3E7
P 775 3725
F 0 "#PWR0108" H 775 3475 50  0001 C CNN
F 1 "GND" V 780 3597 50  0000 R CNN
F 2 "" H 775 3725 50  0001 C CNN
F 3 "" H 775 3725 50  0001 C CNN
	1    775  3725
	0    1    1    0   
$EndComp
Wire Wire Line
	775  3725 875  3725
Wire Wire Line
	1375 3725 1475 3725
Text GLabel 9075 2175 2    50   Input ~ 0
-12v
Text GLabel 8400 2175 0    50   Input ~ 0
-12v
Text GLabel 9075 1775 2    50   Input ~ 0
12v
Text GLabel 8375 1775 0    50   Input ~ 0
12v
Wire Wire Line
	9075 1775 8975 1775
Wire Wire Line
	9075 1675 8975 1675
Wire Wire Line
	8375 1775 8475 1775
Wire Wire Line
	8325 1675 8475 1675
Wire Wire Line
	8400 2175 8475 2175
Wire Wire Line
	9075 2175 8975 2175
Text GLabel 750  3825 0    50   Input ~ 0
5v
Text GLabel 900  1500 0    50   Input ~ 0
12v
Text GLabel 1400 1400 2    50   Input ~ 0
-12v
$Comp
L power:GND #PWR0110
U 1 1 60137C23
P 3100 5050
F 0 "#PWR0110" H 3100 4800 50  0001 C CNN
F 1 "GND" H 3105 4877 50  0000 C CNN
F 2 "" H 3100 5050 50  0001 C CNN
F 3 "" H 3100 5050 50  0001 C CNN
	1    3100 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0111
U 1 1 6013A20A
P 3200 5050
F 0 "#PWR0111" H 3200 4800 50  0001 C CNN
F 1 "GNDA" H 3205 4877 50  0000 C CNN
F 2 "" H 3200 5050 50  0001 C CNN
F 3 "" H 3200 5050 50  0001 C CNN
	1    3200 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 6650 3250 6575
Wire Wire Line
	3350 6325 3350 6575
Wire Wire Line
	3350 6575 3250 6575
Connection ~ 3250 6575
Wire Wire Line
	3250 6575 3250 6325
Wire Wire Line
	3450 6650 3450 6575
Wire Wire Line
	3550 6325 3550 6575
Wire Wire Line
	3550 6575 3450 6575
Connection ~ 3450 6575
Wire Wire Line
	3450 6575 3450 6325
Text GLabel 3400 950  1    50   Input ~ 0
3v3a
Text GLabel 3750 925  1    50   Input ~ 0
3v3a
Wire Wire Line
	750  3825 875  3825
$Comp
L Device:C C5
U 1 1 601947B1
P 7450 3400
F 0 "C5" H 7150 3450 50  0000 L CNN
F 1 "100n" H 7150 3350 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 7488 3250 50  0001 C CNN
F 3 "~" H 7450 3400 50  0001 C CNN
	1    7450 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7675 3625 7450 3625
Wire Wire Line
	7450 3625 7450 3550
Wire Wire Line
	7450 3250 7675 3250
Wire Wire Line
	7325 3250 7450 3250
Connection ~ 7450 3250
$Comp
L Reference_Voltage:LM4040DCK-2.5 U4
U 1 1 601B9C1F
P 7900 4825
F 0 "U4" V 7946 4737 50  0000 R CNN
F 1 "LM4040DCK-2.5" V 7855 4737 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5" H 7900 4625 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm4040-n.pdf" H 7900 4825 50  0001 C CIN
	1    7900 4825
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 601BC1AD
P 7900 4425
F 0 "R2" H 7970 4471 50  0000 L CNN
F 1 "1k" H 7970 4380 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 7830 4425 50  0001 C CNN
F 3 "~" H 7900 4425 50  0001 C CNN
	1    7900 4425
	1    0    0    -1  
$EndComp
Text GLabel 7800 4275 0    50   Input ~ 0
3v3a
Wire Wire Line
	7800 4275 7900 4275
Text GLabel 7450 4625 0    50   Input ~ 0
Ref2v5
$Comp
L power:GNDA #PWR0112
U 1 1 601D6040
P 7900 5050
F 0 "#PWR0112" H 7900 4800 50  0001 C CNN
F 1 "GNDA" H 7905 4877 50  0000 C CNN
F 2 "" H 7900 5050 50  0001 C CNN
F 3 "" H 7900 5050 50  0001 C CNN
	1    7900 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 5050 7900 4975
Text GLabel 2275 1550 0    50   Input ~ 0
Ref2v5
$Comp
L power:GNDA #PWR0113
U 1 1 601E0911
P 2150 1825
F 0 "#PWR0113" H 2150 1575 50  0001 C CNN
F 1 "GNDA" H 2155 1652 50  0000 C CNN
F 2 "" H 2150 1825 50  0001 C CNN
F 3 "" H 2150 1825 50  0001 C CNN
	1    2150 1825
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 603B3739
P 900 1400
F 0 "#PWR0109" H 900 1150 50  0001 C CNN
F 1 "GND" V 905 1272 50  0000 R CNN
F 2 "" H 900 1400 50  0001 C CNN
F 3 "" H 900 1400 50  0001 C CNN
	1    900  1400
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x04_Male J4
U 1 1 602527FA
P 9650 2975
F 0 "J4" H 9758 3256 50  0000 C CNN
F 1 "Conn_01x04_Male" H 9758 3165 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 9650 2975 50  0001 C CNN
F 3 "~" H 9650 2975 50  0001 C CNN
	1    9650 2975
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 602539EC
P 9975 3175
F 0 "#PWR0114" H 9975 2925 50  0001 C CNN
F 1 "GND" H 9980 3002 50  0000 C CNN
F 2 "" H 9975 3175 50  0001 C CNN
F 3 "" H 9975 3175 50  0001 C CNN
	1    9975 3175
	1    0    0    -1  
$EndComp
Wire Wire Line
	9975 3175 9850 3175
Text GLabel 9850 2875 2    50   Input ~ 0
3v3
Text GLabel 8700 2900 0    50   Input ~ 0
PA13
Text GLabel 8750 2900 2    50   Input ~ 0
SWDIO
Text GLabel 9850 2975 2    50   Input ~ 0
SWDIO
Text GLabel 8750 3000 2    50   Input ~ 0
SWCLK
Text GLabel 8700 3000 0    50   Input ~ 0
PA14
Text GLabel 9850 3075 2    50   Input ~ 0
SWCLK
Wire Wire Line
	8750 3000 8700 3000
Wire Wire Line
	8750 2900 8700 2900
$Comp
L MCU_ST_STM32F3:STM32F373RCTx U1
U 1 1 602E0BEA
P 3100 2750
F 0 "U1" H 3100 761 50  0000 C CNN
F 1 "STM32F373RCTx" H 3100 670 50  0000 C CNN
F 2 "Package_QFP:LQFP-64_10x10mm_P0.5mm" H 2500 950 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00046749.pdf" H 3100 2750 50  0001 C CNN
	1    3100 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 5050 3100 4650
Wire Wire Line
	3200 4650 3200 4750
Wire Wire Line
	3200 4750 3300 4750
Wire Wire Line
	3300 4750 3300 4650
Connection ~ 3200 4750
Wire Wire Line
	3200 4750 3200 5050
Text GLabel 3800 3950 2    50   Input ~ 0
PB6
Wire Wire Line
	2275 1550 2350 1550
Wire Wire Line
	2400 1650 2350 1650
Wire Wire Line
	2350 1650 2350 1550
Connection ~ 2350 1550
Wire Wire Line
	2350 1550 2400 1550
Text GLabel 1375 3825 2    50   Input ~ 0
PB9
Text GLabel 1375 3925 2    50   Input ~ 0
PB8
$Comp
L Connector:Conn_01x02_Male J5
U 1 1 6051583D
P 4050 1200
F 0 "J5" H 4158 1381 50  0000 C CNN
F 1 "Conn_01x02_Male" H 4158 1290 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4050 1200 50  0001 C CNN
F 3 "~" H 4050 1200 50  0001 C CNN
	1    4050 1200
	1    0    0    -1  
$EndComp
Text GLabel 2400 1150 0    50   Input ~ 0
NRST
Text GLabel 2400 1350 0    50   Input ~ 0
BOOT0
Text GLabel 4250 1300 2    50   Input ~ 0
NRST
Text GLabel 4250 1200 2    50   Input ~ 0
BOOT0
Text GLabel 1400 1900 2    50   Input ~ 0
PA0
Text GLabel 900  2000 0    50   Input ~ 0
PA1
Text GLabel 1400 2000 2    50   Input ~ 0
PA2
Text GLabel 900  2100 0    50   Input ~ 0
PA3
Text GLabel 1400 1500 2    50   Input ~ 0
Ref2v5
Text GLabel 2400 2650 0    50   Input ~ 0
PD2
Text GLabel 2400 2750 0    50   Input ~ 0
PD8
Text GLabel 900  1600 0    50   Input ~ 0
PC13
Text GLabel 1400 1600 2    50   Input ~ 0
PC14
Text GLabel 900  1700 0    50   Input ~ 0
PC15
Text GLabel 1400 1700 2    50   Input ~ 0
PC0
Text GLabel 900  1800 0    50   Input ~ 0
PC1
Text GLabel 1400 1800 2    50   Input ~ 0
PC2
Text GLabel 900  1900 0    50   Input ~ 0
PC3
Text GLabel 1400 2100 2    50   Input ~ 0
PA4
Text GLabel 900  2200 0    50   Input ~ 0
PA5
Text GLabel 1400 2200 2    50   Input ~ 0
PA6
Text GLabel 900  2300 0    50   Input ~ 0
PA7
Text GLabel 1400 2300 2    50   Input ~ 0
PC4
Text GLabel 900  2400 0    50   Input ~ 0
PC5
Text GLabel 1400 2400 2    50   Input ~ 0
PB0
Text GLabel 900  2500 0    50   Input ~ 0
PB1
Text GLabel 1400 2500 2    50   Input ~ 0
PB2
Text GLabel 900  2600 0    50   Input ~ 0
PE8
Text GLabel 1400 2600 2    50   Input ~ 0
PE9
$Comp
L Device:C C7
U 1 1 6021A29B
P 8750 3400
F 0 "C7" H 8865 3446 50  0000 L CNN
F 1 "10n" H 8865 3355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 8788 3250 50  0001 C CNN
F 3 "~" H 8750 3400 50  0001 C CNN
	1    8750 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 3250 8750 3250
Connection ~ 8750 3250
Wire Wire Line
	8750 3250 8875 3250
Wire Wire Line
	8750 3550 8750 3625
Wire Wire Line
	8750 3625 8350 3625
$Comp
L Device:C C6
U 1 1 6022C963
P 7650 4850
F 0 "C6" H 7400 4875 50  0000 L CNN
F 1 "10n" H 7400 4800 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 7688 4700 50  0001 C CNN
F 3 "~" H 7650 4850 50  0001 C CNN
	1    7650 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 4575 7900 4625
Wire Wire Line
	7900 5050 7650 5050
Wire Wire Line
	7650 5050 7650 5000
Connection ~ 7900 5050
Wire Wire Line
	7450 4625 7650 4625
Connection ~ 7900 4625
Wire Wire Line
	7900 4625 7900 4675
Wire Wire Line
	7650 4700 7650 4625
Connection ~ 7650 4625
Wire Wire Line
	7650 4625 7900 4625
Text GLabel 875  3925 0    50   Input ~ 0
PB3
Text GLabel 1375 4025 2    50   Input ~ 0
PD2
Text GLabel 875  4025 0    50   Input ~ 0
PC12
Text GLabel 1375 4125 2    50   Input ~ 0
PC11
Text GLabel 875  4125 0    50   Input ~ 0
PC10
Text GLabel 1375 4225 2    50   Input ~ 0
PA15
Text GLabel 875  4225 0    50   Input ~ 0
PB4
Text GLabel 1375 4325 2    50   Input ~ 0
PB5
Text GLabel 875  4325 0    50   Input ~ 0
PB6
Text GLabel 1375 4425 2    50   Input ~ 0
PB7
Text GLabel 875  4425 0    50   Input ~ 0
PF7
Text GLabel 1375 4525 2    50   Input ~ 0
PF6
Text GLabel 875  4525 0    50   Input ~ 0
PA12
Text GLabel 1375 4625 2    50   Input ~ 0
PA11
Text GLabel 875  4625 0    50   Input ~ 0
PA10
Text GLabel 1375 4725 2    50   Input ~ 0
PA9
Text GLabel 875  4725 0    50   Input ~ 0
PA8
Text GLabel 1375 4825 2    50   Input ~ 0
PC9
Text GLabel 875  4825 0    50   Input ~ 0
PC8
Text GLabel 1375 4925 2    50   Input ~ 0
PC7
Text GLabel 875  4925 0    50   Input ~ 0
PC6
Text GLabel 1375 5025 2    50   Input ~ 0
PD8
Text GLabel 875  5025 0    50   Input ~ 0
PB15
Text GLabel 1375 5125 2    50   Input ~ 0
PB14
$Comp
L power:GND #PWR0115
U 1 1 602B5878
P 900 2700
F 0 "#PWR0115" H 900 2450 50  0001 C CNN
F 1 "GND" V 905 2572 50  0000 R CNN
F 2 "" H 900 2700 50  0001 C CNN
F 3 "" H 900 2700 50  0001 C CNN
	1    900  2700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 602B62C3
P 875 5125
F 0 "#PWR0116" H 875 4875 50  0001 C CNN
F 1 "GND" V 880 4997 50  0000 R CNN
F 2 "" H 875 5125 50  0001 C CNN
F 3 "" H 875 5125 50  0001 C CNN
	1    875  5125
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 602D13CC
P 1400 2700
F 0 "#PWR0117" H 1400 2450 50  0001 C CNN
F 1 "GND" V 1405 2572 50  0000 R CNN
F 2 "" H 1400 2700 50  0001 C CNN
F 3 "" H 1400 2700 50  0001 C CNN
	1    1400 2700
	0    -1   -1   0   
$EndComp
$EndSCHEMATC