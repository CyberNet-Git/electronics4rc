EESchema Schematic File Version 2
LIBS:power,/home/vvp/Hobby/Electronics/KiCAD/converted/atmega8,device,conn,linear,regul,74xx,cmos4000,adc-dac,memory,xilinx,special,microcontrollers,dsp,microchip,analog_switches,motorola,texas,intel,audio,interface,digital-audio,philips,display,cypress,siliconi,contrib,valves
EELAYER 24  0
EELAYER END
$Descr A4 11700 8267
Sheet 1 1
Title ""
Date "5 oct 2009"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Connection ~ 4200 2850
Wire Wire Line
	4200 2850 4200 3000
Wire Wire Line
	3050 3100 3050 3200
Wire Wire Line
	8300 4900 8200 4900
Wire Wire Line
	5000 5100 3000 5100
Connection ~ 4200 5100
Connection ~ 3400 4750
Wire Wire Line
	3400 4950 3400 4750
Wire Wire Line
	3900 4750 3250 4750
Wire Wire Line
	8200 2700 8550 2700
Wire Wire Line
	8550 2700 8550 5450
Wire Wire Line
	8550 5450 5800 5450
Wire Wire Line
	5800 5450 5800 5100
Wire Wire Line
	5800 4800 5700 4800
Wire Wire Line
	5700 4800 5700 4700
Wire Wire Line
	5700 4700 4700 4700
Wire Wire Line
	4700 4700 4700 5000
Wire Wire Line
	4700 5000 5000 5000
Connection ~ 9050 3900
Wire Wire Line
	9050 4000 9050 3900
Wire Wire Line
	8200 3300 9350 3300
Wire Wire Line
	9350 3300 9350 3500
Connection ~ 5650 3700
Wire Wire Line
	5650 3700 5650 3800
Wire Wire Line
	5650 3800 5800 3800
Connection ~ 5000 2350
Wire Wire Line
	5000 2700 5000 2350
Wire Wire Line
	5800 3700 3500 3700
Wire Wire Line
	3500 3700 3500 3000
Wire Wire Line
	3500 3000 3050 3000
Wire Wire Line
	3800 2350 3550 2350
Wire Wire Line
	3550 2350 3550 2800
Wire Wire Line
	3550 2800 3050 2800
Wire Wire Line
	3050 2900 3550 2900
Wire Wire Line
	3550 2900 3550 3600
Wire Wire Line
	3550 3600 5800 3600
Wire Wire Line
	5000 3200 5000 3600
Connection ~ 5000 3600
Wire Wire Line
	8200 3500 8750 3500
Wire Wire Line
	9350 3900 8750 3900
Wire Wire Line
	8200 3800 8450 3800
Wire Wire Line
	8450 3800 8450 2350
Wire Wire Line
	8450 2350 4600 2350
Wire Wire Line
	5000 4900 4850 4900
Wire Wire Line
	4850 4900 4850 2350
Connection ~ 4850 2350
Wire Wire Line
	5000 5100 5000 5300
Wire Wire Line
	5800 4500 4200 4500
Wire Wire Line
	3900 4950 4200 4950
Wire Wire Line
	4200 4950 4200 5100
Wire Wire Line
	2750 4950 3000 4950
Wire Wire Line
	3000 4950 3000 5100
Connection ~ 3000 5100
Wire Wire Line
	4200 4500 4200 4550
Wire Wire Line
	8200 4700 8300 4700
Wire Wire Line
	8300 4700 8300 5050
Connection ~ 8300 4900
Wire Wire Line
	3800 2750 3800 2850
Wire Wire Line
	3800 2850 4600 2850
Wire Wire Line
	4600 2850 4600 2750
$Comp
L LT1585CM Q2
U 1 1 4AC9CF05
P 4200 2500
F 0 "Q2" H 4200 2800 60  0000 C C
F 1 "LP2950CZ-3.3" H 4250 2900 50  0000 C C
	1    4200 2500
	1    0    0    -1  
$EndComp
$Comp
L CRYSTAL X1
U 1 1 4AC9CD64
P 9050 3500
F 0 "X1" H 9050 3650 60  0000 C C
F 1 "ZTT-12MHz" H 9050 3750 60  0000 C C
	1    9050 3500
	1    0    0    -1  
$EndComp
Text Notes 2100 4950 0    60   ~
GND
Text Notes 2150 4800 0    60   ~
TX
Text Notes 2350 3150 0    60   ~
GND
Text Notes 2250 3050 0    60   ~
DATA+
Text Notes 2250 2950 0    60   ~
DATA-
Text Notes 2350 2850 0    60   ~
+5V
$Comp
L GND #PWR01
U 1 1 4AC9C2E0
P 3050 3200
F 0 "#PWR01" H 3050 3200 30  0001 C C
F 1 "GND" H 3050 3130 30  0001 C C
	1    3050 3200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 4AC9C19B
P 8300 5050
F 0 "#PWR02" H 8300 5050 30  0001 C C
F 1 "GND" H 8300 4980 30  0001 C C
	1    8300 5050
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P1
U 1 1 4AC9C13A
P 2400 4850
F 0 "P1" V 2350 4850 40  0000 C C
F 1 "TX" V 2450 4850 40  0000 C C
	1    2400 4850
	-1   0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 4AC9C0B9
P 3000 4750
F 0 "R1" V 3080 4750 50  0000 C C
F 1 "10k" V 3000 4750 50  0000 C C
	1    3000 4750
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 4AC9C052
P 3650 4950
F 0 "R2" V 3730 4950 50  0000 C C
F 1 "200k" V 3650 4950 50  0000 C C
	1    3650 4950
	0    1    1    0   
$EndComp
$Comp
L NPN Q1
U 1 1 4AC9C03F
P 4100 4750
F 0 "Q1" H 4250 4750 50  0000 C C
F 1 "BC547" H 4002 4900 50  0000 C C
	1    4100 4750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 4AC9BFE3
P 5000 5300
F 0 "#PWR03" H 5000 5300 30  0001 C C
F 1 "GND" H 5000 5230 30  0001 C C
	1    5000 5300
	1    0    0    -1  
$EndComp
$Comp
L CONN_3X2 P3
U 1 1 4AC9BF37
P 5400 5050
F 0 "P3" H 5400 5300 50  0000 C C
F 1 "ISP" V 5400 5100 40  0000 C C
	1    5400 5050
	-1   0    0    -1  
$EndComp
$Comp
L ATMEGA8-PU IC1
U 1 1 4AC9BAD6
P 7000 3800
F 0 "IC1" H 6000 5100 50  0000 L B
F 1 "ATMEGA8-PU" H 6000 2400 50  0000 L B
F 2 "atmega8-DIL28-3" H 7000 3950 50  0001 C C
	1    7000 3800
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 4AC9BE54
P 9050 4000
F 0 "#PWR04" H 9050 4000 30  0001 C C
F 1 "GND" H 9050 3930 30  0001 C C
	1    9050 4000
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 4AC9BE35
P 9350 3700
F 0 "C4" H 9400 3800 50  0000 L C
F 1 "30pF" H 9400 3600 50  0000 L C
	1    9350 3700
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 4AC9BE32
P 8750 3700
F 0 "C3" H 8800 3800 50  0000 L C
F 1 "30pF" H 8800 3600 50  0000 L C
	1    8750 3700
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 4AC9BD07
P 5000 2950
F 0 "R3" V 5080 2950 50  0000 C C
F 1 "1.5k" V 5000 2950 50  0000 C C
	1    5000 2950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 4AC9BB3B
P 4200 3000
F 0 "#PWR05" H 4200 3000 30  0001 C C
F 1 "GND" H 4200 2930 30  0001 C C
	1    4200 3000
	1    0    0    -1  
$EndComp
$Comp
L CP C2
U 1 1 4AC9BB33
P 4600 2550
F 0 "C2" H 4650 2650 50  0000 L C
F 1 "4.7" H 4650 2450 50  0000 L C
	1    4600 2550
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 4AC9BB2E
P 3800 2550
F 0 "C1" H 3850 2650 50  0000 L C
F 1 "1.0" H 3850 2450 50  0000 L C
	1    3800 2550
	1    0    0    -1  
$EndComp
$Comp
L CONN_4 P2
U 1 1 4AC9BAC3
P 2700 2950
F 0 "P2" V 2650 2950 50  0000 C C
F 1 "USB" V 2750 2950 50  0000 C C
	1    2700 2950
	-1   0    0    -1  
$EndComp
$EndSCHEMATC
