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
L Device:R R1
U 1 1 5F2B24D4
P 1350 1775
F 0 "R1" H 1420 1821 50  0000 L CNN
F 1 "1k" H 1420 1730 50  0000 L CNN
F 2 "" V 1280 1775 50  0001 C CNN
F 3 "~" H 1350 1775 50  0001 C CNN
	1    1350 1775
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 1925 1350 2050
$Comp
L Diode:1N4007 D1
U 1 1 5F2BB8E8
P 2075 3250
F 0 "D1" V 2121 3170 50  0000 R CNN
F 1 "1N4007" V 2030 3170 50  0000 R CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 2075 3075 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 2075 3250 50  0001 C CNN
	1    2075 3250
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:BC337 Q1
U 1 1 5F2B58B9
P 1350 2250
F 0 "Q1" V 1585 2250 50  0000 C CNN
F 1 "BC337" V 1676 2250 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 1550 2175 50  0001 L CIN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/bc337.pdf" H 1350 2250 50  0001 L CNN
	1    1350 2250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F2C6825
P 800 2000
F 0 "#PWR?" H 800 1750 50  0001 C CNN
F 1 "GND" H 805 1827 50  0000 C CNN
F 2 "" H 800 2000 50  0001 C CNN
F 3 "" H 800 2000 50  0001 C CNN
	1    800  2000
	-1   0    0    1   
$EndComp
$Comp
L MCU_Module:Arduino_UNO_R3 A?
U 1 1 5F2C823F
P 10000 1975
F 0 "A?" H 10000 3156 50  0000 C CNN
F 1 "Arduino_UNO_R3" H 10000 3065 50  0000 C CNN
F 2 "Module:Arduino_UNO_R3" H 10000 1975 50  0001 C CIN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 10000 1975 50  0001 C CNN
	1    10000 1975
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 3100 3000 3000
Wire Wire Line
	3000 3000 2475 3000
Wire Wire Line
	3000 3400 3000 3500
Wire Wire Line
	3000 3500 2475 3500
Wire Wire Line
	1350 1625 1350 875 
Wire Wire Line
	1350 875  9250 875 
Wire Wire Line
	9250 875  9250 1575
Wire Wire Line
	9250 1575 9500 1575
Wire Wire Line
	2275 925  9200 925 
Wire Wire Line
	9200 925  9200 1675
Wire Wire Line
	9200 1675 9500 1675
$Comp
L pspice:INDUCTOR SV3
U 1 1 5F2FD130
P 3400 3250
F 0 "SV3" V 3354 3328 50  0000 L CNN
F 1 "INDUCTOR" V 3445 3328 50  0000 L CNN
F 2 "" H 3400 3250 50  0001 C CNN
F 3 "~" H 3400 3250 50  0001 C CNN
	1    3400 3250
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4007 D3
U 1 1 5F2FD136
P 3925 3250
F 0 "D3" V 3971 3170 50  0000 R CNN
F 1 "1N4007" V 3880 3170 50  0000 R CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 3925 3075 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 3925 3250 50  0001 C CNN
	1    3925 3250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3925 3100 3925 3000
Wire Wire Line
	3925 3000 3400 3000
Wire Wire Line
	3925 3400 3925 3500
Wire Wire Line
	3925 3500 3400 3500
$Comp
L Transistor_BJT:BC337 Q3
U 1 1 5F2FD140
P 3200 2250
F 0 "Q3" V 3435 2250 50  0000 C CNN
F 1 "BC337" V 3526 2250 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 3400 2175 50  0001 L CIN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/bc337.pdf" H 3200 2250 50  0001 L CNN
	1    3200 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	3400 2350 3400 3000
Connection ~ 3400 3000
$Comp
L Diode:1N4007 D2
U 1 1 5F2D06ED
P 3000 3250
F 0 "D2" V 3046 3170 50  0000 R CNN
F 1 "1N4007" V 2955 3170 50  0000 R CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 3000 3075 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 3000 3250 50  0001 C CNN
	1    3000 3250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3200 975  9150 975 
Wire Wire Line
	9150 975  9150 1775
Wire Wire Line
	9150 1775 9500 1775
$Comp
L pspice:INDUCTOR SV2
U 1 1 5F2D06E7
P 2475 3250
F 0 "SV2" V 2429 3328 50  0000 L CNN
F 1 "INDUCTOR" V 2520 3328 50  0000 L CNN
F 2 "" H 2475 3250 50  0001 C CNN
F 3 "~" H 2475 3250 50  0001 C CNN
	1    2475 3250
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5F2FD129
P 3200 1775
F 0 "R3" H 3270 1821 50  0000 L CNN
F 1 "1k" H 3270 1730 50  0000 L CNN
F 2 "" V 3130 1775 50  0001 C CNN
F 3 "~" H 3200 1775 50  0001 C CNN
	1    3200 1775
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 1925 3200 2050
Wire Wire Line
	3200 1625 3200 975 
Wire Wire Line
	2275 1925 2275 2050
$Comp
L Transistor_BJT:BC337 Q2
U 1 1 5F2D06F7
P 2275 2250
F 0 "Q2" V 2510 2250 50  0000 C CNN
F 1 "BC337" V 2601 2250 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2475 2175 50  0001 L CIN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/bc337.pdf" H 2275 2250 50  0001 L CNN
	1    2275 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	2275 1625 2275 925 
$Comp
L Device:R R2
U 1 1 5F2D06E0
P 2275 1775
F 0 "R2" H 2345 1821 50  0000 L CNN
F 1 "1k" H 2345 1730 50  0000 L CNN
F 2 "" V 2205 1775 50  0001 C CNN
F 3 "~" H 2275 1775 50  0001 C CNN
	1    2275 1775
	1    0    0    -1  
$EndComp
Connection ~ 2475 3000
Wire Wire Line
	2475 2350 2475 3000
Wire Wire Line
	2075 3400 2075 3500
Wire Wire Line
	2075 3100 2075 3000
Wire Wire Line
	2075 3000 1550 3000
Wire Wire Line
	2075 3500 1550 3500
$Comp
L pspice:INDUCTOR SV1
U 1 1 5F2BA3DA
P 1550 3250
F 0 "SV1" V 1504 3328 50  0000 L CNN
F 1 "INDUCTOR" V 1595 3328 50  0000 L CNN
F 2 "" H 1550 3250 50  0001 C CNN
F 3 "~" H 1550 3250 50  0001 C CNN
	1    1550 3250
	0    1    1    0   
$EndComp
Connection ~ 1550 3000
Wire Wire Line
	1550 2350 1550 3000
Entry Wire Line
	800  2525 900  2625
Entry Wire Line
	800  2250 900  2350
Entry Wire Line
	800  2350 900  2450
Wire Wire Line
	900  2350 1150 2350
Wire Wire Line
	2075 2350 2075 2450
Wire Wire Line
	2075 2450 900  2450
Wire Wire Line
	3000 2350 3000 2625
Wire Wire Line
	3000 2625 900  2625
Entry Wire Line
	800  2625 900  2725
Entry Wire Line
	800  2725 900  2825
Entry Wire Line
	800  2825 900  2925
Entry Wire Line
	800  2850 900  2950
$Comp
L pspice:INDUCTOR SV4
U 1 1 5F33215C
P 4325 3250
F 0 "SV4" V 4279 3328 50  0000 L CNN
F 1 "INDUCTOR" V 4370 3328 50  0000 L CNN
F 2 "" H 4325 3250 50  0001 C CNN
F 3 "~" H 4325 3250 50  0001 C CNN
	1    4325 3250
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC337 Q4
U 1 1 5F33216C
P 4125 2250
F 0 "Q4" V 4360 2250 50  0000 C CNN
F 1 "BC337" V 4451 2250 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4325 2175 50  0001 L CIN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/bc337.pdf" H 4125 2250 50  0001 L CNN
	1    4125 2250
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5F33217A
P 4125 1775
F 0 "R4" H 4195 1821 50  0000 L CNN
F 1 "1k" H 4195 1730 50  0000 L CNN
F 2 "" V 4055 1775 50  0001 C CNN
F 3 "~" H 4125 1775 50  0001 C CNN
	1    4125 1775
	1    0    0    -1  
$EndComp
Wire Wire Line
	4125 1925 4125 2050
Wire Wire Line
	4325 3000 4850 3000
Wire Wire Line
	4850 3000 4850 3100
Wire Wire Line
	4325 3500 4850 3500
Wire Wire Line
	4850 3500 4850 3400
Wire Wire Line
	4325 2350 4325 3000
Connection ~ 4325 3000
Wire Wire Line
	3925 2350 3925 2725
Wire Wire Line
	3925 2725 900  2725
Wire Wire Line
	4125 1625 4125 1025
Wire Wire Line
	4125 1025 9100 1025
Wire Wire Line
	9100 1025 9100 1875
Wire Wire Line
	9100 1875 9500 1875
$Comp
L pspice:INDUCTOR SV5
U 1 1 5F33BC80
P 5250 3250
F 0 "SV5" V 5204 3328 50  0000 L CNN
F 1 "INDUCTOR" V 5295 3328 50  0000 L CNN
F 2 "" H 5250 3250 50  0001 C CNN
F 3 "~" H 5250 3250 50  0001 C CNN
	1    5250 3250
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4007 D5
U 1 1 5F33BC86
P 5775 3250
F 0 "D5" V 5821 3170 50  0000 R CNN
F 1 "1N4007" V 5730 3170 50  0000 R CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 5775 3075 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 5775 3250 50  0001 C CNN
	1    5775 3250
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:BC337 Q5
U 1 1 5F33BC8C
P 5050 2250
F 0 "Q5" V 5285 2250 50  0000 C CNN
F 1 "BC337" V 5376 2250 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5250 2175 50  0001 L CIN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/bc337.pdf" H 5050 2250 50  0001 L CNN
	1    5050 2250
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5F33BC92
P 5050 1775
F 0 "R5" H 5120 1821 50  0000 L CNN
F 1 "1k" H 5120 1730 50  0000 L CNN
F 2 "" V 4980 1775 50  0001 C CNN
F 3 "~" H 5050 1775 50  0001 C CNN
	1    5050 1775
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 1925 5050 2050
Wire Wire Line
	5250 3000 5775 3000
Wire Wire Line
	5775 3000 5775 3100
Wire Wire Line
	5250 3500 5775 3500
Wire Wire Line
	5775 3500 5775 3400
Wire Wire Line
	5250 2350 5250 3000
Connection ~ 5250 3000
$Comp
L pspice:INDUCTOR SV6
U 1 1 5F33F4DF
P 6175 3250
F 0 "SV6" V 6129 3328 50  0000 L CNN
F 1 "INDUCTOR" V 6220 3328 50  0000 L CNN
F 2 "" H 6175 3250 50  0001 C CNN
F 3 "~" H 6175 3250 50  0001 C CNN
	1    6175 3250
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4007 D6
U 1 1 5F33F4E5
P 6700 3250
F 0 "D6" V 6746 3170 50  0000 R CNN
F 1 "1N4007" V 6655 3170 50  0000 R CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 6700 3075 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 6700 3250 50  0001 C CNN
	1    6700 3250
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:BC337 Q6
U 1 1 5F33F4EB
P 5975 2250
F 0 "Q6" V 6210 2250 50  0000 C CNN
F 1 "BC337" V 6301 2250 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6175 2175 50  0001 L CIN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/bc337.pdf" H 5975 2250 50  0001 L CNN
	1    5975 2250
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5F33F4F1
P 5975 1775
F 0 "R6" H 6045 1821 50  0000 L CNN
F 1 "1k" H 6045 1730 50  0000 L CNN
F 2 "" V 5905 1775 50  0001 C CNN
F 3 "~" H 5975 1775 50  0001 C CNN
	1    5975 1775
	1    0    0    -1  
$EndComp
Wire Wire Line
	5975 1925 5975 2050
Wire Wire Line
	6175 3000 6700 3000
Wire Wire Line
	6700 3000 6700 3100
Wire Wire Line
	6175 3500 6700 3500
Wire Wire Line
	6700 3500 6700 3400
Wire Wire Line
	6175 2350 6175 3000
Connection ~ 6175 3000
$Comp
L Diode:1N4007 D4
U 1 1 5F332162
P 4850 3250
F 0 "D4" V 4896 3170 50  0000 R CNN
F 1 "1N4007" V 4805 3170 50  0000 R CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 4850 3075 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 4850 3250 50  0001 C CNN
	1    4850 3250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5050 1625 5050 1075
Wire Wire Line
	5050 1075 9050 1075
Wire Wire Line
	9050 1075 9050 1975
Wire Wire Line
	9050 1975 9500 1975
Wire Wire Line
	5975 1625 5975 1125
Wire Wire Line
	5975 1125 9000 1125
Wire Wire Line
	9000 1125 9000 2075
Wire Wire Line
	9000 2075 9500 2075
Wire Wire Line
	4850 2350 4850 2825
Wire Wire Line
	4850 2825 900  2825
Wire Wire Line
	5775 2350 5775 2925
Wire Wire Line
	5775 2925 900  2925
$Comp
L Transistor_BJT:TIP120 Q7
U 1 1 5F349377
P 7525 2250
F 0 "Q7" V 7776 2250 50  0000 C CNN
F 1 "TIP120" V 7867 2250 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 7725 2175 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/TI/TIP120.pdf" H 7525 2250 50  0001 L CNN
	1    7525 2250
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5F355DBE
P 7525 1775
F 0 "R7" H 7595 1821 50  0000 L CNN
F 1 "1k" H 7595 1730 50  0000 L CNN
F 2 "" V 7455 1775 50  0001 C CNN
F 3 "~" H 7525 1775 50  0001 C CNN
	1    7525 1775
	1    0    0    -1  
$EndComp
Wire Wire Line
	7525 2050 7525 1925
Wire Wire Line
	7525 1625 7525 1175
Wire Wire Line
	7525 1175 8950 1175
Wire Wire Line
	8950 1175 8950 2175
Wire Wire Line
	8950 2175 9500 2175
$Comp
L Motor:Motor_DC M1
U 1 1 5F35C3DD
P 7725 3300
F 0 "M1" H 7883 3296 50  0000 L CNN
F 1 "Pump" H 7883 3205 50  0000 L CNN
F 2 "" H 7725 3210 50  0001 C CNN
F 3 "~" H 7725 3210 50  0001 C CNN
	1    7725 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	8175 3000 8175 3100
Wire Wire Line
	7325 2950 900  2950
Entry Wire Line
	800  2925 900  3025
Wire Wire Line
	7725 2350 7725 3000
Connection ~ 7725 3000
Wire Wire Line
	7725 3000 8175 3000
Wire Wire Line
	7325 2350 7325 2950
$Comp
L power:+5V #PWR?
U 1 1 5F37DA65
P 1375 4300
F 0 "#PWR?" H 1375 4150 50  0001 C CNN
F 1 "+5V" H 1390 4473 50  0000 C CNN
F 2 "" H 1375 4300 50  0001 C CNN
F 3 "" H 1375 4300 50  0001 C CNN
	1    1375 4300
	-1   0    0    1   
$EndComp
Entry Wire Line
	1375 4225 1475 4125
Wire Wire Line
	1375 4225 1375 4300
Wire Wire Line
	1550 3500 1550 4025
Connection ~ 1550 3500
Wire Wire Line
	3400 3500 3400 4025
Connection ~ 3400 3500
Wire Wire Line
	4325 3500 4325 4025
Connection ~ 4325 3500
Wire Wire Line
	5250 3500 5250 4025
Connection ~ 5250 3500
Wire Wire Line
	6175 3500 6175 4025
Connection ~ 6175 3500
Entry Wire Line
	1650 4125 1550 4025
Entry Wire Line
	2575 4125 2475 4025
Wire Wire Line
	2475 3500 2475 4025
Connection ~ 2475 3500
Entry Wire Line
	3500 4125 3400 4025
Entry Wire Line
	4425 4125 4325 4025
Entry Wire Line
	5350 4125 5250 4025
Entry Wire Line
	6275 4125 6175 4025
$Comp
L Diode:1N4007 D7
U 1 1 5F3621CF
P 8175 3250
F 0 "D7" V 8221 3170 50  0000 R CNN
F 1 "1N4007" V 8130 3170 50  0000 R CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 8175 3075 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 8175 3250 50  0001 C CNN
	1    8175 3250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8175 3400 8175 3500
Wire Wire Line
	8175 3500 7725 3500
$Comp
L power:+12V #PWR?
U 1 1 5F3CCFCB
P 7725 4100
F 0 "#PWR?" H 7725 3950 50  0001 C CNN
F 1 "+12V" H 7740 4273 50  0000 C CNN
F 2 "" H 7725 4100 50  0001 C CNN
F 3 "" H 7725 4100 50  0001 C CNN
	1    7725 4100
	-1   0    0    1   
$EndComp
Wire Wire Line
	7725 3500 7725 4100
Connection ~ 7725 3500
Wire Wire Line
	9900 3075 9900 4700
Wire Wire Line
	9900 4700 900  4700
Entry Wire Line
	800  4800 900  4700
Wire Bus Line
	1475 4125 6600 4125
Wire Bus Line
	800  2000 800  5050
$EndSCHEMATC
