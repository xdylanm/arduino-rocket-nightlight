EESchema Schematic File Version 4
LIBS:captouch_digispark_lights-cache
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
L MCU_Microchip_ATtiny:ATtiny85-20SU U?
U 1 1 5C6B5C70
P 5200 2850
F 0 "U?" H 4670 2896 50  0000 R CNN
F 1 "ATtiny85-20SU" H 4670 2805 50  0000 R CNN
F 2 "Package_SO:SOIJ-8_5.3x5.3mm_P1.27mm" H 5200 2850 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-2586-avr-8-bit-microcontroller-attiny25-attiny45-attiny85_datasheet.pdf" H 5200 2850 50  0001 C CNN
	1    5200 2850
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C6B5ECD
P 5200 4100
F 0 "#PWR?" H 5200 3850 50  0001 C CNN
F 1 "GND" H 5205 3927 50  0000 C CNN
F 2 "" H 5200 4100 50  0001 C CNN
F 3 "" H 5200 4100 50  0001 C CNN
	1    5200 4100
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B_Micro J?
U 1 1 5C6B621B
P 1400 2750
F 0 "J?" H 1455 3217 50  0000 C CNN
F 1 "USB_B_Micro" H 1455 3126 50  0000 C CNN
F 2 "" H 1550 2700 50  0001 C CNN
F 3 "~" H 1550 2700 50  0001 C CNN
	1    1400 2750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5C6B6396
P 5200 2200
F 0 "#PWR?" H 5200 2050 50  0001 C CNN
F 1 "+5V" H 5215 2373 50  0000 C CNN
F 2 "" H 5200 2200 50  0001 C CNN
F 3 "" H 5200 2200 50  0001 C CNN
	1    5200 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5C6B641A
P 2350 2750
F 0 "R?" V 2250 2650 50  0000 C CNN
F 1 "66.5R" V 2250 2850 50  0000 C CNN
F 2 "" V 2280 2750 50  0001 C CNN
F 3 "~" H 2350 2750 50  0001 C CNN
	1    2350 2750
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5C6B6544
P 2350 2850
F 0 "R?" V 2450 2750 50  0000 C CNN
F 1 "66.5R" V 2450 2950 50  0000 C CNN
F 2 "" V 2280 2850 50  0001 C CNN
F 3 "~" H 2350 2850 50  0001 C CNN
	1    2350 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	2200 2750 2150 2750
$Comp
L Device:D_Zener D?
U 1 1 5C6B67A7
P 2150 3300
F 0 "D?" V 2104 3379 50  0000 L CNN
F 1 "D_Zener" V 2195 3379 50  0000 L CNN
F 2 "" H 2150 3300 50  0001 C CNN
F 3 "~" H 2150 3300 50  0001 C CNN
	1    2150 3300
	0    1    1    0   
$EndComp
$Comp
L Device:D_Zener D?
U 1 1 5C6B687B
P 2000 3500
F 0 "D?" V 2000 3350 50  0000 L CNN
F 1 "D_Zener" V 2100 3150 50  0000 L CNN
F 2 "" H 2000 3500 50  0001 C CNN
F 3 "~" H 2000 3500 50  0001 C CNN
	1    2000 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	2000 3350 2000 2850
Connection ~ 2000 2850
Wire Wire Line
	2000 2850 2200 2850
Wire Wire Line
	2150 3150 2150 2750
Connection ~ 2150 2750
$Comp
L power:GND #PWR?
U 1 1 5C6B694E
P 2000 3800
F 0 "#PWR?" H 2000 3550 50  0001 C CNN
F 1 "GND" H 2005 3627 50  0000 C CNN
F 2 "" H 2000 3800 50  0001 C CNN
F 3 "" H 2000 3800 50  0001 C CNN
	1    2000 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 3800 2000 3750
Wire Wire Line
	2000 3750 2150 3750
Wire Wire Line
	2150 3750 2150 3450
Connection ~ 2000 3750
Wire Wire Line
	2000 3750 2000 3650
Wire Wire Line
	1400 3150 1400 3750
Wire Wire Line
	1300 3150 1300 3750
$Comp
L Device:LED D?
U 1 1 5C6B6CC6
P 1900 4650
F 0 "D?" V 1938 4533 50  0000 R CNN
F 1 "LED" V 1847 4533 50  0000 R CNN
F 2 "" H 1900 4650 50  0001 C CNN
F 3 "~" H 1900 4650 50  0001 C CNN
	1    1900 4650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5C6B6F0A
P 1900 5150
F 0 "R?" H 1970 5196 50  0000 L CNN
F 1 "R" H 1970 5105 50  0000 L CNN
F 2 "" V 1830 5150 50  0001 C CNN
F 3 "~" H 1900 5150 50  0001 C CNN
	1    1900 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 5000 1900 4800
$Comp
L power:GND #PWR?
U 1 1 5C6B7148
P 1900 5400
F 0 "#PWR?" H 1900 5150 50  0001 C CNN
F 1 "GND" H 1905 5227 50  0000 C CNN
F 2 "" H 1900 5400 50  0001 C CNN
F 3 "" H 1900 5400 50  0001 C CNN
	1    1900 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 5400 1900 5300
$Comp
L power:+5V #PWR?
U 1 1 5C6B72F1
P 1900 4400
F 0 "#PWR?" H 1900 4250 50  0001 C CNN
F 1 "+5V" H 1915 4573 50  0000 C CNN
F 2 "" H 1900 4400 50  0001 C CNN
F 3 "" H 1900 4400 50  0001 C CNN
	1    1900 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 4400 1900 4500
$Comp
L Device:R R?
U 1 1 5C6B7503
P 2000 2150
F 0 "R?" H 2070 2196 50  0000 L CNN
F 1 "1K5" H 2070 2105 50  0000 L CNN
F 2 "" V 1930 2150 50  0001 C CNN
F 3 "~" H 2000 2150 50  0001 C CNN
	1    2000 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 3750 2000 3750
Wire Wire Line
	1400 3750 1300 3750
Connection ~ 1400 3750
Wire Wire Line
	1700 2850 2000 2850
Wire Wire Line
	1700 2750 2150 2750
$Comp
L power:+5V #PWR?
U 1 1 5C6B851C
P 2000 1850
F 0 "#PWR?" H 2000 1700 50  0001 C CNN
F 1 "+5V" H 2015 2023 50  0000 C CNN
F 2 "" H 2000 1850 50  0001 C CNN
F 3 "" H 2000 1850 50  0001 C CNN
	1    2000 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:D D?
U 1 1 5C6B8BB8
P 1750 2150
F 0 "D?" V 1796 2071 50  0000 R CNN
F 1 "D" V 1705 2071 50  0000 R CNN
F 2 "" H 1750 2150 50  0001 C CNN
F 3 "~" H 1750 2150 50  0001 C CNN
	1    1750 2150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2000 2300 2000 2850
Wire Wire Line
	1700 2550 1750 2550
Wire Wire Line
	1750 2550 1750 2300
Wire Wire Line
	1750 2000 1750 1850
Wire Wire Line
	1750 1850 2000 1850
Wire Wire Line
	2000 2000 2000 1850
Connection ~ 2000 1850
$Comp
L Device:C C?
U 1 1 5C6B9864
P 2600 4900
F 0 "C?" H 2715 4946 50  0000 L CNN
F 1 "4u7" H 2715 4855 50  0000 L CNN
F 2 "" H 2638 4750 50  0001 C CNN
F 3 "~" H 2600 4900 50  0001 C CNN
	1    2600 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5C6B9A90
P 3000 4900
F 0 "C?" H 3115 4946 50  0000 L CNN
F 1 "0u1" H 3115 4855 50  0000 L CNN
F 2 "" H 3038 4750 50  0001 C CNN
F 3 "~" H 3000 4900 50  0001 C CNN
	1    3000 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C6B9B43
P 2600 5400
F 0 "#PWR?" H 2600 5150 50  0001 C CNN
F 1 "GND" H 2605 5227 50  0000 C CNN
F 2 "" H 2600 5400 50  0001 C CNN
F 3 "" H 2600 5400 50  0001 C CNN
	1    2600 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 5400 2600 5300
Wire Wire Line
	2600 5300 3000 5300
Wire Wire Line
	3000 5300 3000 5050
Connection ~ 2600 5300
Wire Wire Line
	2600 5300 2600 5050
$Comp
L power:+5V #PWR?
U 1 1 5C6BA266
P 2600 4400
F 0 "#PWR?" H 2600 4250 50  0001 C CNN
F 1 "+5V" H 2615 4573 50  0000 C CNN
F 2 "" H 2600 4400 50  0001 C CNN
F 3 "" H 2600 4400 50  0001 C CNN
	1    2600 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 4400 2600 4600
Wire Wire Line
	2600 4600 3000 4600
Wire Wire Line
	3000 4600 3000 4750
Connection ~ 2600 4600
Wire Wire Line
	2600 4600 2600 4750
Wire Wire Line
	4600 2850 4100 2850
Wire Wire Line
	2900 2750 2500 2750
Wire Wire Line
	2900 2950 4000 2950
Wire Wire Line
	2900 2750 2900 2950
$Comp
L Device:LED D?
U 1 1 5C6BCBAD
P 4400 3350
F 0 "D?" V 4438 3233 50  0000 R CNN
F 1 "LED" V 4347 3233 50  0000 R CNN
F 2 "" H 4400 3350 50  0001 C CNN
F 3 "~" H 4400 3350 50  0001 C CNN
	1    4400 3350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5C6BCD49
P 4400 3750
F 0 "R?" H 4330 3704 50  0000 R CNN
F 1 "R" H 4330 3795 50  0000 R CNN
F 2 "" V 4330 3750 50  0001 C CNN
F 3 "~" H 4400 3750 50  0001 C CNN
	1    4400 3750
	-1   0    0    1   
$EndComp
Wire Wire Line
	5200 3450 5200 4000
Wire Wire Line
	4400 3900 4400 4000
Wire Wire Line
	4400 4000 5200 4000
Connection ~ 5200 4000
Wire Wire Line
	5200 4000 5200 4100
Wire Wire Line
	4400 3500 4400 3600
Wire Wire Line
	4600 2650 4400 2650
Wire Wire Line
	4400 2650 4400 3200
$Comp
L Regulator_Linear:MC78M05_TO252 U?
U 1 1 5C6BF681
P 2950 1500
F 0 "U?" H 2950 1742 50  0000 C CNN
F 1 "MC78M05_TO252" H 2950 1651 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-252-2" H 2950 1725 50  0001 C CIN
F 3 "http://www.fairchildsemi.com/ds/LM/LM78M05.pdf" H 2950 1450 50  0001 C CNN
	1    2950 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C6BF7A4
P 2950 1900
F 0 "#PWR?" H 2950 1650 50  0001 C CNN
F 1 "GND" H 2955 1727 50  0000 C CNN
F 2 "" H 2950 1900 50  0001 C CNN
F 3 "" H 2950 1900 50  0001 C CNN
	1    2950 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 1900 2950 1800
$Comp
L power:+5V #PWR?
U 1 1 5C6BFF88
P 3400 1400
F 0 "#PWR?" H 3400 1250 50  0001 C CNN
F 1 "+5V" H 3415 1573 50  0000 C CNN
F 2 "" H 3400 1400 50  0001 C CNN
F 3 "" H 3400 1400 50  0001 C CNN
	1    3400 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 1400 3400 1500
Wire Wire Line
	3400 1500 3250 1500
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 5C6CC6CF
P 4200 1250
F 0 "J?" V 4350 1600 50  0000 L CNN
F 1 "Conn_01x06_Male" V 4100 900 50  0000 L CNN
F 2 "" H 4200 1250 50  0001 C CNN
F 3 "~" H 4200 1250 50  0001 C CNN
	1    4200 1250
	0    1    1    0   
$EndComp
Wire Wire Line
	4400 1450 4400 1750
Wire Wire Line
	4400 2550 4600 2550
Wire Wire Line
	4300 1450 4300 2650
Wire Wire Line
	4300 2650 4400 2650
Connection ~ 4400 2650
Wire Wire Line
	4200 1450 4200 2750
Wire Wire Line
	4200 2750 4500 2750
Wire Wire Line
	4100 1450 4100 2850
Connection ~ 4100 2850
Wire Wire Line
	4100 2850 2500 2850
Wire Wire Line
	4000 1450 4000 2950
Connection ~ 4000 2950
Wire Wire Line
	4000 2950 4600 2950
Wire Wire Line
	3900 1450 3900 3050
Wire Wire Line
	3900 3050 4600 3050
Wire Notes Line
	3800 1200 3800 1450
Wire Notes Line
	3800 1450 4500 1450
Wire Notes Line
	4500 1450 4500 1200
Wire Notes Line
	4500 1200 3800 1200
$Comp
L Connector:Conn_01x03_Male J?
U 1 1 5C6D1EB0
P 2350 850
F 0 "J?" V 2410 990 50  0000 L CNN
F 1 "Conn_01x03_Male" V 2501 990 50  0000 L CNN
F 2 "" H 2350 850 50  0001 C CNN
F 3 "~" H 2350 850 50  0001 C CNN
	1    2350 850 
	0    1    1    0   
$EndComp
Wire Wire Line
	2450 1050 2450 1500
Wire Wire Line
	2450 1500 2650 1500
$Comp
L power:GND #PWR?
U 1 1 5C6D2D98
P 2350 1550
F 0 "#PWR?" H 2350 1300 50  0001 C CNN
F 1 "GND" H 2355 1377 50  0000 C CNN
F 2 "" H 2350 1550 50  0001 C CNN
F 3 "" H 2350 1550 50  0001 C CNN
	1    2350 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 1550 2350 1050
$Comp
L power:+5V #PWR?
U 1 1 5C6D3C3A
P 1850 1000
F 0 "#PWR?" H 1850 850 50  0001 C CNN
F 1 "+5V" H 1865 1173 50  0000 C CNN
F 2 "" H 1850 1000 50  0001 C CNN
F 3 "" H 1850 1000 50  0001 C CNN
	1    1850 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 1000 1850 1250
Wire Wire Line
	1850 1250 2250 1250
Wire Wire Line
	2250 1250 2250 1050
Wire Notes Line
	2150 800  2150 1100
Wire Notes Line
	2150 1100 2600 1100
Wire Notes Line
	2600 1100 2600 800 
Wire Notes Line
	2600 800  2150 800 
$Comp
L LED:WS2812B D?
U 1 1 5C6D5F13
P 5150 5200
F 0 "D?" H 5500 5550 50  0000 L CNN
F 1 "WS2812B" H 5500 5400 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 5200 4900 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 5250 4825 50  0001 L TNN
	1    5150 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 2850 4100 5200
Wire Wire Line
	4100 5200 4850 5200
$Comp
L power:GND #PWR?
U 1 1 5C6D74E3
P 5150 5600
F 0 "#PWR?" H 5150 5350 50  0001 C CNN
F 1 "GND" H 5155 5427 50  0000 C CNN
F 2 "" H 5150 5600 50  0001 C CNN
F 3 "" H 5150 5600 50  0001 C CNN
	1    5150 5600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5C6D7512
P 5150 4750
F 0 "#PWR?" H 5150 4600 50  0001 C CNN
F 1 "+5V" H 5165 4923 50  0000 C CNN
F 2 "" H 5150 4750 50  0001 C CNN
F 3 "" H 5150 4750 50  0001 C CNN
	1    5150 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 4750 5150 4900
Wire Wire Line
	5150 5500 5150 5600
Wire Wire Line
	5450 5200 6100 5200
$Comp
L Device:R R?
U 1 1 5C6DAE04
P 4500 2050
F 0 "R?" H 4570 2096 50  0000 L CNN
F 1 "1M0" H 4570 2005 50  0000 L CNN
F 2 "" V 4430 2050 50  0001 C CNN
F 3 "~" H 4500 2050 50  0001 C CNN
	1    4500 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 2200 4500 2750
Connection ~ 4500 2750
Wire Wire Line
	4500 2750 4600 2750
Wire Wire Line
	4500 1900 4500 1750
Wire Wire Line
	4500 1750 4400 1750
Connection ~ 4400 1750
Wire Wire Line
	4400 1750 4400 2550
$Comp
L Device:C_Variable C?
U 1 1 5C6DDF9A
P 4850 1750
F 0 "C?" V 5102 1750 50  0000 C CNN
F 1 "Capacitive Sensor" V 5011 1750 50  0000 C CNN
F 2 "" H 4850 1750 50  0001 C CNN
F 3 "~" H 4850 1750 50  0001 C CNN
	1    4850 1750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5200 2200 5200 2250
Wire Wire Line
	4700 1750 4500 1750
Connection ~ 4500 1750
$Comp
L power:GND #PWR?
U 1 1 5C6E8EE1
P 5050 1800
F 0 "#PWR?" H 5050 1550 50  0001 C CNN
F 1 "GND" H 5055 1627 50  0000 C CNN
F 2 "" H 5050 1800 50  0001 C CNN
F 3 "" H 5050 1800 50  0001 C CNN
	1    5050 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 1800 5050 1750
Wire Wire Line
	5050 1750 5000 1750
Text Notes 6200 5250 0    50   ~ 0
...N Neo Pixels in series
Text Notes 7400 7500 0    50   ~ 0
Digispark ATTiny85 clone (micro USB) 5V board with capacitive touch control for neo pixels
Text Notes 8150 7650 0    50   ~ 0
2019-02-20
Text Notes 10600 7650 0    50   ~ 0
0.1
$EndSCHEMATC
