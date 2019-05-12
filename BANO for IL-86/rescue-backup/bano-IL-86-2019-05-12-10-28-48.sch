EESchema Schematic File Version 2  date 02.02.2013 21:56:02
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
EELAYER 43  0
EELAYER END
$Descr A4 11700 8267
encoding utf-8
Sheet 1 1
Title ""
Date "2 feb 2013"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	5900 2350 5900 3450
Wire Wire Line
	3700 2750 4000 2750
Wire Wire Line
	5900 2150 3900 2150
Wire Wire Line
	5300 3450 5300 3300
Wire Wire Line
	3900 3450 3900 3300
Connection ~ 4700 2750
Wire Wire Line
	4700 2650 4700 3100
Wire Wire Line
	4700 3100 4200 3100
Wire Wire Line
	5300 2650 5300 2900
Wire Wire Line
	3900 2650 3900 2900
Connection ~ 4700 2150
Wire Wire Line
	4700 2750 4800 2750
Wire Wire Line
	4500 2750 4400 2750
Connection ~ 4500 2150
Connection ~ 5300 2150
Connection ~ 3900 2750
Connection ~ 5300 2750
Connection ~ 3900 2150
Wire Wire Line
	5000 3100 5000 2900
Wire Wire Line
	5000 2900 4500 2900
Wire Wire Line
	4500 2900 4500 2650
Connection ~ 4500 2750
Wire Wire Line
	4600 3550 4600 3450
Connection ~ 4600 3450
Connection ~ 5750 2150
Connection ~ 4600 3550
Connection ~ 5300 3450
Wire Wire Line
	5200 2750 5300 2750
Wire Wire Line
	3700 2950 3700 3450
Wire Wire Line
	3700 3450 5900 3450
Connection ~ 3900 3450
$Comp
L CONN_2 P1
U 1 1 510CDB4E
P 6250 2250
F 0 "P1" V 6200 2250 40  0000 C CNN
F 1 "CONN_2" V 6300 2250 40  0000 C CNN
	1    6250 2250
	1    0    0    1   
$EndComp
$Comp
L CONN_2 P3
U 1 1 510CD2D0
P 3350 2850
F 0 "P3" V 3300 2850 40  0000 C CNN
F 1 "CONN_2" V 3400 2850 40  0000 C CNN
	1    3350 2850
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR01
U 1 1 510CBC67
P 4600 3550
F 0 "#PWR01" H 4600 3550 30  0001 C CNN
F 1 "GND" H 4600 3480 30  0001 C CNN
	1    4600 3550
	1    0    0    -1  
$EndComp
$Comp
L +3,3V #PWR02
U 1 1 510CBB75
P 5750 2150
F 0 "#PWR02" H 5750 2110 30  0001 C CNN
F 1 "+3,3V" H 5750 2260 30  0000 C CNN
	1    5750 2150
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 510CBB24
P 5300 2400
F 0 "R4" V 5380 2400 50  0000 C CNN
F 1 "R" V 5300 2400 50  0000 C CNN
	1    5300 2400
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 510CBB21
P 3900 2400
F 0 "R1" V 4000 2400 50  0000 C CNN
F 1 "R" V 3900 2400 50  0000 C CNN
	1    3900 2400
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 510CBACB
P 4700 2400
F 0 "R3" V 4780 2400 50  0000 C CNN
F 1 "R" V 4700 2400 50  0000 C CNN
	1    4700 2400
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 510CBAC0
P 4500 2400
F 0 "R2" V 4580 2400 50  0000 C CNN
F 1 "R" V 4500 2400 50  0000 C CNN
	1    4500 2400
	1    0    0    -1  
$EndComp
$Comp
L CP C2
U 1 1 510CBAB7
P 5000 2750
F 0 "C2" H 5050 2850 50  0000 L CNN
F 1 "CP" H 5050 2650 50  0000 L CNN
	1    5000 2750
	0    1    1    0   
$EndComp
$Comp
L CP C1
U 1 1 510CBAB1
P 4200 2750
F 0 "C1" H 4250 2850 50  0000 L CNN
F 1 "CP" H 4250 2650 50  0000 L CNN
	1    4200 2750
	0    -1   -1   0   
$EndComp
$Comp
L NPN Q2
U 1 1 510CBA93
P 5200 3100
F 0 "Q2" H 5200 2950 50  0000 R CNN
F 1 "NPN" H 5200 3250 50  0000 R CNN
	1    5200 3100
	1    0    0    -1  
$EndComp
$Comp
L NPN Q1
U 1 1 510CBA8B
P 4000 3100
F 0 "Q1" H 4000 2950 50  0000 R CNN
F 1 "NPN" H 4000 3250 50  0000 R CNN
	1    4000 3100
	-1   0    0    -1  
$EndComp
$EndSCHEMATC
