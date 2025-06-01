EESchema Schematic File Version 5
EELAYER 36 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "RC switch with solid state relay 2A"
Date "2019-06-16"
Rev "0"
Comp "CyberNet-RC"
Comment1 ""
Comment2 "V.Panfilov"
Comment3 ""
Comment4 ""
Comment5 ""
Comment6 ""
Comment7 ""
Comment8 ""
Comment9 ""
$EndDescr
Connection ~ 2200 2450
Connection ~ 2350 1850
Connection ~ 2650 2750
Connection ~ 2650 3150
Connection ~ 3350 2750
Connection ~ 4050 2150
Connection ~ 4050 3150
Connection ~ 4600 3150
Connection ~ 6050 2350
Connection ~ 6500 2700
Connection ~ 6600 2800
Wire Wire Line
	1700 2650 1700 3150
Wire Wire Line
	1700 3150 2650 3150
Wire Wire Line
	1900 1850 1900 2550
Wire Wire Line
	1900 2550 1700 2550
Wire Wire Line
	2200 2100 2200 2450
Wire Wire Line
	2200 2450 1700 2450
Wire Wire Line
	2200 2450 2350 2450
Wire Wire Line
	2350 1700 2350 1850
Wire Wire Line
	2350 1850 1900 1850
Wire Wire Line
	2350 1850 2350 2350
Wire Wire Line
	2650 2150 4050 2150
Wire Wire Line
	2650 2750 2650 2850
Wire Wire Line
	2650 2750 3050 2750
Wire Wire Line
	2650 3150 2650 3350
Wire Wire Line
	2650 3150 4050 3150
Wire Wire Line
	2950 2350 3050 2350
Wire Wire Line
	2950 2450 4300 2450
Wire Wire Line
	2950 2550 2950 2450
Wire Wire Line
	3200 2900 3350 2900
Wire Wire Line
	3250 1850 2350 1850
Wire Wire Line
	3350 2350 3350 2750
Wire Wire Line
	3350 2900 3350 2750
Wire Wire Line
	4050 2150 4050 1850
Wire Wire Line
	4050 2150 4050 3150
Wire Wire Line
	4050 2150 4600 2150
Wire Wire Line
	4050 3150 4600 3150
Wire Wire Line
	4250 2100 2200 2100
Wire Wire Line
	4250 2350 4250 2100
Wire Wire Line
	4300 2350 4250 2350
Wire Wire Line
	4600 3150 4600 2750
Wire Wire Line
	4900 2350 5250 2350
Wire Wire Line
	5250 2550 5250 2650
Wire Wire Line
	5250 2950 5250 3150
Wire Wire Line
	5250 3150 4600 3150
Wire Wire Line
	5850 2350 6050 2350
Wire Wire Line
	5850 2450 6500 2450
Wire Wire Line
	5850 2550 6050 2550
Wire Wire Line
	6050 2350 6650 2350
Wire Wire Line
	6050 2550 6050 2350
Wire Wire Line
	6500 2450 6500 2700
Wire Wire Line
	6500 2700 6500 3000
Wire Wire Line
	6500 2700 6650 2700
Wire Wire Line
	6500 3000 6650 3000
Wire Wire Line
	6600 2450 6600 2800
Wire Wire Line
	6600 2800 6600 3100
Wire Wire Line
	6600 2800 6650 2800
Wire Wire Line
	6600 3100 6650 3100
Wire Wire Line
	6650 2450 6600 2450
Text Label 6100 2350 0    50   ~ 0
Power1
Text Label 6100 2450 0    50   ~ 0
Power2
Text Label 6600 2750 1    50   ~ 0
Power3
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5D07BF89
P 2350 1700
F 0 "#FLG01" H 2350 1775 50  0001 C CNN
F 1 "PWR_FLAG" H 2350 1873 50  0000 C CNN
F 2 "" H 2350 1700 50  0001 C CNN
F 3 "~" H 2350 1700 50  0001 C CNN
	1    2350 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5D07B731
P 2650 3350
F 0 "#PWR01" H 2650 3100 50  0001 C CNN
F 1 "GND" H 2655 3177 50  0000 C CNN
F 2 "" H 2650 3350 50  0001 C CNN
F 3 "" H 2650 3350 50  0001 C CNN
	1    2650 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5D06BE20
P 3200 2350
F 0 "R1" V 2993 2350 50  0000 C CNN
F 1 "47k" V 3084 2350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3130 2350 50  0001 C CNN
F 3 "~" H 3200 2350 50  0001 C CNN
	1    3200 2350
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5D08D9D3
P 5250 2800
F 0 "R2" H 5320 2846 50  0000 L CNN
F 1 "680" H 5320 2755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5180 2800 50  0001 C CNN
F 3 "~" H 5250 2800 50  0001 C CNN
	1    5250 2800
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 5D087FF3
P 6850 2350
F 0 "J2" H 6930 2342 50  0000 L CNN
F 1 "Conn_01x02" H 6930 2251 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 6850 2350 50  0001 C CNN
F 3 "~" H 6850 2350 50  0001 C CNN
	1    6850 2350
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 5D089D35
P 6850 2700
F 0 "J3" H 6930 2692 50  0000 L CNN
F 1 "Conn_01x02" H 6930 2601 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 6850 2700 50  0001 C CNN
F 3 "~" H 6850 2700 50  0001 C CNN
	1    6850 2700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J4
U 1 1 5D08A450
P 6850 3000
F 0 "J4" H 6930 2992 50  0000 L CNN
F 1 "Conn_01x02" H 6930 2901 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 6850 3000 50  0001 C CNN
F 3 "~" H 6850 3000 50  0001 C CNN
	1    6850 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5D06DE31
P 2650 3000
F 0 "C1" H 2765 3046 50  0000 L CNN
F 1 "22nF" H 2765 2955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2688 2850 50  0001 C CNN
F 3 "~" H 2650 3000 50  0001 C CNN
	1    2650 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV1
U 1 1 5D06C98C
P 3200 2750
F 0 "RV1" V 2993 2750 50  0000 C CNN
F 1 "100k" V 3084 2750 50  0000 C CNN
F 2 "Potentiometer_SMD:Potentiometer_Bourns_3314G_Vertical" H 3200 2750 50  0001 C CNN
F 3 "~" H 3200 2750 50  0001 C CNN
	1    3200 2750
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J1
U 1 1 5D077F92
P 1500 2550
F 0 "J1" H 1418 2867 50  0000 C CNN
F 1 "Conn_01x03" H 1418 2776 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1500 2550 50  0001 C CNN
F 3 "~" H 1500 2550 50  0001 C CNN
	1    1500 2550
	-1   0    0    -1  
$EndComp
$Comp
L Relay_SolidState:TLP3546 U2
U 1 1 5D07FD56
P 5550 2450
F 0 "U2" H 5550 2775 50  0000 C CNN
F 1 "PVG612" H 5550 2684 50  0000 C CNN
F 2 "Package_DIP:SMDIP-6_W9.53mm" H 5550 2150 50  0001 C CNN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=12671&prodName=TLP3546" H 5550 2450 50  0001 C CNN
	1    5550 2450
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4013 U1
U 3 1 5D066180
P 3650 1850
F 0 "U1" V 4017 1850 50  0000 C CNN
F 1 "4013" V 3926 1850 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 3650 1850 50  0001 C CNN
F 3 "http://www.onsemi.com/pub/Collateral/MC14013B-D.PDF" H 3650 1850 50  0001 C CNN
	3    3650 1850
	0    -1   -1   0   
$EndComp
$Comp
L 4xxx:4013 U1
U 1 1 5D06461B
P 2650 2450
F 0 "U1" H 2650 2931 50  0000 C CNN
F 1 "4013" H 2650 2840 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 2650 2450 50  0001 C CNN
F 3 "http://www.onsemi.com/pub/Collateral/MC14013B-D.PDF" H 2650 2450 50  0001 C CNN
	1    2650 2450
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4013 U1
U 2 1 5D0653AC
P 4600 2450
F 0 "U1" H 4600 2931 50  0000 C CNN
F 1 "4013" H 4600 2840 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 4600 2450 50  0001 C CNN
F 3 "http://www.onsemi.com/pub/Collateral/MC14013B-D.PDF" H 4600 2450 50  0001 C CNN
	2    4600 2450
	1    0    0    -1  
$EndComp
$EndSCHEMATC
