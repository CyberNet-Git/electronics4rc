EESchema Schematic File Version 4
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "17 oct 2009"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	5350 4000 5500 4000
Connection ~ 4350 4100
Wire Wire Line
	4350 4100 4050 4100
Wire Wire Line
	4050 4100 4050 4200
Wire Wire Line
	4850 4000 4150 4000
Wire Wire Line
	6450 4200 4850 4200
Wire Wire Line
	4850 4200 4850 4500
Wire Wire Line
	4850 4900 5500 4900
Wire Wire Line
	4550 4700 4350 4700
Wire Wire Line
	4150 4000 4150 3050
Wire Wire Line
	4250 3050 4250 3800
Wire Wire Line
	4250 3800 6450 3800
Connection ~ 6300 3900
Wire Wire Line
	6300 3900 6450 3900
Connection ~ 6300 4500
Wire Wire Line
	6300 4500 6450 4500
Connection ~ 6300 4300
Wire Wire Line
	6300 4300 6450 4300
Connection ~ 4450 3300
Wire Wire Line
	4450 3300 4650 3300
Wire Wire Line
	4650 3300 4650 3050
Wire Wire Line
	5350 3600 5850 3600
Wire Wire Line
	4450 3050 4450 3300
Wire Wire Line
	3950 3050 3950 3150
Wire Wire Line
	6450 3500 6300 3500
Wire Wire Line
	6300 3500 6300 3700
Wire Wire Line
	6300 4400 6450 4400
Connection ~ 6300 4400
Wire Wire Line
	6300 4100 6450 4100
Connection ~ 6300 4100
Wire Wire Line
	6300 3700 6450 3700
Connection ~ 6300 3700
Connection ~ 5850 3600
Connection ~ 5500 4000
Wire Wire Line
	4350 4200 4350 4100
Wire Wire Line
	5500 4900 5500 5050
Connection ~ 5500 4900
Wire Wire Line
	4450 3600 4850 3600
Wire Wire Line
	4350 4700 4350 5400
$Comp
L pspice:R R6
U 1 1 4AD9D9BE
P 4850 5150
F 0 "R6" V 4930 5150 50  0000 C CNN
F 1 "4K7" V 4850 5150 50  0000 C CNN
F 2 "" H 4850 5150 50  0001 C CNN
F 3 "" H 4850 5150 50  0001 C CNN
	1    4850 5150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 4AD9D047
P 4050 5150
F 0 "#PWR01" H 4050 5150 30  0001 C CNN
F 1 "GND" H 4050 5080 30  0001 C CNN
F 2 "" H 4050 5150 50  0001 C CNN
F 3 "" H 4050 5150 50  0001 C CNN
	1    4050 5150
	1    0    0    -1  
$EndComp
$Comp
L Diode:ZYxxx D1
U 1 1 4AD9D03F
P 4050 4900
F 0 "D1" H 4050 5000 50  0000 C CNN
F 1 "5V1" H 4050 4800 40  0000 C CNN
F 2 "" H 4050 4900 50  0001 C CNN
F 3 "" H 4050 4900 50  0001 C CNN
	1    4050 4900
	0    -1   -1   0   
$EndComp
$Comp
L pspice:R R1
U 1 1 4AD9D034
P 4050 4450
F 0 "R1" V 4130 4450 50  0000 C CNN
F 1 "4K7" V 4050 4450 50  0000 C CNN
F 2 "" H 4050 4450 50  0001 C CNN
F 3 "" H 4050 4450 50  0001 C CNN
	1    4050 4450
	-1   0    0    1   
$EndComp
NoConn ~ 6450 3400
$Comp
L power:GND #PWR02
U 1 1 4AD9CE2C
P 5500 5050
F 0 "#PWR02" H 5500 5050 30  0001 C CNN
F 1 "GND" H 5500 4980 30  0001 C CNN
F 2 "" H 5500 5050 50  0001 C CNN
F 3 "" H 5500 5050 50  0001 C CNN
	1    5500 5050
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q1
U 1 1 4AD9CE0B
P 4750 4700
F 0 "Q1" H 4900 4700 50  0000 C CNN
F 1 "BC547" H 4652 4850 50  0000 C CNN
F 2 "" H 4750 4700 50  0001 C CNN
F 3 "" H 4750 4700 50  0001 C CNN
	1    4750 4700
	1    0    0    -1  
$EndComp
$Comp
L Diode:ZYxxx D3
U 1 1 4AD9CB74
P 5850 4700
F 0 "D3" H 5850 4800 50  0000 C CNN
F 1 "5V1" H 5850 4600 40  0000 C CNN
F 2 "" H 5850 4700 50  0001 C CNN
F 3 "" H 5850 4700 50  0001 C CNN
	1    5850 4700
	0    -1   -1   0   
$EndComp
$Comp
L Diode:ZYxxx D2
U 1 1 4AD9CB69
P 5500 4700
F 0 "D2" H 5500 4800 50  0000 C CNN
F 1 "5V1" H 5500 4600 40  0000 C CNN
F 2 "" H 5500 4700 50  0001 C CNN
F 3 "" H 5500 4700 50  0001 C CNN
	1    5500 4700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 4AD9CAD8
P 3950 3150
F 0 "#PWR03" H 3950 3150 30  0001 C CNN
F 1 "GND" H 3950 3080 30  0001 C CNN
F 2 "" H 3950 3150 50  0001 C CNN
F 3 "" H 3950 3150 50  0001 C CNN
	1    3950 3150
	1    0    0    -1  
$EndComp
NoConn ~ 4050 3050
NoConn ~ 4550 3050
NoConn ~ 4750 3050
$Comp
L pspice:R R2
U 1 1 4AD9B836
P 4350 4450
F 0 "R2" V 4430 4450 50  0000 C CNN
F 1 "10K" V 4350 4450 50  0000 C CNN
F 2 "" H 4350 4450 50  0001 C CNN
F 3 "" H 4350 4450 50  0001 C CNN
	1    4350 4450
	-1   0    0    1   
$EndComp
$Comp
L isp-12:ISP-12PIN P1
U 1 1 4AD9B64F
P 7300 3900
F 0 "P1" H 7000 4600 60  0000 C CNN
F 1 "ISP-12PIN" V 7200 3850 60  0000 C CNN
F 2 "" H 7300 3900 50  0001 C CNN
F 3 "" H 7300 3900 50  0001 C CNN
	1    7300 3900
	1    0    0    -1  
$EndComp
$Comp
L pspice:R R5
U 1 1 4AD5CA52
P 5100 4000
F 0 "R5" V 5180 4000 50  0000 C CNN
F 1 "4K7" V 5100 4000 50  0000 C CNN
F 2 "" H 5100 4000 50  0001 C CNN
F 3 "" H 5100 4000 50  0001 C CNN
	1    5100 4000
	0    1    1    0   
$EndComp
$Comp
L pspice:R R3
U 1 1 4AD5C9A4
P 4600 5400
F 0 "R3" V 4680 5400 50  0000 C CNN
F 1 "10K" V 4600 5400 50  0000 C CNN
F 2 "" H 4600 5400 50  0001 C CNN
F 3 "" H 4600 5400 50  0001 C CNN
	1    4600 5400
	0    1    1    0   
$EndComp
$Comp
L pspice:R R4
U 1 1 4AD5C8FA
P 5100 3600
F 0 "R4" V 5180 3600 50  0000 C CNN
F 1 "4K7" V 5100 3600 50  0000 C CNN
F 2 "" H 5100 3600 50  0001 C CNN
F 3 "" H 5100 3600 50  0001 C CNN
	1    5100 3600
	0    1    1    0   
$EndComp
$Comp
L Connector:DB9_Female J1
U 1 1 4AD5C86E
P 4350 2750
F 0 "J1" V 4600 3050 70  0000 C CNN
F 1 "DB9" V 4600 2500 70  0000 C CNN
F 2 "" H 4350 2750 50  0001 C CNN
F 3 "" H 4350 2750 50  0001 C CNN
	1    4350 2750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4350 4100 4350 3050
Wire Wire Line
	6300 3900 6300 4100
Wire Wire Line
	6300 4500 6300 4900
Wire Wire Line
	6300 4300 6300 4400
Wire Wire Line
	4450 3300 4450 3600
Wire Wire Line
	6300 4400 6300 4500
Wire Wire Line
	6300 4100 6300 4300
Wire Wire Line
	6300 3700 6300 3900
Wire Wire Line
	5850 3600 6450 3600
Wire Wire Line
	5500 4000 6450 4000
Wire Wire Line
	5500 4900 5850 4900
Wire Wire Line
	5850 3600 5850 4550
Wire Wire Line
	5500 4000 5500 4550
Wire Wire Line
	5500 4850 5500 4900
Wire Wire Line
	5850 4850 5850 4900
Connection ~ 5850 4900
Wire Wire Line
	5850 4900 6300 4900
Wire Wire Line
	4050 4700 4050 4750
Wire Wire Line
	4050 5050 4050 5150
$EndSCHEMATC
