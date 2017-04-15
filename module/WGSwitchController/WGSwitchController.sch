EESchema Schematic File Version 2
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
LIBS:SparkFun-Boards
LIBS:WGSwitchController-cache
EELAYER 25 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "Waveguide Switch Servo Controller"
Date "2017-03-11"
Rev "B"
Comp "KB1VC"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_01X04 P1
U 1 1 58C4A0ED
P 1850 1450
F 0 "P1" H 1850 1700 50  0000 C CNN
F 1 "CONN_01X04" V 1950 1450 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04" H 1850 1450 50  0001 C CNN
F 3 "" H 1850 1450 50  0000 C CNN
	1    1850 1450
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X03 P2
U 1 1 58C4A16E
P 4050 6600
F 0 "P2" H 4050 6800 50  0000 C CNN
F 1 "CONN_01X03" V 4150 6600 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 4050 6600 50  0001 C CNN
F 3 "" H 4050 6600 50  0000 C CNN
	1    4050 6600
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X06 P3
U 1 1 58C4A1F1
P 7650 2150
F 0 "P3" H 7650 2500 50  0000 C CNN
F 1 "CONN_01X06" V 7750 2150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06" H 7650 2150 50  0001 C CNN
F 3 "" H 7650 2150 50  0000 C CNN
	1    7650 2150
	1    0    0    -1  
$EndComp
$Comp
L MMBT3904 Q2
U 1 1 58C4A319
P 7700 4700
F 0 "Q2" H 7900 4775 50  0000 L CNN
F 1 "MMBT3904" H 7900 4700 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 7900 4625 50  0000 L CIN
F 3 "" H 7700 4700 50  0000 L CNN
	1    7700 4700
	1    0    0    -1  
$EndComp
$Comp
L MMBT3904 Q4
U 1 1 58C4A356
P 9700 4700
F 0 "Q4" H 9900 4775 50  0000 L CNN
F 1 "MMBT3904" H 9900 4700 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 9900 4625 50  0000 L CIN
F 3 "" H 9700 4700 50  0000 L CNN
	1    9700 4700
	1    0    0    -1  
$EndComp
$Comp
L MMBT3904 Q3
U 1 1 58C4A39F
P 9200 2500
F 0 "Q3" H 9400 2575 50  0000 L CNN
F 1 "MMBT3904" H 9400 2500 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 9400 2425 50  0000 L CIN
F 3 "" H 9200 2500 50  0000 L CNN
	1    9200 2500
	1    0    0    -1  
$EndComp
$Comp
L MMBT3906 Q1
U 1 1 58C4A3C8
P 2600 3100
F 0 "Q1" H 2800 3175 50  0000 L CNN
F 1 "MMBT3906" H 2800 3100 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 2800 3025 50  0000 L CIN
F 3 "" H 2600 3100 50  0000 L CNN
	1    2600 3100
	1    0    0    -1  
$EndComp
$Comp
L D_Schottky D1
U 1 1 58C4A47C
P 2700 1150
F 0 "D1" H 2700 1250 50  0000 C CNN
F 1 "PMEG3030EP" H 2700 1050 50  0000 C CNN
F 2 "sod:SOD-128" H 2700 1150 50  0001 C CNN
F 3 "" H 2700 1150 50  0000 C CNN
	1    2700 1150
	-1   0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 58C4A515
P 3100 1500
F 0 "C2" H 3125 1600 50  0000 L CNN
F 1 "0.1" H 3125 1400 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 3138 1350 50  0001 C CNN
F 3 "" H 3100 1500 50  0000 C CNN
	1    3100 1500
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 58C4A55A
P 3350 1500
F 0 "C3" H 3375 1600 50  0000 L CNN
F 1 "10" H 3375 1400 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 3388 1350 50  0001 C CNN
F 3 "" H 3350 1500 50  0000 C CNN
	1    3350 1500
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 58C4A5BD
P 4500 1500
F 0 "C4" H 4525 1600 50  0000 L CNN
F 1 "0.1" H 4525 1400 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 4538 1350 50  0001 C CNN
F 3 "" H 4500 1500 50  0000 C CNN
	1    4500 1500
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 58C4A5F6
P 4800 1500
F 0 "C5" H 4825 1600 50  0000 L CNN
F 1 "10" H 4825 1400 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 4838 1350 50  0001 C CNN
F 3 "" H 4800 1500 50  0000 C CNN
	1    4800 1500
	1    0    0    -1  
$EndComp
$Comp
L R R14
U 1 1 58C4A627
P 9300 1900
F 0 "R14" V 9380 1900 50  0000 C CNN
F 1 "10K" V 9300 1900 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 9230 1900 50  0001 C CNN
F 3 "" H 9300 1900 50  0000 C CNN
	1    9300 1900
	1    0    0    -1  
$EndComp
$Comp
L R R12
U 1 1 58C4A680
P 8950 1900
F 0 "R12" V 9030 1900 50  0000 C CNN
F 1 "10K" V 8950 1900 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 8880 1900 50  0001 C CNN
F 3 "" H 8950 1900 50  0000 C CNN
	1    8950 1900
	1    0    0    -1  
$EndComp
$Comp
L R R15
U 1 1 58C4A6B5
P 9800 4150
F 0 "R15" V 9880 4150 50  0000 C CNN
F 1 "220" V 9800 4150 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 9730 4150 50  0001 C CNN
F 3 "" H 9800 4150 50  0000 C CNN
	1    9800 4150
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 58C4A6EC
P 7800 4150
F 0 "R10" V 7880 4150 50  0000 C CNN
F 1 "220" V 7800 4150 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 7730 4150 50  0001 C CNN
F 3 "" H 7800 4150 50  0000 C CNN
	1    7800 4150
	1    0    0    -1  
$EndComp
$Comp
L R R13
U 1 1 58C4A76F
P 9250 4700
F 0 "R13" V 9330 4700 50  0000 C CNN
F 1 "10K" V 9250 4700 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 9180 4700 50  0001 C CNN
F 3 "" H 9250 4700 50  0000 C CNN
	1    9250 4700
	0    1    1    0   
$EndComp
$Comp
L R R9
U 1 1 58C4A7E6
P 7200 4700
F 0 "R9" V 7280 4700 50  0000 C CNN
F 1 "10K" V 7200 4700 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 7130 4700 50  0001 C CNN
F 3 "" H 7200 4700 50  0000 C CNN
	1    7200 4700
	0    1    1    0   
$EndComp
$Comp
L R R8
U 1 1 58C4A8BB
P 7100 1600
F 0 "R8" V 7180 1600 50  0000 C CNN
F 1 "68" V 7100 1600 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 7030 1600 50  0001 C CNN
F 3 "" H 7100 1600 50  0000 C CNN
	1    7100 1600
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 58C4AAA1
P 6750 1600
F 0 "R7" V 6830 1600 50  0000 C CNN
F 1 "10K" V 6750 1600 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 6680 1600 50  0001 C CNN
F 3 "" H 6750 1600 50  0000 C CNN
	1    6750 1600
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 58C4ABE9
P 6400 1600
F 0 "R6" V 6480 1600 50  0000 C CNN
F 1 "68" V 6400 1600 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 6330 1600 50  0001 C CNN
F 3 "" H 6400 1600 50  0000 C CNN
	1    6400 1600
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 58C4AC7A
P 6050 1600
F 0 "R5" V 6130 1600 50  0000 C CNN
F 1 "10K" V 6050 1600 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 5980 1600 50  0001 C CNN
F 3 "" H 6050 1600 50  0000 C CNN
	1    6050 1600
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 58C4AE5C
P 2700 3700
F 0 "R3" V 2780 3700 50  0000 C CNN
F 1 "10K" V 2700 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 2630 3700 50  0001 C CNN
F 3 "" H 2700 3700 50  0000 C CNN
	1    2700 3700
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 58C4AF02
P 3050 3400
F 0 "R4" V 3130 3400 50  0000 C CNN
F 1 "10K" V 3050 3400 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 2980 3400 50  0001 C CNN
F 3 "" H 3050 3400 50  0000 C CNN
	1    3050 3400
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 58C4AF94
P 2050 3100
F 0 "R2" V 2130 3100 50  0000 C CNN
F 1 "10K" V 2050 3100 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 1980 3100 50  0001 C CNN
F 3 "" H 2050 3100 50  0000 C CNN
	1    2050 3100
	0    1    1    0   
$EndComp
$Comp
L R R1
U 1 1 58C4B08E
P 1700 2800
F 0 "R1" V 1780 2800 50  0000 C CNN
F 1 "10K" V 1700 2800 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 1630 2800 50  0001 C CNN
F 3 "" H 1700 2800 50  0000 C CNN
	1    1700 2800
	-1   0    0    1   
$EndComp
$Comp
L C C1
U 1 1 58C4B1AC
P 1700 3400
F 0 "C1" H 1725 3500 50  0000 L CNN
F 1 "C" H 1725 3300 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 1738 3250 50  0001 C CNN
F 3 "" H 1700 3400 50  0000 C CNN
	1    1700 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 3100 2400 3100
Wire Wire Line
	2700 2550 2700 2900
Wire Wire Line
	1700 2650 1700 2600
Wire Wire Line
	1700 2600 2700 2600
Wire Wire Line
	2700 2600 2700 2650
Connection ~ 2700 2600
Wire Wire Line
	1700 2950 1700 3250
Wire Wire Line
	1500 3100 1900 3100
Connection ~ 1700 3100
Wire Wire Line
	2700 3300 2700 3550
Wire Wire Line
	2900 3400 2700 3400
Connection ~ 2700 3400
$Comp
L GND #PWR01
U 1 1 58C4B66A
P 2700 3950
F 0 "#PWR01" H 2700 3700 50  0001 C CNN
F 1 "GND" H 2700 3800 50  0000 C CNN
F 2 "" H 2700 3950 50  0000 C CNN
F 3 "" H 2700 3950 50  0000 C CNN
	1    2700 3950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 58C4B6D6
P 1700 3650
F 0 "#PWR02" H 1700 3400 50  0001 C CNN
F 1 "GND" H 1700 3500 50  0000 C CNN
F 2 "" H 1700 3650 50  0000 C CNN
F 3 "" H 1700 3650 50  0000 C CNN
	1    1700 3650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 58C4B73B
P 3900 1850
F 0 "#PWR03" H 3900 1600 50  0001 C CNN
F 1 "GND" H 3900 1700 50  0000 C CNN
F 2 "" H 3900 1850 50  0000 C CNN
F 3 "" H 3900 1850 50  0000 C CNN
	1    3900 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 1600 2200 1600
Wire Wire Line
	2200 1600 2200 1750
Wire Wire Line
	2200 1750 4800 1750
Wire Wire Line
	3900 1450 3900 1850
Wire Wire Line
	4800 1750 4800 1650
Connection ~ 3900 1750
Wire Wire Line
	4500 1650 4500 1750
Connection ~ 4500 1750
Wire Wire Line
	3350 1650 3350 1750
Connection ~ 3350 1750
Wire Wire Line
	3100 1650 3100 1750
Connection ~ 3100 1750
Wire Wire Line
	2050 1300 2200 1300
Wire Wire Line
	2200 1300 2200 1150
Wire Wire Line
	2200 1150 2550 1150
Wire Wire Line
	2850 1150 3500 1150
Wire Wire Line
	3350 1150 3350 1350
Connection ~ 3350 1150
Wire Wire Line
	3100 1350 3100 1150
Connection ~ 3100 1150
Wire Wire Line
	4800 1050 4800 1350
Wire Wire Line
	4500 1150 4500 1350
Connection ~ 4500 1150
$Comp
L +5V #PWR04
U 1 1 58C4C37E
P 4800 1050
F 0 "#PWR04" H 4800 900 50  0001 C CNN
F 1 "+5V" H 4800 1190 50  0000 C CNN
F 2 "" H 4800 1050 50  0000 C CNN
F 3 "" H 4800 1050 50  0000 C CNN
	1    4800 1050
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR05
U 1 1 58C4C3EC
P 2950 1050
F 0 "#PWR05" H 2950 900 50  0001 C CNN
F 1 "+12V" H 2950 1190 50  0000 C CNN
F 2 "" H 2950 1050 50  0000 C CNN
F 3 "" H 2950 1050 50  0000 C CNN
	1    2950 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 1050 2950 1150
Connection ~ 2950 1150
Connection ~ 4800 1150
$Comp
L +5V #PWR06
U 1 1 58C4C566
P 2700 2200
F 0 "#PWR06" H 2700 2050 50  0001 C CNN
F 1 "+5V" H 2700 2340 50  0000 C CNN
F 2 "" H 2700 2200 50  0000 C CNN
F 3 "" H 2700 2200 50  0000 C CNN
	1    2700 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 2200 2700 2250
Wire Wire Line
	1700 3550 1700 3650
Wire Wire Line
	2700 3850 2700 3950
Wire Wire Line
	7100 1750 7100 1900
Wire Wire Line
	7100 1900 7450 1900
Wire Wire Line
	5700 2000 7450 2000
Wire Wire Line
	6750 2000 6750 1750
Wire Wire Line
	6400 1750 6400 2200
Wire Wire Line
	6400 2200 7450 2200
Wire Wire Line
	5700 2300 7450 2300
Wire Wire Line
	6050 2300 6050 1750
$Comp
L GND #PWR07
U 1 1 58C4CA37
P 7300 2600
F 0 "#PWR07" H 7300 2350 50  0001 C CNN
F 1 "GND" H 7300 2450 50  0000 C CNN
F 2 "" H 7300 2600 50  0000 C CNN
F 3 "" H 7300 2600 50  0000 C CNN
	1    7300 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 2100 7300 2600
Wire Wire Line
	7300 2400 7450 2400
Wire Wire Line
	7300 2100 7450 2100
Connection ~ 7300 2400
$Comp
L +5V #PWR08
U 1 1 58C4D490
P 7100 1150
F 0 "#PWR08" H 7100 1000 50  0001 C CNN
F 1 "+5V" H 7100 1290 50  0000 C CNN
F 2 "" H 7100 1150 50  0000 C CNN
F 3 "" H 7100 1150 50  0000 C CNN
	1    7100 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 1150 7100 1450
Wire Wire Line
	6050 1300 7100 1300
Wire Wire Line
	6750 1300 6750 1450
Connection ~ 7100 1300
Wire Wire Line
	6400 1300 6400 1450
Connection ~ 6750 1300
Wire Wire Line
	6050 1300 6050 1450
Connection ~ 6400 1300
$Comp
L R R11
U 1 1 58C5045A
P 8800 2500
F 0 "R11" V 8880 2500 50  0000 C CNN
F 1 "10K" V 8800 2500 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 8730 2500 50  0001 C CNN
F 3 "" H 8800 2500 50  0000 C CNN
	1    8800 2500
	0    1    1    0   
$EndComp
$Comp
L GND #PWR09
U 1 1 58C5082E
P 9300 2950
F 0 "#PWR09" H 9300 2700 50  0001 C CNN
F 1 "GND" H 9300 2800 50  0000 C CNN
F 2 "" H 9300 2950 50  0000 C CNN
F 3 "" H 9300 2950 50  0000 C CNN
	1    9300 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 2950 9300 2700
Wire Wire Line
	9000 2500 8950 2500
Wire Wire Line
	8950 2050 8950 2200
Wire Wire Line
	8950 2200 9700 2200
Wire Wire Line
	9300 2050 9300 2300
Connection ~ 9300 2200
Text Notes 9500 1950 0    60   ~ 0
Populate only one \nof R12 or R14
$Comp
L +12V #PWR010
U 1 1 58C50AB9
P 8950 1500
F 0 "#PWR010" H 8950 1350 50  0001 C CNN
F 1 "+12V" H 8950 1640 50  0000 C CNN
F 2 "" H 8950 1500 50  0000 C CNN
F 3 "" H 8950 1500 50  0000 C CNN
	1    8950 1500
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR011
U 1 1 58C50B21
P 9300 1500
F 0 "#PWR011" H 9300 1350 50  0001 C CNN
F 1 "+5V" H 9300 1640 50  0000 C CNN
F 2 "" H 9300 1500 50  0000 C CNN
F 3 "" H 9300 1500 50  0000 C CNN
	1    9300 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 1500 9300 1750
Wire Wire Line
	8950 1500 8950 1750
$Comp
L LED D3
U 1 1 58C517E6
P 7800 3600
F 0 "D3" H 7800 3700 50  0000 C CNN
F 1 "GRN LED" H 7800 3500 50  0000 C CNN
F 2 "LEDs:LED-5MM" H 7800 3600 50  0001 C CNN
F 3 "" H 7800 3600 50  0000 C CNN
	1    7800 3600
	0    -1   -1   0   
$EndComp
$Comp
L LED D4
U 1 1 58C51A48
P 9800 3600
F 0 "D4" H 9800 3700 50  0000 C CNN
F 1 "RED LED" H 9800 3500 50  0000 C CNN
F 2 "LEDs:LED-5MM" H 9800 3600 50  0001 C CNN
F 3 "" H 9800 3600 50  0000 C CNN
	1    9800 3600
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR012
U 1 1 58C51B70
P 7800 3250
F 0 "#PWR012" H 7800 3100 50  0001 C CNN
F 1 "+5V" H 7800 3390 50  0000 C CNN
F 2 "" H 7800 3250 50  0000 C CNN
F 3 "" H 7800 3250 50  0000 C CNN
	1    7800 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 3250 7800 3400
Wire Wire Line
	7800 3300 9800 3300
Wire Wire Line
	9800 3300 9800 3400
Connection ~ 7800 3300
Wire Wire Line
	9800 3800 9800 4000
Wire Wire Line
	9800 4300 9800 4500
Wire Wire Line
	7800 4500 7800 4300
Wire Wire Line
	7800 4000 7800 3800
$Comp
L GND #PWR013
U 1 1 58C51EB9
P 7800 5100
F 0 "#PWR013" H 7800 4850 50  0001 C CNN
F 1 "GND" H 7800 4950 50  0000 C CNN
F 2 "" H 7800 5100 50  0000 C CNN
F 3 "" H 7800 5100 50  0000 C CNN
	1    7800 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 4900 7800 5100
Wire Wire Line
	7800 5000 9800 5000
Wire Wire Line
	9800 5000 9800 4900
Connection ~ 7800 5000
Wire Wire Line
	9500 4700 9400 4700
Wire Wire Line
	7500 4700 7350 4700
$Comp
L ARDUINO_PRO_MINI M1
U 1 1 58C52183
P 4150 4750
F 0 "M1" H 3850 5480 50  0000 L BNN
F 1 "ARDUINO_PRO_MINI" H 3850 3750 50  0000 L BNN
F 2 "SparkFun-Boards:ARDUINO_PRO_MINI" H 4180 4900 20  0001 C CNN
F 3 "" H 4150 4750 60  0001 C CNN
	1    4150 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 5250 3550 5250
Wire Wire Line
	3550 5250 3550 6500
Wire Wire Line
	3550 6500 3850 6500
$Comp
L GND #PWR014
U 1 1 58C526BC
P 3650 6850
F 0 "#PWR014" H 3650 6600 50  0001 C CNN
F 1 "GND" H 3650 6700 50  0000 C CNN
F 2 "" H 3650 6850 50  0000 C CNN
F 3 "" H 3650 6850 50  0000 C CNN
	1    3650 6850
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR015
U 1 1 58C52853
P 3350 6450
F 0 "#PWR015" H 3350 6300 50  0001 C CNN
F 1 "+5V" H 3350 6590 50  0000 C CNN
F 2 "" H 3350 6450 50  0000 C CNN
F 3 "" H 3350 6450 50  0000 C CNN
	1    3350 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 6600 3350 6600
Wire Wire Line
	3350 6600 3350 6450
Text Notes 4200 6600 0    60   ~ 0
To Servo
$Comp
L +5V #PWR016
U 1 1 58C536DE
P 4900 4050
F 0 "#PWR016" H 4900 3900 50  0001 C CNN
F 1 "+5V" H 4900 4190 50  0000 C CNN
F 2 "" H 4900 4050 50  0000 C CNN
F 3 "" H 4900 4050 50  0000 C CNN
	1    4900 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 4050 4900 4450
$Comp
L GND #PWR017
U 1 1 58C537EB
P 5050 4450
F 0 "#PWR017" H 5050 4200 50  0001 C CNN
F 1 "GND" H 5050 4300 50  0000 C CNN
F 2 "" H 5050 4450 50  0000 C CNN
F 3 "" H 5050 4450 50  0000 C CNN
	1    5050 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 4250 5050 4250
$Comp
L GND #PWR018
U 1 1 58C538DA
P 3500 4700
F 0 "#PWR018" H 3500 4450 50  0001 C CNN
F 1 "GND" H 3500 4550 50  0000 C CNN
F 2 "" H 3500 4700 50  0000 C CNN
F 3 "" H 3500 4700 50  0000 C CNN
	1    3500 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 4550 3200 4550
Wire Wire Line
	3750 4950 3200 4950
Wire Wire Line
	3750 5050 3200 5050
Connection ~ 6050 2300
Connection ~ 6750 2000
Wire Wire Line
	4650 4750 4950 4750
Wire Wire Line
	4650 4850 4950 4850
Text GLabel 3200 4950 0    60   Input ~ 0
TX_ON
Text GLabel 3200 5050 0    60   Input ~ 0
RX_ON
Text GLabel 4950 4750 2    60   Input ~ 0
RX_SENSE
Text GLabel 4950 4850 2    60   Input ~ 0
TX_SENSE
Wire Wire Line
	9100 4700 9000 4700
Wire Wire Line
	7050 4700 6900 4700
Text GLabel 6900 4700 0    60   Input ~ 0
TX_ON
Text GLabel 9000 4700 0    60   Input ~ 0
RX_ON
Text GLabel 5700 2000 0    60   Input ~ 0
RX_SENSE
Text GLabel 5700 2300 0    60   Input ~ 0
TX_SENSE
Wire Wire Line
	3200 3400 3300 3400
Wire Wire Line
	8650 2500 8500 2500
Text GLabel 8500 2500 0    60   Input ~ 0
TX_ON
Text GLabel 9700 2200 2    60   Input ~ 0
TX_EN_OUT_L
Wire Wire Line
	2050 1400 2150 1400
Wire Wire Line
	2050 1500 2150 1500
Text GLabel 2150 1400 2    60   Input ~ 0
TX_EN_OUT_L
Text GLabel 2150 1500 2    60   Input ~ 0
PTT_IN_RAW_L
Text GLabel 1500 3100 0    60   Input ~ 0
PTT_IN_RAW_L
Text GLabel 3300 3400 2    60   Input ~ 0
TX_EN_IN_H
Text GLabel 3200 4550 0    60   Input ~ 0
TX_EN_IN_H
Text Notes 6750 7300 0    158  ~ 32
Waveguide Switch\nServo Controller
NoConn ~ 3750 4150
NoConn ~ 3750 4250
NoConn ~ 3750 4350
NoConn ~ 4650 4150
NoConn ~ 4650 4350
NoConn ~ 4650 4550
NoConn ~ 4650 4650
NoConn ~ 4650 4950
NoConn ~ 4650 5050
NoConn ~ 4650 5150
NoConn ~ 4650 5250
NoConn ~ 4650 5450
NoConn ~ 4650 5550
NoConn ~ 3750 5450
NoConn ~ 3750 5550
NoConn ~ 3750 5150
NoConn ~ 3750 4850
NoConn ~ 3750 4750
NoConn ~ 3750 4650
Wire Wire Line
	3500 4700 3500 4450
Wire Wire Line
	3500 4450 3750 4450
Wire Wire Line
	5050 4250 5050 4450
Wire Wire Line
	4900 4450 4650 4450
Wire Wire Line
	3650 6850 3650 6700
Wire Wire Line
	3650 6700 3850 6700
Wire Wire Line
	4300 1150 4800 1150
$Comp
L GND #PWR019
U 1 1 58D333EC
P 1700 800
F 0 "#PWR019" H 1700 550 50  0001 C CNN
F 1 "GND" H 1700 650 50  0000 C CNN
F 2 "" H 1700 800 50  0000 C CNN
F 3 "" H 1700 800 50  0000 C CNN
	1    1700 800 
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG020
U 1 1 58D3356B
P 1700 700
F 0 "#FLG020" H 1700 795 50  0001 C CNN
F 1 "PWR_FLAG" H 1700 880 50  0000 C CNN
F 2 "" H 1700 700 50  0000 C CNN
F 3 "" H 1700 700 50  0000 C CNN
	1    1700 700 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 700  1700 800 
$Comp
L PWR_FLAG #FLG021
U 1 1 58D33FF6
P 800 800
F 0 "#FLG021" H 800 895 50  0001 C CNN
F 1 "PWR_FLAG" H 800 980 50  0000 C CNN
F 2 "" H 800 800 50  0000 C CNN
F 3 "" H 800 800 50  0000 C CNN
	1    800  800 
	-1   0    0    1   
$EndComp
$Comp
L +12V #PWR022
U 1 1 58D34085
P 800 650
F 0 "#PWR022" H 800 500 50  0001 C CNN
F 1 "+12V" H 800 790 50  0000 C CNN
F 2 "" H 800 650 50  0000 C CNN
F 3 "" H 800 650 50  0000 C CNN
	1    800  650 
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  650  800  800 
$Comp
L LM7805CT U1
U 1 1 58D337FC
P 3900 1200
F 0 "U1" H 3700 1400 50  0000 C CNN
F 1 "LM7805CT" H 3900 1400 50  0000 L CNN
F 2 "Power_Integrations:TO-220" H 3900 1300 50  0000 C CIN
F 3 "" H 3900 1200 50  0000 C CNN
	1    3900 1200
	1    0    0    -1  
$EndComp
$Comp
L D_Schottky D2
U 1 1 58C4B26E
P 2700 2400
F 0 "D2" H 2700 2500 50  0000 C CNN
F 1 "PMEG3030EP" H 2700 2300 50  0000 C CNN
F 2 "sod:SOD-128" H 2700 2400 50  0001 C CNN
F 3 "" H 2700 2400 50  0000 C CNN
	1    2700 2400
	0    1    -1   0   
$EndComp
Text Notes 5550 6400 0    118  ~ 0
Rev B: New version in KiCAD add input transistor switch. \nRev C: changed footprint for D1 and D2 to SOD-128
$EndSCHEMATC
