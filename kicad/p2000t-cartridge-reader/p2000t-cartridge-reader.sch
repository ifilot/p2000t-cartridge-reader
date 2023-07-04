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
L Connector_Generic:Conn_02x15_Row_Letter_Last J1
U 1 1 60F53D0E
P 3000 1600
F 0 "J1" V 3004 812 50  0000 R CNN
F 1 "P2000T_cartridge_edge" V 3095 812 50  0000 R CNN
F 2 "CartridgeReader:EdgeConnector2x15_no_screws" H 3000 1600 50  0001 C CNN
F 3 "~" H 3000 1600 50  0001 C CNN
	1    3000 1600
	0    -1   1    0   
$EndComp
Text GLabel 2400 1400 1    50   Input ~ 0
D0
Text GLabel 2400 1900 3    50   Input ~ 0
D1
Text GLabel 2500 1400 1    50   Input ~ 0
D2
Text GLabel 2600 1400 1    50   Input ~ 0
D4
Text GLabel 2700 1400 1    50   Input ~ 0
D6
Text GLabel 2500 1900 3    50   Input ~ 0
D3
Text GLabel 2600 1900 3    50   Input ~ 0
D5
Text GLabel 2700 1900 3    50   Input ~ 0
D7
$Comp
L power:+5V #PWR01
U 1 1 60F8EF95
P 2300 1900
F 0 "#PWR01" H 2300 1750 50  0001 C CNN
F 1 "+5V" H 2315 2073 50  0000 C CNN
F 2 "" H 2300 1900 50  0001 C CNN
F 3 "" H 2300 1900 50  0001 C CNN
	1    2300 1900
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR09
U 1 1 60F8FBE5
P 3700 1400
F 0 "#PWR09" H 3700 1150 50  0001 C CNN
F 1 "GND" H 3705 1227 50  0000 C CNN
F 2 "" H 3700 1400 50  0001 C CNN
F 3 "" H 3700 1400 50  0001 C CNN
	1    3700 1400
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR010
U 1 1 60F90929
P 3700 1900
F 0 "#PWR010" H 3700 1650 50  0001 C CNN
F 1 "GND" H 3705 1727 50  0000 C CNN
F 2 "" H 3700 1900 50  0001 C CNN
F 3 "" H 3700 1900 50  0001 C CNN
	1    3700 1900
	1    0    0    -1  
$EndComp
Text GLabel 3100 1900 3    50   Input ~ 0
A7
Text GLabel 3000 1900 3    50   Input ~ 0
A5
Text GLabel 2900 1900 3    50   Input ~ 0
A3
Text GLabel 2800 1900 3    50   Input ~ 0
A1
Text GLabel 2800 1400 1    50   Input ~ 0
A0
Text GLabel 2900 1400 1    50   Input ~ 0
A2
Text GLabel 3000 1400 1    50   Input ~ 0
A4
Text GLabel 3100 1400 1    50   Input ~ 0
A6
Text GLabel 3200 1400 1    50   Input ~ 0
A8
Text GLabel 3300 1400 1    50   Input ~ 0
A10
Text GLabel 3200 1900 3    50   Input ~ 0
A9
Text GLabel 3300 1900 3    50   Input ~ 0
A11
Text GLabel 3400 1400 1    50   Input ~ 0
A12
Text GLabel 3500 1400 1    50   Input ~ 0
CARSEL2
Text GLabel 3400 1900 3    50   Input ~ 0
CARSEL1
NoConn ~ 3600 1400
NoConn ~ 3600 1900
NoConn ~ 3500 1900
NoConn ~ 2300 1400
$Comp
L arduino:Arduino_Uno_Shield XA1
U 1 1 610A0D27
P 3050 4300
F 0 "XA1" H 3050 5687 60  0000 C CNN
F 1 "Arduino_Uno_Shield" H 3050 5581 60  0000 C CNN
F 2 "Arduino:Arduino_Uno_Shield" H 4850 8050 60  0001 C CNN
F 3 "https://store.arduino.cc/arduino-uno-rev3" H 4850 8050 60  0001 C CNN
	1    3050 4300
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4040 U1
U 1 1 610AD144
P 6300 4200
F 0 "U1" H 6300 5181 50  0000 C CNN
F 1 "4040" H 6300 5090 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 6300 4200 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4020bms-24bms-40bms.pdf" H 6300 4200 50  0001 C CNN
	1    6300 4200
	1    0    0    -1  
$EndComp
Text GLabel 6800 3700 2    50   Input ~ 0
A0
Text GLabel 6800 3900 2    50   Input ~ 0
A2
Text GLabel 6800 4100 2    50   Input ~ 0
A4
Text GLabel 6800 4300 2    50   Input ~ 0
A6
Text GLabel 6800 4500 2    50   Input ~ 0
A8
Text GLabel 6800 4700 2    50   Input ~ 0
A10
Text GLabel 6800 4400 2    50   Input ~ 0
A7
Text GLabel 6800 4200 2    50   Input ~ 0
A5
Text GLabel 6800 4000 2    50   Input ~ 0
A3
Text GLabel 6800 3800 2    50   Input ~ 0
A1
Text GLabel 6800 4600 2    50   Input ~ 0
A9
Text GLabel 6800 4800 2    50   Input ~ 0
A11
$Comp
L power:GND #PWR0101
U 1 1 610B14EA
P 6300 5100
F 0 "#PWR0101" H 6300 4850 50  0001 C CNN
F 1 "GND" H 6305 4927 50  0000 C CNN
F 2 "" H 6300 5100 50  0001 C CNN
F 3 "" H 6300 5100 50  0001 C CNN
	1    6300 5100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 610B2135
P 6300 3400
F 0 "#PWR0102" H 6300 3250 50  0001 C CNN
F 1 "+5V" H 6315 3573 50  0000 C CNN
F 2 "" H 6300 3400 50  0001 C CNN
F 3 "" H 6300 3400 50  0001 C CNN
	1    6300 3400
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 610B3655
P 1750 5250
F 0 "#PWR0103" H 1750 5100 50  0001 C CNN
F 1 "+5V" H 1765 5423 50  0000 C CNN
F 2 "" H 1750 5250 50  0001 C CNN
F 3 "" H 1750 5250 50  0001 C CNN
	1    1750 5250
	0    -1   -1   0   
$EndComp
NoConn ~ 1750 5150
$Comp
L power:GND #PWR0104
U 1 1 610B5F7F
P 1550 4950
F 0 "#PWR0104" H 1550 4700 50  0001 C CNN
F 1 "GND" V 1555 4822 50  0000 R CNN
F 2 "" H 1550 4950 50  0001 C CNN
F 3 "" H 1550 4950 50  0001 C CNN
	1    1550 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	1750 5050 1650 5050
Wire Wire Line
	1650 5050 1650 4950
Wire Wire Line
	1650 4850 1750 4850
Connection ~ 1650 4950
Wire Wire Line
	1650 4950 1650 4850
Wire Wire Line
	1750 4950 1650 4950
Wire Wire Line
	1550 4950 1650 4950
NoConn ~ 1750 5350
Text GLabel 1750 4450 0    50   Input ~ 0
D0
Text GLabel 1750 4250 0    50   Input ~ 0
D2
Text GLabel 4350 3450 2    50   Input ~ 0
D4
Text GLabel 4350 3650 2    50   Input ~ 0
D6
Text GLabel 1750 4350 0    50   Input ~ 0
D1
Text GLabel 1750 4150 0    50   Input ~ 0
D3
Text GLabel 4350 3550 2    50   Input ~ 0
D5
Text GLabel 4350 3750 2    50   Input ~ 0
D7
Text GLabel 4350 4050 2    50   Input ~ 0
CRES
Text GLabel 4350 3950 2    50   Input ~ 0
CCLK
Text GLabel 5800 4000 0    50   Input ~ 0
CRES
Text GLabel 5800 3700 0    50   Input ~ 0
CCLK
NoConn ~ 4350 5050
NoConn ~ 4350 4950
NoConn ~ 4350 4850
NoConn ~ 4350 4750
NoConn ~ 4350 4650
NoConn ~ 4350 4550
NoConn ~ 4350 5250
NoConn ~ 4350 5350
NoConn ~ 4350 4350
NoConn ~ 4350 4250
NoConn ~ 4350 4150
Text GLabel 4350 3250 2    50   Input ~ 0
CARSEL1
Text GLabel 4350 3350 2    50   Input ~ 0
CARSEL2
Text GLabel 4350 3850 2    50   Input ~ 0
A12
NoConn ~ 1750 3250
NoConn ~ 1750 3350
NoConn ~ 1750 3550
NoConn ~ 1750 3650
NoConn ~ 1750 3950
NoConn ~ 1750 4050
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 610BBA7A
P 5950 1550
F 0 "#FLG0101" H 5950 1625 50  0001 C CNN
F 1 "PWR_FLAG" H 5950 1723 50  0000 C CNN
F 2 "" H 5950 1550 50  0001 C CNN
F 3 "~" H 5950 1550 50  0001 C CNN
	1    5950 1550
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 610BC190
P 6400 1550
F 0 "#FLG0102" H 6400 1625 50  0001 C CNN
F 1 "PWR_FLAG" H 6400 1723 50  0000 C CNN
F 2 "" H 6400 1550 50  0001 C CNN
F 3 "~" H 6400 1550 50  0001 C CNN
	1    6400 1550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0105
U 1 1 610BC447
P 5950 1550
F 0 "#PWR0105" H 5950 1400 50  0001 C CNN
F 1 "+5V" H 5965 1723 50  0000 C CNN
F 2 "" H 5950 1550 50  0001 C CNN
F 3 "" H 5950 1550 50  0001 C CNN
	1    5950 1550
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 610BCC24
P 6400 1550
F 0 "#PWR0106" H 6400 1300 50  0001 C CNN
F 1 "GND" H 6405 1377 50  0000 C CNN
F 2 "" H 6400 1550 50  0001 C CNN
F 3 "" H 6400 1550 50  0001 C CNN
	1    6400 1550
	1    0    0    -1  
$EndComp
NoConn ~ 1750 4550
$EndSCHEMATC
