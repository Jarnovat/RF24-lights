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
LIBS:RF24Lights-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "RF24Lights"
Date "2017-08-26"
Rev "7.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ATMEGA328-A IC1
U 1 1 55212852
P 3800 3400
F 0 "IC1" H 3050 4650 40  0000 L BNN
F 1 "ATMEGA328-A" H 4200 2000 40  0000 L BNN
F 2 "Housings_QFP:TQFP-32_7x7mm_Pitch0.8mm" H 3800 3400 30  0000 C CIN
F 3 "" H 3800 3400 60  0000 C CNN
	1    3800 3400
	1    0    0    -1  
$EndComp
$Comp
L BSS138 Q1
U 1 1 55218FEB
P 7950 2050
F 0 "Q1" H 8000 2100 60  0001 C CNN
F 1 "BSS138" H 7950 2050 60  0001 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 7950 2050 60  0001 C CNN
F 3 "" H 7950 2050 60  0001 C CNN
F 4 "Q" H 8150 2125 50  0000 L CNN "Reference"
F 5 "BSS138" H 8150 2050 50  0000 L CNN "Value"
F 6 "SOT-23" H 8150 1975 50  0000 L CIN "Footprint"
F 7 "" H 7950 2050 50  0000 L CNN "Datasheet"
	1    7950 2050
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 55219061
P 7650 2350
F 0 "R3" H 7700 2400 60  0001 C CNN
F 1 "10K" H 7650 2350 60  0001 C CNN
F 2 "Resistors_SMD:R_0603" H 7650 2350 60  0001 C CNN
F 3 "" H 7650 2350 60  0001 C CNN
F 4 "R" V 7730 2350 50  0000 C CNN "Reference"
F 5 "10K" V 7650 2350 50  0000 C CNN "Value"
F 6 "" V 7580 2350 30  0000 C CNN "Footprint"
F 7 "" H 7650 2350 30  0000 C CNN "Datasheet"
	1    7650 2350
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR01
U 1 1 55219085
P 7650 2750
F 0 "#PWR01" H 7700 2800 60  0001 C CNN
F 1 "GND" H 7650 2750 60  0001 C CNN
F 2 "" H 7650 2750 60  0001 C CNN
F 3 "" H 7650 2750 60  0001 C CNN
F 4 "#PWR" H 7650 2500 50  0001 C CNN "Reference"
F 5 "GND" H 7650 2600 50  0000 C CNN "Value"
F 6 "" H 7650 2750 60  0000 C CNN "Footprint"
F 7 "" H 7650 2750 60  0000 C CNN "Datasheet"
	1    7650 2750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 55219952
P 2750 4750
F 0 "#PWR02" H 2800 4800 60  0001 C CNN
F 1 "GND" H 2750 4750 60  0001 C CNN
F 2 "" H 2750 4750 60  0001 C CNN
F 3 "" H 2750 4750 60  0001 C CNN
F 4 "#PWR" H 2750 4500 50  0001 C CNN "Reference"
F 5 "GND" H 2750 4600 50  0000 C CNN "Value"
F 6 "" H 2750 4750 60  0000 C CNN "Footprint"
F 7 "" H 2750 4750 60  0000 C CNN "Datasheet"
	1    2750 4750
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR03
U 1 1 55219A6B
P 2700 2150
F 0 "#PWR03" H 2750 2200 60  0001 C CNN
F 1 "+3V3" H 2700 2150 60  0001 C CNN
F 2 "" H 2700 2150 60  0001 C CNN
F 3 "" H 2700 2150 60  0001 C CNN
F 4 "#PWR" H 2700 2000 50  0001 C CNN "Reference"
F 5 "+3V3" H 2700 2290 50  0000 C CNN "Value"
F 6 "" H 2700 2150 60  0000 C CNN "Footprint"
F 7 "" H 2700 2150 60  0000 C CNN "Datasheet"
	1    2700 2150
	1    0    0    -1  
$EndComp
Text Label 5100 2300 2    60   ~ 0
D8
Text Label 5100 2400 2    60   ~ 0
PWM1
Text Label 5100 2500 2    60   ~ 0
D10
Text Label 5100 2600 2    60   ~ 0
D11
Text Label 5100 2700 2    60   ~ 0
D12
Text Label 5100 2800 2    60   ~ 0
D13
Text Label 5100 3750 2    60   ~ 0
RST
Text Label 5100 3900 2    60   ~ 0
RX
Text Label 5100 4000 2    60   ~ 0
TX
Text Label 5100 4100 2    60   ~ 0
D2
Text Label 5100 4200 2    60   ~ 0
PWM4
Text Label 5100 4400 2    60   ~ 0
PWM3
Text Label 5100 4500 2    60   ~ 0
PWM2
Text Label 5100 4600 2    60   ~ 0
LED
NoConn ~ 4800 3150
NoConn ~ 4800 3250
NoConn ~ 4800 3350
NoConn ~ 4800 3450
NoConn ~ 4800 3550
NoConn ~ 4800 3650
NoConn ~ 2900 3750
NoConn ~ 2900 3650
NoConn ~ 2900 2900
$Comp
L +3V3 #PWR04
U 1 1 5521A5A3
P 10800 1850
F 0 "#PWR04" H 10850 1900 60  0001 C CNN
F 1 "+3V3" H 10800 1850 60  0001 C CNN
F 2 "" H 10800 1850 60  0001 C CNN
F 3 "" H 10800 1850 60  0001 C CNN
F 4 "#PWR" H 10800 1700 50  0001 C CNN "Reference"
F 5 "+3V3" H 10800 1990 50  0000 C CNN "Value"
F 6 "" H 10800 1850 60  0000 C CNN "Footprint"
F 7 "" H 10800 1850 60  0000 C CNN "Datasheet"
	1    10800 1850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 5521A50D
P 10150 2350
F 0 "#PWR05" H 10200 2400 60  0001 C CNN
F 1 "GND" H 10150 2350 60  0001 C CNN
F 2 "" H 10150 2350 60  0001 C CNN
F 3 "" H 10150 2350 60  0001 C CNN
F 4 "#PWR" H 10150 2100 50  0001 C CNN "Reference"
F 5 "GND" H 10150 2200 50  0000 C CNN "Value"
F 6 "" H 10150 2350 60  0000 C CNN "Footprint"
F 7 "" H 10150 2350 60  0000 C CNN "Datasheet"
	1    10150 2350
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P3
U 1 1 5521A7E1
P 10300 1050
F 0 "P3" H 10350 1100 60  0001 C CNN
F 1 "CONN_01X02" H 10300 1050 60  0001 C CNN
F 2 "Connectors_Phoenix:PhoenixContact_MSTBA-G_02x5.08mm_Angled" H 10300 1050 60  0001 C CNN
F 3 "" H 10300 1050 60  0001 C CNN
F 4 "P" H 10300 1200 50  0000 C CNN "Reference"
F 5 "CONN_01X02" V 10400 1050 50  0000 C CNN "Value"
F 6 "" H 10300 1050 60  0000 C CNN "Footprint"
F 7 "" H 10300 1050 60  0000 C CNN "Datasheet"
	1    10300 1050
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X05 P4
U 1 1 5521A80D
P 10500 5450
F 0 "P4" H 10550 5500 60  0001 C CNN
F 1 "CONN_01X05" H 10500 5450 60  0001 C CNN
F 2 "Connectors_Phoenix:PhoenixContact_MSTBA-G_05x5.08mm_Angled" H 10500 5450 60  0001 C CNN
F 3 "" H 10500 5450 60  0001 C CNN
F 4 "P" H 10500 5750 50  0000 C CNN "Reference"
F 5 "CONN_01X05" V 10600 5450 50  0000 C CNN "Value"
F 6 "" H 10500 5450 60  0000 C CNN "Footprint"
F 7 "" H 10500 5450 60  0000 C CNN "Datasheet"
	1    10500 5450
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR06
U 1 1 5521A923
P 9800 950
F 0 "#PWR06" H 9850 1000 60  0001 C CNN
F 1 "+12V" H 9800 950 60  0001 C CNN
F 2 "" H 9800 950 60  0001 C CNN
F 3 "" H 9800 950 60  0001 C CNN
F 4 "#PWR" H 9800 800 50  0001 C CNN "Reference"
F 5 "+12V" H 9800 1090 50  0000 C CNN "Value"
F 6 "" H 9800 950 60  0000 C CNN "Footprint"
F 7 "" H 9800 950 60  0000 C CNN "Datasheet"
	1    9800 950 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 5521A945
P 9800 1150
F 0 "#PWR07" H 9850 1200 60  0001 C CNN
F 1 "GND" H 9800 1150 60  0001 C CNN
F 2 "" H 9800 1150 60  0001 C CNN
F 3 "" H 9800 1150 60  0001 C CNN
F 4 "#PWR" H 9800 900 50  0001 C CNN "Reference"
F 5 "GND" H 9800 1000 50  0000 C CNN "Value"
F 6 "" H 9800 1150 60  0000 C CNN "Footprint"
F 7 "" H 9800 1150 60  0000 C CNN "Datasheet"
	1    9800 1150
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR08
U 1 1 5521AAC3
P 9400 1850
F 0 "#PWR08" H 9450 1900 60  0001 C CNN
F 1 "+12V" H 9400 1850 60  0001 C CNN
F 2 "" H 9400 1850 60  0001 C CNN
F 3 "" H 9400 1850 60  0001 C CNN
F 4 "#PWR" H 9400 1700 50  0001 C CNN "Reference"
F 5 "+12V" H 9400 1990 50  0000 C CNN "Value"
F 6 "" H 9400 1850 60  0000 C CNN "Footprint"
F 7 "" H 9400 1850 60  0000 C CNN "Datasheet"
	1    9400 1850
	1    0    0    -1  
$EndComp
$Comp
L BSS138 Q2
U 1 1 5521AECE
P 7950 3100
F 0 "Q2" H 8000 3150 60  0001 C CNN
F 1 "BSS138" H 7950 3100 60  0001 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 7950 3100 60  0001 C CNN
F 3 "" H 7950 3100 60  0001 C CNN
F 4 "Q" H 8150 3175 50  0000 L CNN "Reference"
F 5 "BSS138" H 8150 3100 50  0000 L CNN "Value"
F 6 "SOT-23" H 8150 3025 50  0000 L CIN "Footprint"
F 7 "" H 7950 3100 50  0000 L CNN "Datasheet"
	1    7950 3100
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 5521AED8
P 7650 3400
F 0 "R4" H 7700 3450 60  0001 C CNN
F 1 "10K" H 7650 3400 60  0001 C CNN
F 2 "Resistors_SMD:R_0603" H 7650 3400 60  0001 C CNN
F 3 "" H 7650 3400 60  0001 C CNN
F 4 "R" V 7730 3400 50  0000 C CNN "Reference"
F 5 "10K" V 7650 3400 50  0000 C CNN "Value"
F 6 "" V 7580 3400 30  0000 C CNN "Footprint"
F 7 "" H 7650 3400 30  0000 C CNN "Datasheet"
	1    7650 3400
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR09
U 1 1 5521AEE2
P 7650 3800
F 0 "#PWR09" H 7700 3850 60  0001 C CNN
F 1 "GND" H 7650 3800 60  0001 C CNN
F 2 "" H 7650 3800 60  0001 C CNN
F 3 "" H 7650 3800 60  0001 C CNN
F 4 "#PWR" H 7650 3550 50  0001 C CNN "Reference"
F 5 "GND" H 7650 3650 50  0000 C CNN "Value"
F 6 "" H 7650 3800 60  0000 C CNN "Footprint"
F 7 "" H 7650 3800 60  0000 C CNN "Datasheet"
	1    7650 3800
	1    0    0    -1  
$EndComp
$Comp
L BSS138 Q3
U 1 1 5521AF1B
P 7950 4150
F 0 "Q3" H 8000 4200 60  0001 C CNN
F 1 "BSS138" H 7950 4150 60  0001 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 7950 4150 60  0001 C CNN
F 3 "" H 7950 4150 60  0001 C CNN
F 4 "Q" H 8150 4225 50  0000 L CNN "Reference"
F 5 "BSS138" H 8150 4150 50  0000 L CNN "Value"
F 6 "SOT-23" H 8150 4075 50  0000 L CIN "Footprint"
F 7 "" H 7950 4150 50  0000 L CNN "Datasheet"
	1    7950 4150
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 5521AF25
P 7650 4450
F 0 "R5" H 7700 4500 60  0001 C CNN
F 1 "10K" H 7650 4450 60  0001 C CNN
F 2 "Resistors_SMD:R_0603" H 7650 4450 60  0001 C CNN
F 3 "" H 7650 4450 60  0001 C CNN
F 4 "R" V 7730 4450 50  0000 C CNN "Reference"
F 5 "10K" V 7650 4450 50  0000 C CNN "Value"
F 6 "" V 7580 4450 30  0000 C CNN "Footprint"
F 7 "" H 7650 4450 30  0000 C CNN "Datasheet"
	1    7650 4450
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR010
U 1 1 5521AF2F
P 7650 4850
F 0 "#PWR010" H 7700 4900 60  0001 C CNN
F 1 "GND" H 7650 4850 60  0001 C CNN
F 2 "" H 7650 4850 60  0001 C CNN
F 3 "" H 7650 4850 60  0001 C CNN
F 4 "#PWR" H 7650 4600 50  0001 C CNN "Reference"
F 5 "GND" H 7650 4700 50  0000 C CNN "Value"
F 6 "" H 7650 4850 60  0000 C CNN "Footprint"
F 7 "" H 7650 4850 60  0000 C CNN "Datasheet"
	1    7650 4850
	1    0    0    -1  
$EndComp
$Comp
L BSS138 Q4
U 1 1 5521AF40
P 7950 5200
F 0 "Q4" H 8000 5250 60  0001 C CNN
F 1 "BSS138" H 7950 5200 60  0001 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 7950 5200 60  0001 C CNN
F 3 "" H 7950 5200 60  0001 C CNN
F 4 "Q" H 8150 5275 50  0000 L CNN "Reference"
F 5 "BSS138" H 8150 5200 50  0000 L CNN "Value"
F 6 "SOT-23" H 8150 5125 50  0000 L CIN "Footprint"
F 7 "" H 7950 5200 50  0000 L CNN "Datasheet"
	1    7950 5200
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 5521AF4A
P 7650 5500
F 0 "R6" H 7700 5550 60  0001 C CNN
F 1 "10K" H 7650 5500 60  0001 C CNN
F 2 "Resistors_SMD:R_0603" H 7650 5500 60  0001 C CNN
F 3 "" H 7650 5500 60  0001 C CNN
F 4 "R" V 7730 5500 50  0000 C CNN "Reference"
F 5 "10K" V 7650 5500 50  0000 C CNN "Value"
F 6 "" V 7580 5500 30  0000 C CNN "Footprint"
F 7 "" H 7650 5500 30  0000 C CNN "Datasheet"
	1    7650 5500
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR011
U 1 1 5521AF54
P 7650 5900
F 0 "#PWR011" H 7700 5950 60  0001 C CNN
F 1 "GND" H 7650 5900 60  0001 C CNN
F 2 "" H 7650 5900 60  0001 C CNN
F 3 "" H 7650 5900 60  0001 C CNN
F 4 "#PWR" H 7650 5650 50  0001 C CNN "Reference"
F 5 "GND" H 7650 5750 50  0000 C CNN "Value"
F 6 "" H 7650 5900 60  0000 C CNN "Footprint"
F 7 "" H 7650 5900 60  0000 C CNN "Datasheet"
	1    7650 5900
	1    0    0    -1  
$EndComp
Text Label 10000 5350 0    60   ~ 0
OUT3
Text Label 10000 5450 0    60   ~ 0
OUT2
Text Label 10000 5550 0    60   ~ 0
OUT1
Text Label 10000 5650 0    60   ~ 0
+12V
Text Label 8400 1800 2    60   ~ 0
OUT1
Text Label 8400 2850 2    60   ~ 0
OUT2
Text Label 8400 3900 2    60   ~ 0
OUT3
Text Label 8400 4950 2    60   ~ 0
OUT4
$Comp
L R R2
U 1 1 5521B73E
P 7500 1100
F 0 "R2" H 7550 1150 60  0001 C CNN
F 1 "R" H 7500 1100 60  0001 C CNN
F 2 "Resistors_SMD:R_0603" H 7500 1100 60  0001 C CNN
F 3 "" H 7500 1100 60  0001 C CNN
F 4 "R" V 7580 1100 50  0000 C CNN "Reference"
F 5 "R" V 7500 1100 50  0000 C CNN "Value"
F 6 "" V 7430 1100 30  0000 C CNN "Footprint"
F 7 "" H 7500 1100 30  0000 C CNN "Datasheet"
	1    7500 1100
	0    1    1    0   
$EndComp
$Comp
L GND #PWR012
U 1 1 5521B782
P 8500 1200
F 0 "#PWR012" H 8550 1250 60  0001 C CNN
F 1 "GND" H 8500 1200 60  0001 C CNN
F 2 "" H 8500 1200 60  0001 C CNN
F 3 "" H 8500 1200 60  0001 C CNN
F 4 "#PWR" H 8500 950 50  0001 C CNN "Reference"
F 5 "GND" H 8500 1050 50  0000 C CNN "Value"
F 6 "" H 8500 1200 60  0000 C CNN "Footprint"
F 7 "" H 8500 1200 60  0000 C CNN "Datasheet"
	1    8500 1200
	1    0    0    -1  
$EndComp
Text Label 7100 1100 0    60   ~ 0
LED
$Comp
L R R1
U 1 1 5521BF96
P 3600 6600
F 0 "R1" H 3650 6650 60  0001 C CNN
F 1 "10K" H 3600 6600 60  0001 C CNN
F 2 "Resistors_SMD:R_0603" H 3600 6600 60  0001 C CNN
F 3 "" H 3600 6600 60  0001 C CNN
F 4 "R" V 3680 6600 50  0000 C CNN "Reference"
F 5 "10K" V 3600 6600 50  0000 C CNN "Value"
F 6 "" V 3530 6600 30  0000 C CNN "Footprint"
F 7 "" H 3600 6600 30  0000 C CNN "Datasheet"
	1    3600 6600
	0    1    1    0   
$EndComp
$Comp
L +3V3 #PWR013
U 1 1 5521C169
P 4050 6550
F 0 "#PWR013" H 4100 6600 60  0001 C CNN
F 1 "+3V3" H 4050 6550 60  0001 C CNN
F 2 "" H 4050 6550 60  0001 C CNN
F 3 "" H 4050 6550 60  0001 C CNN
F 4 "#PWR" H 4050 6400 50  0001 C CNN "Reference"
F 5 "+3V3" H 4050 6690 50  0000 C CNN "Value"
F 6 "" H 4050 6550 60  0000 C CNN "Footprint"
F 7 "" H 4050 6550 60  0000 C CNN "Datasheet"
	1    4050 6550
	1    0    0    -1  
$EndComp
Text Label 3150 6600 0    60   ~ 0
RST
NoConn ~ 4800 4300
$Comp
L CONN_01X08 P5
U 1 1 552421D1
P 5400 1350
F 0 "P5" H 5400 1800 50  0000 C CNN
F 1 "CONN_01X08" V 5500 1350 50  0000 C CNN
F 2 "PWM_ohjain:nrf24l01_mini" H 5400 1350 60  0001 C CNN
F 3 "" H 5400 1350 60  0000 C CNN
	1    5400 1350
	1    0    0    -1  
$EndComp
Text Label 4950 1000 0    60   ~ 0
+3V3
Text Label 4950 1100 0    60   ~ 0
GND
Text Label 4950 1200 0    60   ~ 0
D8
Text Label 4950 1300 0    60   ~ 0
D10
Text Label 4950 1400 0    60   ~ 0
D13
Text Label 4950 1500 0    60   ~ 0
D11
Text Label 4950 1600 0    60   ~ 0
D12
Text Label 4950 1700 0    60   ~ 0
D2
$Comp
L C C5
U 1 1 55256EB9
P 9700 3000
F 0 "C5" H 9725 3100 50  0000 L CNN
F 1 "C" H 9725 2900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 9738 2850 30  0001 C CNN
F 3 "" H 9700 3000 60  0000 C CNN
	1    9700 3000
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 55256FA2
P 10000 3000
F 0 "C6" H 10025 3100 50  0000 L CNN
F 1 "C" H 10025 2900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 10038 2850 30  0001 C CNN
F 3 "" H 10000 3000 60  0000 C CNN
	1    10000 3000
	1    0    0    1   
$EndComp
$Comp
L +3V3 #PWR014
U 1 1 552570CC
P 9850 2750
F 0 "#PWR014" H 9850 2600 50  0001 C CNN
F 1 "+3V3" H 9850 2890 50  0000 C CNN
F 2 "" H 9850 2750 60  0000 C CNN
F 3 "" H 9850 2750 60  0000 C CNN
	1    9850 2750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 552570E5
P 9850 3250
F 0 "#PWR015" H 9850 3000 50  0001 C CNN
F 1 "GND" H 9850 3100 50  0000 C CNN
F 2 "" H 9850 3250 60  0000 C CNN
F 3 "" H 9850 3250 60  0000 C CNN
	1    9850 3250
	1    0    0    -1  
$EndComp
$Comp
L CP1 C11
U 1 1 55A02EDB
P 10350 3000
F 0 "C11" H 10400 3050 60  0001 C CNN
F 1 "10uF" H 10350 3000 60  0001 C CNN
F 2 "PWM_ohjain:TantalC_SizeB_EIA-3528_Reflow_Polar" H 10350 3000 60  0001 C CNN
F 3 "" H 10350 3000 60  0001 C CNN
F 4 "C" H 10375 3100 50  0000 L CNN "Reference"
F 5 "10uF" H 10375 2900 50  0000 L CNN "Value"
F 6 "" H 10350 3000 60  0000 C CNN "Footprint"
F 7 "" H 10350 3000 60  0000 C CNN "Datasheet"
	1    10350 3000
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 55A03516
P 7000 2100
F 0 "R7" H 7050 2150 60  0001 C CNN
F 1 "R" H 7000 2100 60  0001 C CNN
F 2 "Resistors_SMD:R_0603" H 7000 2100 60  0001 C CNN
F 3 "" H 7000 2100 60  0001 C CNN
F 4 "R" V 7080 2100 50  0000 C CNN "Reference"
F 5 "R" V 7000 2100 50  0000 C CNN "Value"
F 6 "" V 6930 2100 30  0000 C CNN "Footprint"
F 7 "" H 7000 2100 30  0000 C CNN "Datasheet"
	1    7000 2100
	0    1    1    0   
$EndComp
$Comp
L R R8
U 1 1 55A03571
P 7000 3150
F 0 "R8" H 7050 3200 60  0001 C CNN
F 1 "R" H 7000 3150 60  0001 C CNN
F 2 "Resistors_SMD:R_0603" H 7000 3150 60  0001 C CNN
F 3 "" H 7000 3150 60  0001 C CNN
F 4 "R" V 7080 3150 50  0000 C CNN "Reference"
F 5 "R" V 7000 3150 50  0000 C CNN "Value"
F 6 "" V 6930 3150 30  0000 C CNN "Footprint"
F 7 "" H 7000 3150 30  0000 C CNN "Datasheet"
	1    7000 3150
	0    1    1    0   
$EndComp
Text Label 6650 2100 0    60   ~ 0
PWM1
Text Label 6600 3150 0    60   ~ 0
PWM2
Text Label 6650 4200 0    60   ~ 0
PWM3
Text Label 6650 5250 0    60   ~ 0
PWM4
$Comp
L CONN_02X03 J1
U 1 1 59982694
P 3150 1200
F 0 "J1" H 3150 1400 50  0000 C CNN
F 1 "CONN_02X03" H 3150 1000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03_Pitch2.54mm" H 3150 0   50  0001 C CNN
F 3 "" H 3150 0   50  0001 C CNN
	1    3150 1200
	1    0    0    -1  
$EndComp
Text Notes 3050 900  0    60   ~ 0
ICSP
Wire Wire Line
	7650 2500 7650 2750
Wire Wire Line
	7650 2200 7650 2100
Wire Wire Line
	7150 2100 7750 2100
Wire Wire Line
	8050 2600 8050 2250
Connection ~ 7650 2600
Connection ~ 7650 2100
Wire Wire Line
	4800 2600 5100 2600
Wire Wire Line
	4800 2700 5100 2700
Wire Wire Line
	4800 2800 5100 2800
Wire Wire Line
	4800 2300 5100 2300
Wire Wire Line
	4800 2400 5100 2400
Wire Wire Line
	4800 2500 5100 2500
Wire Wire Line
	4800 3900 5100 3900
Wire Wire Line
	4800 4000 5100 4000
Wire Wire Line
	4800 4100 5100 4100
Wire Wire Line
	4800 4400 5100 4400
Wire Wire Line
	4800 4500 5100 4500
Wire Wire Line
	4800 4600 5100 4600
Wire Wire Line
	4800 4200 5100 4200
Wire Wire Line
	4800 3750 5100 3750
Wire Wire Line
	2900 4400 2750 4400
Wire Wire Line
	2750 4400 2750 4750
Wire Wire Line
	2750 4600 2900 4600
Wire Wire Line
	2900 4500 2750 4500
Connection ~ 2750 4500
Wire Wire Line
	2900 2300 2700 2300
Wire Wire Line
	2700 2150 2700 2600
Wire Wire Line
	2700 2400 2900 2400
Wire Wire Line
	2700 2600 2900 2600
Connection ~ 2700 2400
Wire Wire Line
	2750 4500 2750 4600
Connection ~ 2750 4600
Connection ~ 2700 2300
Wire Wire Line
	10150 2200 10150 2350
Wire Wire Line
	9800 1000 10100 1000
Wire Wire Line
	9800 1100 10100 1100
Wire Wire Line
	9800 1000 9800 950 
Wire Wire Line
	9800 1100 9800 1150
Wire Wire Line
	9400 1900 9750 1900
Wire Wire Line
	9400 1900 9400 1850
Wire Wire Line
	10550 1900 10800 1900
Wire Wire Line
	10800 1900 10800 1850
Wire Wire Line
	10300 5250 10000 5250
Wire Wire Line
	10300 5350 10000 5350
Wire Wire Line
	10300 5450 10000 5450
Wire Wire Line
	10300 5550 10000 5550
Wire Wire Line
	10300 5650 10000 5650
Wire Wire Line
	7650 3550 7650 3800
Wire Wire Line
	7650 3250 7650 3150
Wire Wire Line
	7150 3150 7750 3150
Wire Wire Line
	8050 3650 8050 3300
Connection ~ 7650 3650
Connection ~ 7650 3150
Wire Wire Line
	7650 4600 7650 4850
Wire Wire Line
	7650 4300 7650 4200
Wire Wire Line
	7150 4200 7750 4200
Wire Wire Line
	8050 4700 8050 4350
Connection ~ 7650 4700
Connection ~ 7650 4200
Wire Wire Line
	7650 5650 7650 5900
Wire Wire Line
	7650 5350 7650 5250
Wire Wire Line
	7150 5250 7750 5250
Wire Wire Line
	8050 5750 8050 5400
Connection ~ 7650 5750
Connection ~ 7650 5250
Wire Wire Line
	8050 5000 8050 4950
Wire Wire Line
	8050 4950 8400 4950
Wire Wire Line
	8050 3950 8050 3900
Wire Wire Line
	8050 3900 8400 3900
Wire Wire Line
	8050 2900 8050 2850
Wire Wire Line
	8050 2850 8400 2850
Wire Wire Line
	8050 1850 8050 1800
Wire Wire Line
	8050 1800 8400 1800
Wire Wire Line
	10600 2000 10600 1900
Connection ~ 10600 1900
Wire Wire Line
	9700 2300 10600 2300
Connection ~ 10150 2300
Wire Wire Line
	9700 2000 9700 1900
Connection ~ 9700 1900
Wire Wire Line
	8250 1100 8500 1100
Wire Wire Line
	8500 1100 8500 1200
Wire Wire Line
	7650 1100 7950 1100
Wire Wire Line
	7350 1100 7100 1100
Wire Wire Line
	3450 6600 3150 6600
Wire Wire Line
	3750 6600 4050 6600
Wire Wire Line
	4050 6600 4050 6550
Wire Wire Line
	5200 1000 4950 1000
Wire Wire Line
	5200 1100 4950 1100
Wire Wire Line
	5200 1200 4950 1200
Wire Wire Line
	5200 1300 4950 1300
Wire Wire Line
	5200 1400 4950 1400
Wire Wire Line
	5200 1500 4950 1500
Wire Wire Line
	5200 1600 4950 1600
Wire Wire Line
	5200 1700 4950 1700
Wire Wire Line
	9700 2850 10350 2850
Wire Wire Line
	9850 2750 9850 2850
Connection ~ 9850 2850
Wire Wire Line
	9700 3150 10350 3150
Wire Wire Line
	9850 3150 9850 3250
Connection ~ 9850 3150
Connection ~ 10000 2850
Connection ~ 10000 3150
Wire Wire Line
	6850 2100 6650 2100
Wire Wire Line
	6600 3150 6850 3150
Wire Wire Line
	6850 4200 6650 4200
Wire Wire Line
	6850 5250 6650 5250
Wire Wire Line
	2900 1100 2700 1100
Wire Wire Line
	2900 1200 2700 1200
Wire Wire Line
	2900 1300 2700 1300
Wire Wire Line
	3400 1300 3600 1300
Wire Wire Line
	3400 1200 3600 1200
Wire Wire Line
	3400 1100 3600 1100
Text Label 2700 1100 0    60   ~ 0
D12
Text Label 3600 1100 2    60   ~ 0
+3V3
Text Label 2700 1200 0    60   ~ 0
D13
Text Label 2700 1300 0    60   ~ 0
RST
Text Label 3600 1200 2    60   ~ 0
D11
Text Label 3600 1300 2    60   ~ 0
GND
NoConn ~ 4800 2900
NoConn ~ 4800 3000
Text Label 10000 5250 0    60   ~ 0
OUT4
$Comp
L AP2210 U1
U 1 1 599B3A39
P 10150 1950
F 0 "U1" H 10150 2200 50  0000 C CNN
F 1 "AP2210" H 10150 2150 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 10150 2050 50  0001 C CNN
F 3 "" H 10150 1950 50  0001 C CNN
	1    10150 1950
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 599B3C64
P 9700 2150
F 0 "C1" H 9725 2250 50  0000 L CNN
F 1 "1uF" H 9725 2050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 9738 2000 50  0001 C CNN
F 3 "" H 9700 2150 50  0001 C CNN
	1    9700 2150
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 599B3CDF
P 10600 2150
F 0 "C2" H 10625 2250 50  0000 L CNN
F 1 "2,2uF" H 10625 2050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 10638 2000 50  0001 C CNN
F 3 "" H 10600 2150 50  0001 C CNN
	1    10600 2150
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 55A0369B
P 7000 4200
F 0 "R9" H 7050 4250 60  0001 C CNN
F 1 "R" H 7000 4200 60  0001 C CNN
F 2 "Resistors_SMD:R_0603" H 7000 4200 60  0001 C CNN
F 3 "" H 7000 4200 60  0001 C CNN
F 4 "R" V 7080 4200 50  0000 C CNN "Reference"
F 5 "R" V 7000 4200 50  0000 C CNN "Value"
F 6 "" V 6930 4200 30  0000 C CNN "Footprint"
F 7 "" H 7000 4200 30  0000 C CNN "Datasheet"
	1    7000 4200
	0    1    1    0   
$EndComp
$Comp
L R R10
U 1 1 55A036C0
P 7000 5250
F 0 "R10" H 7050 5300 60  0001 C CNN
F 1 "R" H 7000 5250 60  0001 C CNN
F 2 "Resistors_SMD:R_0603" H 7000 5250 60  0001 C CNN
F 3 "" H 7000 5250 60  0001 C CNN
F 4 "R" V 7080 5250 50  0000 C CNN "Reference"
F 5 "R" V 7000 5250 50  0000 C CNN "Value"
F 6 "" V 6930 5250 30  0000 C CNN "Footprint"
F 7 "" H 7000 5250 30  0000 C CNN "Datasheet"
	1    7000 5250
	0    1    1    0   
$EndComp
Wire Wire Line
	8050 5750 7650 5750
Wire Wire Line
	8050 4700 7650 4700
Wire Wire Line
	8050 3650 7650 3650
Wire Wire Line
	8050 2600 7650 2600
$Comp
L LED D1
U 1 1 599DC67F
P 8100 1100
F 0 "D1" H 8100 1200 50  0000 C CNN
F 1 "LED" H 8100 1000 50  0000 C CNN
F 2 "LEDs:LED_0603" H 8100 1100 50  0001 C CNN
F 3 "" H 8100 1100 50  0001 C CNN
	1    8100 1100
	-1   0    0    1   
$EndComp
$EndSCHEMATC
