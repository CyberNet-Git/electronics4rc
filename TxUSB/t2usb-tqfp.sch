EESchema Schematic File Version 2  date 16/10/2009 00:28:20
LIBS:power,L:/Projects/Electronics/Library/Atmega8,device,conn,linear,regul,74xx,cmos4000,adc-dac,memory,xilinx,special,microcontrollers,dsp,microchip,analog_switches,motorola,texas,intel,audio,interface,digital-audio,philips,display,cypress,siliconi,contrib,valves,.\t2usb.cache
EELAYER 24  0
EELAYER END
$Descr A4 11700 8267
Sheet 1 1
Title ""
Date "15 oct 2009"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Connection ~ 7100 2350
Connection ~ 6900 2350
Connection ~ 6700 2350
Connection ~ 6500 2350
Connection ~ 5000 3150
Wire Wire Line
	5000 3000 5000 3150
Wire Wire Line
	9400 3750 9400 3950
Wire Wire Line
	8450 3150 8450 2350
Wire Wire Line
	8450 3150 9400 3150
Wire Wire Line
	9400 3150 9400 3550
Wire Wire Line
	8600 3650 8000 3650
Wire Wire Line
	9050 4400 9050 3850
Wire Wire Line
	9050 3850 8000 3850
Wire Wire Line
	8000 3150 8000 1750
Wire Wire Line
	8000 1750 9300 1750
Connection ~ 6800 5550
Wire Wire Line
	7000 5550 6600 5550
Connection ~ 5250 3250
Wire Wire Line
	5600 3350 5250 3350
Wire Wire Line
	5250 3350 5250 3250
Wire Wire Line
	5600 3150 3650 3150
Wire Wire Line
	3650 3150 3650 2900
Wire Wire Line
	3650 2900 3050 2900
Wire Wire Line
	6800 5700 6800 5550
Connection ~ 8750 4800
Wire Wire Line
	9050 4800 8450 4800
Wire Wire Line
	4600 2750 4600 2850
Wire Wire Line
	4600 2850 3800 2850
Wire Wire Line
	3800 2850 3800 2750
Wire Wire Line
	8450 2350 4600 2350
Wire Wire Line
	3050 2800 3550 2800
Wire Wire Line
	3550 2800 3550 2350
Wire Wire Line
	3550 2350 3800 2350
Wire Wire Line
	3050 3100 3050 3200
Wire Wire Line
	4200 3000 4200 2850
Connection ~ 4200 2850
Wire Wire Line
	8750 4900 8750 4800
Wire Wire Line
	3050 3000 3550 3000
Wire Wire Line
	3550 3000 3550 3250
Wire Wire Line
	3550 3250 5600 3250
Wire Wire Line
	9300 2150 9300 2450
Wire Wire Line
	9300 2450 10100 2450
Wire Wire Line
	10100 2450 10100 2150
Wire Wire Line
	8000 3750 8450 3750
Wire Wire Line
	8450 3750 8450 4400
Wire Wire Line
	8600 3750 8600 4150
Wire Wire Line
	8600 4150 8150 4150
Wire Wire Line
	8150 4150 8150 4750
Wire Wire Line
	8150 4750 8000 4750
Wire Wire Line
	8600 3550 8000 3550
Wire Wire Line
	9400 3650 9500 3650
Wire Wire Line
	9500 3650 9500 3450
Wire Wire Line
	9500 3450 8000 3450
Wire Wire Line
	5000 2500 5000 2350
Connection ~ 5000 2350
$Comp
L GND #PWR01
U 1 1 4AD73DB7
P 9400 3950
F 0 "#PWR01" H 9400 3950 30  0001 C CNN
F 1 "GND" H 9400 3880 30  0001 C CNN
	1    9400 3950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 4AD73CBD
P 9600 2450
F 0 "#PWR02" H 9600 2450 30  0001 C CNN
F 1 "GND" H 9600 2380 30  0001 C CNN
	1    9600 2450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 4AD73B3A
P 6800 5700
F 0 "#PWR03" H 6800 5700 30  0001 C CNN
F 1 "GND" H 6800 5630 30  0001 C CNN
	1    6800 5700
	1    0    0    -1  
$EndComp
$Comp
L CRYSTAL X1
U 1 1 4AD7398C
P 8750 4400
F 0 "X1" H 8750 4550 60  0000 C CNN
F 1 "ZTT-12MHz" H 9400 4400 60  0000 C CNN
	1    8750 4400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 4AD7398B
P 8750 4900
F 0 "#PWR04" H 8750 4900 30  0001 C CNN
F 1 "GND" H 8750 4830 30  0001 C CNN
	1    8750 4900
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 4AD7398A
P 9050 4600
F 0 "C4" H 9100 4700 50  0000 L CNN
F 1 "30pF" H 9100 4500 50  0000 L CNN
	1    9050 4600
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 4AD73989
P 8450 4600
F 0 "C3" H 8500 4700 50  0000 L CNN
F 1 "30pF" H 8500 4500 50  0000 L CNN
	1    8450 4600
	1    0    0    -1  
$EndComp
$Comp
L ATMEGA8 I1
U 1 1 4AD73912
P 6800 3900
F 0 "I1" H 7500 5300 60  0000 C CNN
F 1 "ATMEGA8" H 7450 2450 60  0000 C CNN
	1    6800 3900
	1    0    0    -1  
$EndComp
$Comp
L LT1585CM Q2
U 1 1 4AC9CF05
P 4200 2500
F 0 "Q2" H 4200 2800 60  0000 C CNN
F 1 "LP2950CZ-3.3" H 4250 2900 50  0000 C CNN
	1    4200 2500
	1    0    0    -1  
$EndComp
Text Notes 10600 2150 0    60   ~ 0
GND
Text Notes 10600 2000 0    60   ~ 0
TX
Text Notes 2350 3150 0    60   ~ 0
GND
Text Notes 2250 3050 0    60   ~ 0
DATA+
Text Notes 2250 2950 0    60   ~ 0
DATA-
Text Notes 2350 2850 0    60   ~ 0
+5V
$Comp
L GND #PWR05
U 1 1 4AC9C2E0
P 3050 3200
F 0 "#PWR05" H 3050 3200 30  0001 C CNN
F 1 "GND" H 3050 3130 30  0001 C CNN
	1    3050 3200
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P1
U 1 1 4AC9C13A
P 10450 2050
F 0 "P1" V 10400 2050 40  0000 C CNN
F 1 "TX" V 10500 2050 40  0000 C CNN
	1    10450 2050
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 4AC9C0B9
P 9850 1950
F 0 "R1" V 9930 1950 50  0000 C CNN
F 1 "10k" V 9850 1950 50  0000 C CNN
	1    9850 1950
	0    -1   1    0   
$EndComp
$Comp
L R R2
U 1 1 4AC9C052
P 9600 2200
F 0 "R2" V 9680 2200 50  0000 C CNN
F 1 "200k" V 9600 2200 50  0000 C CNN
	1    9600 2200
	-1   0    0    -1  
$EndComp
$Comp
L NPN Q1
U 1 1 4AC9C03F
P 9400 1950
F 0 "Q1" H 9550 1950 50  0000 C CNN
F 1 "BC547" H 9302 2100 50  0000 C CNN
	1    9400 1950
	-1   0    0    -1  
$EndComp
$Comp
L CONN_3X2 P3
U 1 1 4AC9BF37
P 9000 3700
F 0 "P3" H 9000 3950 50  0000 C CNN
F 1 "ISP" V 9000 3750 40  0000 C CNN
	1    9000 3700
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 4AC9BD07
P 5000 2750
F 0 "R3" V 5080 2750 50  0000 C CNN
F 1 "1.5k" V 5000 2750 50  0000 C CNN
	1    5000 2750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 4AC9BB3B
P 4200 3000
F 0 "#PWR06" H 4200 3000 30  0001 C CNN
F 1 "GND" H 4200 2930 30  0001 C CNN
	1    4200 3000
	1    0    0    -1  
$EndComp
$Comp
L CP C2
U 1 1 4AC9BB33
P 4600 2550
F 0 "C2" H 4650 2650 50  0000 L CNN
F 1 "4.7" H 4650 2450 50  0000 L CNN
	1    4600 2550
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 4AC9BB2E
P 3800 2550
F 0 "C1" H 3850 2650 50  0000 L CNN
F 1 "1.0" H 3850 2450 50  0000 L CNN
	1    3800 2550
	1    0    0    -1  
$EndComp
$Comp
L CONN_4 P2
U 1 1 4AC9BAC3
P 2700 2950
F 0 "P2" V 2650 2950 50  0000 C CNN
F 1 "USB" V 2750 2950 50  0000 C CNN
	1    2700 2950
	-1   0    0    -1  
$EndComp
$EndSCHEMATC
