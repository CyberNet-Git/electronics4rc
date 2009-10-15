EESchema Schematic File Version 2  date 14/10/2009 20:46:31
LIBS:power,conn,elec-unifil,interface,device
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
Text Notes 5450 3450 0    60   ~ 0
GND
Text Notes 5450 3350 0    60   ~ 0
RESET
Text Notes 5450 3250 0    60   ~ 0
MOSI
Text Notes 5450 3150 0    60   ~ 0
SCK1
Text Notes 5450 3050 0    60   ~ 0
VCC
Text Notes 5450 2950 0    60   ~ 0
MISO
Wire Wire Line
	3950 2950 3950 3850
Wire Wire Line
	3950 2950 4950 2950
Wire Wire Line
	4950 3150 4750 3150
Wire Wire Line
	4750 3150 4750 3450
Wire Wire Line
	4950 3250 3850 3250
Wire Wire Line
	4750 3450 3850 3450
Wire Wire Line
	3950 3850 3850 3850
Wire Wire Line
	3350 3250 3150 3250
Connection ~ 3650 2450
Wire Wire Line
	3650 2450 4550 2450
Wire Wire Line
	3150 2950 3300 2950
Connection ~ 3300 3950
Wire Wire Line
	3300 3950 3150 3950
Connection ~ 3300 3550
Wire Wire Line
	3300 3550 3150 3550
Connection ~ 3300 3150
Wire Wire Line
	3150 3150 3300 3150
Wire Wire Line
	3650 2650 3650 2250
Wire Wire Line
	3300 2950 3300 4350
Wire Wire Line
	3300 4350 3150 4350
Wire Wire Line
	3300 3350 3150 3350
Connection ~ 3300 3350
Wire Wire Line
	3300 3750 3150 3750
Connection ~ 3300 3750
Connection ~ 3300 4150
Wire Wire Line
	3350 3850 3150 3850
Wire Wire Line
	3150 3450 3350 3450
Wire Wire Line
	3150 3050 4350 3050
Wire Wire Line
	3150 4150 4950 4150
Wire Wire Line
	4950 4150 4950 3450
Wire Wire Line
	4550 2450 4550 3050
Wire Wire Line
	4550 3050 4950 3050
Wire Wire Line
	4350 3050 4350 3350
Wire Wire Line
	4350 3350 4950 3350
$Comp
L R R5
U 1 1 4AD5B9DC
P 3600 3450
F 0 "R5" V 3680 3450 50  0000 C CNN
F 1 "220" V 3600 3450 50  0000 C CNN
	1    3600 3450
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 4AD5B897
P 3600 3850
F 0 "R6" V 3680 3850 50  0000 C CNN
F 1 "220" V 3600 3850 50  0000 C CNN
	1    3600 3850
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 4AD5B890
P 3600 3250
F 0 "R4" V 3680 3250 50  0000 C CNN
F 1 "220" V 3600 3250 50  0000 C CNN
	1    3600 3250
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 4AD5B6B1
P 3400 2450
F 0 "R2" V 3480 2450 50  0000 C CNN
F 1 "220" V 3400 2450 50  0000 C CNN
	1    3400 2450
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 4AD5B6A3
P 3400 2650
F 0 "R3" V 3480 2650 50  0000 C CNN
F 1 "220" V 3400 2650 50  0000 C CNN
	1    3400 2650
	0    1    1    0   
$EndComp
$Comp
L R R1
U 1 1 4AD5B693
P 3400 2250
F 0 "R1" V 3480 2250 50  0000 C CNN
F 1 "220" V 3400 2250 50  0000 C CNN
	1    3400 2250
	0    1    1    0   
$EndComp
$Comp
L CONN_6 P1
U 1 1 4AD5B678
P 5300 3200
F 0 "P1" V 5250 3200 60  0000 C CNN
F 1 "CONN_6" V 5350 3200 60  0000 C CNN
	1    5300 3200
	1    0    0    -1  
$EndComp
$Comp
L DB25 J1
U 1 1 4AD5B640
P 2700 3250
F 0 "J1" H 2750 4600 70  0000 C CNN
F 1 "DB25" H 2650 1900 70  0000 C CNN
	1    2700 3250
	-1   0    0    1   
$EndComp
$EndSCHEMATC
