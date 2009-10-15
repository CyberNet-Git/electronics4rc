EESchema Schematic File Version 2  date 14/10/2009 20:59:48
LIBS:power,conn,device
EELAYER 43  0
EELAYER END
$Descr A4 11700 8267
Sheet 1 1
Title ""
Date "14 oct 2009"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	2850 3150 4700 3150
Wire Wire Line
	2350 3450 4800 3450
Wire Wire Line
	4800 3450 4800 3300
Wire Wire Line
	2850 3300 2850 3250
Wire Wire Line
	2850 3250 2350 3250
Wire Wire Line
	2850 3050 2350 3050
Wire Wire Line
	2350 2950 2850 2950
Wire Wire Line
	2850 2950 2850 2800
Wire Wire Line
	4700 3150 4700 2800
Wire Wire Line
	4700 2800 4800 2800
$Comp
L R R?
U 1 1 4AD5CA52
P 2600 3150
F 0 "R?" V 2680 3150 50  0000 C CNN
F 1 "R" V 2600 3150 50  0000 C CNN
	1    2600 3150
	0    1    1    0   
$EndComp
$Comp
L DIODE D?
U 1 1 4AD5C9A5
P 3050 2800
F 0 "D?" H 3050 2900 40  0000 C CNN
F 1 "DIODE" H 3050 2700 40  0000 C CNN
	1    3050 2800
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 4AD5C9A4
P 3500 2800
F 0 "R?" V 3580 2800 50  0000 C CNN
F 1 "R" V 3500 2800 50  0000 C CNN
	1    3500 2800
	0    1    1    0   
$EndComp
$Comp
L DIODE D?
U 1 1 4AD5C986
P 3050 3050
F 0 "D?" H 3050 3150 40  0000 C CNN
F 1 "DIODE" H 3050 2950 40  0000 C CNN
	1    3050 3050
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 4AD5C985
P 3500 3050
F 0 "R?" V 3580 3050 50  0000 C CNN
F 1 "R" V 3500 3050 50  0000 C CNN
	1    3500 3050
	0    1    1    0   
$EndComp
$Comp
L DIODE D?
U 1 1 4AD5C92A
P 3050 3300
F 0 "D?" H 3050 3400 40  0000 C CNN
F 1 "DIODE" H 3050 3200 40  0000 C CNN
	1    3050 3300
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 4AD5C8FA
P 3500 3300
F 0 "R?" V 3580 3300 50  0000 C CNN
F 1 "R" V 3500 3300 50  0000 C CNN
	1    3500 3300
	0    1    1    0   
$EndComp
Text Notes 5300 3350 0    60   ~ 0
GND
Text Notes 5300 3250 0    60   ~ 0
RESET
Text Notes 5300 3150 0    60   ~ 0
MOSI
Text Notes 5300 3050 0    60   ~ 0
SCK
Text Notes 5300 2950 0    60   ~ 0
VCC
Text Notes 5300 2850 0    60   ~ 0
MISO
$Comp
L CONN_6 P?
U 1 1 4AD5C898
P 5150 3050
F 0 "P?" V 5100 3050 60  0000 C CNN
F 1 "CONN_6" V 5200 3050 60  0000 C CNN
	1    5150 3050
	1    0    0    -1  
$EndComp
$Comp
L DB9 J?
U 1 1 4AD5C86E
P 1900 3050
F 0 "J?" H 1900 3600 70  0000 C CNN
F 1 "DB9" H 1900 2500 70  0000 C CNN
	1    1900 3050
	-1   0    0    1   
$EndComp
$EndSCHEMATC
