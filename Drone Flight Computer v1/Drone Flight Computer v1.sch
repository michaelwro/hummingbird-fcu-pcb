EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Hummingbird FCU"
Date "2021-01-10"
Rev "v1.0"
Comp "MicWro Engineering"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Quadcopter flight controller based on the Teensy 4.1 MCU"
$EndDescr
$Comp
L MCU_Microchip_AVR:Teensy4.1 U3
U 1 1 5F63680B
P 6300 3950
F 0 "U3" H 6325 5315 50  0000 C CNN
F 1 "Teensy4.1" H 6325 5224 50  0000 C CNN
F 2 "Module:Teensy4.1" H 6300 3950 50  0001 C CNN
F 3 "" H 6300 3950 50  0001 C CNN
	1    6300 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 5F63AD12
P 7150 3000
F 0 "#PWR021" H 7150 2750 50  0001 C CNN
F 1 "GND" V 7155 2872 50  0000 R CNN
F 2 "" H 7150 3000 50  0001 C CNN
F 3 "" H 7150 3000 50  0001 C CNN
	1    7150 3000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5F63C584
P 5850 2800
F 0 "#PWR016" H 5850 2550 50  0001 C CNN
F 1 "GND" V 5855 2672 50  0000 R CNN
F 2 "" H 5850 2800 50  0001 C CNN
F 3 "" H 5850 2800 50  0001 C CNN
	1    5850 2800
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR028
U 1 1 5F63D9BB
P 7150 4300
F 0 "#PWR028" H 7150 4050 50  0001 C CNN
F 1 "GND" V 7155 4172 50  0000 R CNN
F 2 "" H 7150 4300 50  0001 C CNN
F 3 "" H 7150 4300 50  0001 C CNN
	1    7150 4300
	0    -1   -1   0   
$EndComp
$Comp
L Regulator_Linear:AMS1117-3.3 U2
U 1 1 5F654F34
P 6400 950
F 0 "U2" H 6400 1192 50  0000 C CNN
F 1 "UA78M33 3V3 LinReg" H 6400 1101 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 6400 1150 50  0001 C CNN
F 3 "https://www.newark.com/texas-instruments/ua78m33ckcs/volt-reg-500ma-3-3v-to220-3/dp/33AH5475" H 6500 700 50  0001 C CNN
F 4 "https://www.newark.com/texas-instruments/tpsm84203eab/dc-dc-converter-3-3v-1-5a-to-220/dp/28AH5711?ost=tpsm84203" H 6400 950 50  0001 C CNN "Pow. Module"
F 5 "https://www.newark.com/aavid-boyd/507302b00000g/heat-sink-to-220/dp/01M6666" H 6400 950 50  0001 C CNN "Lg. Heatsink"
F 6 "https://www.newark.com/wakefield-solutions/274-1ab/heat-sink/dp/50B8304" H 6400 950 50  0001 C CNN "Sm. Heatsink"
	1    6400 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 1250 6400 1300
Wire Wire Line
	6850 1300 6400 1300
Connection ~ 6400 1300
Wire Wire Line
	6400 1300 6400 1350
Wire Wire Line
	6700 950  6850 950 
Wire Wire Line
	6850 1000 6850 950 
Connection ~ 6850 950 
Wire Wire Line
	6850 950  7050 950 
$Comp
L power:+3V3 #PWR04
U 1 1 5F674898
P 7050 950
F 0 "#PWR04" H 7050 800 50  0001 C CNN
F 1 "+3V3" V 7065 1078 50  0000 L CNN
F 2 "" H 7050 950 50  0001 C CNN
F 3 "" H 7050 950 50  0001 C CNN
	1    7050 950 
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5F6BB906
P 1250 1500
F 0 "#PWR010" H 1250 1250 50  0001 C CNN
F 1 "GND" H 1255 1327 50  0000 C CNN
F 2 "" H 1250 1500 50  0001 C CNN
F 3 "" H 1250 1500 50  0001 C CNN
	1    1250 1500
	1    0    0    -1  
$EndComp
Text Notes 1000 1700 2    50   ~ 0
3S/4S\n11V1/14V8
Text Notes 2150 1150 0    89   ~ 18
VCC Input
$Comp
L Regulator_Linear:AMS1117-3.3 U1
U 1 1 5F6C296C
P 4650 950
F 0 "U1" H 4650 1192 50  0000 C CNN
F 1 "UA78M05 5V LinReg" H 4650 1101 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4650 1150 50  0001 C CNN
F 3 "https://www.newark.com/on-semiconductor/mc7805actg/ldo-voltage-regulator-5v-1a-to/dp/45J1442" H 4750 700 50  0001 C CNN
F 4 "https://www.newark.com/multicomp-pro/mp-k78l05-1000r3/dc-dc-converter-5v-1a-rohs-compliant/dp/92AH5598" H 4650 950 50  0001 C CNN "Pow. Module"
F 5 "https://www.newark.com/aavid-boyd/507302b00000g/heat-sink-to-220/dp/01M6666" H 4650 950 50  0001 C CNN "Lg. Heatsink"
F 6 "https://www.newark.com/wakefield-solutions/274-1ab/heat-sink/dp/50B8304" H 4650 950 50  0001 C CNN "Sm. Heatsink"
	1    4650 950 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5F6C2980
P 4650 1350
F 0 "#PWR07" H 4650 1100 50  0001 C CNN
F 1 "GND" H 4655 1177 50  0000 C CNN
F 2 "" H 4650 1350 50  0001 C CNN
F 3 "" H 4650 1350 50  0001 C CNN
	1    4650 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 1250 4650 1300
Wire Wire Line
	5100 1300 4650 1300
Connection ~ 4650 1300
Wire Wire Line
	4650 1300 4650 1350
Wire Wire Line
	4950 950  5100 950 
Wire Wire Line
	5100 1000 5100 950 
$Comp
L power:+5V #PWR03
U 1 1 5F6D2032
P 5400 950
F 0 "#PWR03" H 5400 800 50  0001 C CNN
F 1 "+5V" V 5415 1078 50  0000 L CNN
F 2 "" H 5400 950 50  0001 C CNN
F 3 "" H 5400 950 50  0001 C CNN
	1    5400 950 
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5F716C6B
P 1250 1050
F 0 "#PWR05" H 1250 800 50  0001 C CNN
F 1 "GND" H 1350 1050 50  0000 C CNN
F 2 "" H 1250 1050 50  0001 C CNN
F 3 "" H 1250 1050 50  0001 C CNN
	1    1250 1050
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR01
U 1 1 5F7323D2
P 2550 850
F 0 "#PWR01" H 2550 700 50  0001 C CNN
F 1 "VCC" H 2565 1023 50  0000 C CNN
F 2 "" H 2550 850 50  0001 C CNN
F 3 "" H 2550 850 50  0001 C CNN
	1    2550 850 
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR030
U 1 1 5F77C323
P 2400 4550
F 0 "#PWR030" H 2400 4300 50  0001 C CNN
F 1 "GND" V 2405 4377 50  0000 C CNN
F 2 "" H 2400 4550 50  0001 C CNN
F 3 "" H 2400 4550 50  0001 C CNN
	1    2400 4550
	0    -1   -1   0   
$EndComp
Text Notes 650  3750 0    89   ~ 18
Telem. and GPS
Text Notes 650  600  0    50   ~ 0
9V-14V, >500mA
$Comp
L power:+5V #PWR017
U 1 1 5F7DF53C
P 6800 2800
F 0 "#PWR017" H 6800 2650 50  0001 C CNN
F 1 "+5V" V 6815 2928 50  0000 L CNN
F 2 "" H 6800 2800 50  0001 C CNN
F 3 "" H 6800 2800 50  0001 C CNN
	1    6800 2800
	1    0    0    -1  
$EndComp
Text GLabel 7150 3300 2    50   Input ~ 0
VREAD_VCC
$Comp
L Connector_Generic:Conn_01x03 J11
U 1 1 5F7FD887
P 750 5500
F 0 "J11" H 668 5175 50  0000 C CNN
F 1 "M1_OUT" H 668 5266 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 750 5500 50  0001 C CNN
F 3 "~" H 750 5500 50  0001 C CNN
	1    750  5500
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J13
U 1 1 5F7FF8EE
P 750 6050
F 0 "J13" H 668 5725 50  0000 C CNN
F 1 "M3_OUT" H 668 5816 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 750 6050 50  0001 C CNN
F 3 "~" H 750 6050 50  0001 C CNN
	1    750  6050
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J12
U 1 1 5F80045C
P 1500 5500
F 0 "J12" H 1418 5175 50  0000 C CNN
F 1 "M2_OUT" H 1418 5266 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1500 5500 50  0001 C CNN
F 3 "~" H 1500 5500 50  0001 C CNN
	1    1500 5500
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J14
U 1 1 5F800B2C
P 1500 6050
F 0 "J14" H 1418 5725 50  0000 C CNN
F 1 "M4_OUT" H 1418 5816 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1500 6050 50  0001 C CNN
F 3 "~" H 1500 6050 50  0001 C CNN
	1    1500 6050
	-1   0    0    1   
$EndComp
Text Notes 650  5100 0    89   ~ 18
Motor PWMs
$Comp
L power:GND #PWR035
U 1 1 5F806A95
P 950 6150
F 0 "#PWR035" H 950 5900 50  0001 C CNN
F 1 "GND" V 955 5977 50  0000 C CNN
F 2 "" H 950 6150 50  0001 C CNN
F 3 "" H 950 6150 50  0001 C CNN
	1    950  6150
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR036
U 1 1 5F8079B6
P 1700 6150
F 0 "#PWR036" H 1700 5900 50  0001 C CNN
F 1 "GND" V 1705 5977 50  0000 C CNN
F 2 "" H 1700 6150 50  0001 C CNN
F 3 "" H 1700 6150 50  0001 C CNN
	1    1700 6150
	0    -1   -1   0   
$EndComp
Text GLabel 7150 3200 2    50   Input ~ 0
PWM_M1
Text GLabel 7200 5200 2    50   Input ~ 0
PWM_M2
Text GLabel 5450 3200 0    50   Input ~ 0
PWM_M3
Text GLabel 5450 4200 0    50   Input ~ 0
PWM_M4
NoConn ~ 1700 5500
NoConn ~ 950  5500
NoConn ~ 1700 6050
Text GLabel 950  5400 2    50   Input ~ 0
PWM_M1
Text GLabel 1700 5400 2    50   Input ~ 0
PWM_M2
Text GLabel 950  5950 2    50   Input ~ 0
PWM_M3
Text GLabel 1700 5950 2    50   Input ~ 0
PWM_M4
$Comp
L Connector_Generic:Conn_01x03 J15
U 1 1 5F80FF43
P 750 7100
F 0 "J15" H 668 6775 50  0000 C CNN
F 1 "PWM0_OUT" H 668 6866 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 750 7100 50  0001 C CNN
F 3 "~" H 750 7100 50  0001 C CNN
	1    750  7100
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR040
U 1 1 5F80FF57
P 950 7200
F 0 "#PWR040" H 950 6950 50  0001 C CNN
F 1 "GND" H 955 7027 50  0000 C CNN
F 2 "" H 950 7200 50  0001 C CNN
F 3 "" H 950 7200 50  0001 C CNN
	1    950  7200
	1    0    0    -1  
$EndComp
Text GLabel 950  7000 2    50   Input ~ 0
PWM0_IO
$Comp
L Device:D_Schottky_Small D1
U 1 1 5F81665A
P 1700 850
F 0 "D1" H 1700 643 50  0000 C CNN
F 1 "Schottky" H 1700 734 50  0000 C CNN
F 2 "Diode_THT:D_DO-201AD_P12.70mm_Horizontal" V 1700 850 50  0001 C CNN
F 3 "https://www.newark.com/on-semiconductor/1n5820g/schottky-rectifier-3a-20v-do-201ad/dp/42K2948" V 1700 850 50  0001 C CNN
	1    1700 850 
	-1   0    0    1   
$EndComp
$Comp
L Device:CP_Small C1
U 1 1 5F81CE7C
P 3950 1050
F 0 "C1" H 4038 1096 50  0000 L CNN
F 1 "100uF" H 4038 1005 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 3950 1050 50  0001 C CNN
F 3 "~" H 3950 1050 50  0001 C CNN
	1    3950 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 1200 5100 1300
Wire Wire Line
	6850 1300 6850 1200
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5F830F28
P 8250 700
F 0 "H1" V 8204 850 50  0000 L CNN
F 1 "MountingHole_Pad" V 8295 850 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4_Pad_Via" H 8250 700 50  0001 C CNN
F 3 "~" H 8250 700 50  0001 C CNN
	1    8250 700 
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5F8324F0
P 8250 900
F 0 "H2" V 8204 1050 50  0000 L CNN
F 1 "MountingHole_Pad" V 8295 1050 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4_Pad_Via" H 8250 900 50  0001 C CNN
F 3 "~" H 8250 900 50  0001 C CNN
	1    8250 900 
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5F8326B0
P 8250 1100
F 0 "H3" V 8204 1250 50  0000 L CNN
F 1 "MountingHole_Pad" V 8295 1250 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4_Pad_Via" H 8250 1100 50  0001 C CNN
F 3 "~" H 8250 1100 50  0001 C CNN
	1    8250 1100
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 5F83283A
P 8250 1300
F 0 "H4" V 8204 1450 50  0000 L CNN
F 1 "MountingHole_Pad" V 8295 1450 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4_Pad_Via" H 8250 1300 50  0001 C CNN
F 3 "~" H 8250 1300 50  0001 C CNN
	1    8250 1300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5F835D1C
P 8000 1400
F 0 "#PWR09" H 8000 1150 50  0001 C CNN
F 1 "GND" H 8005 1227 50  0000 C CNN
F 2 "" H 8000 1400 50  0001 C CNN
F 3 "" H 8000 1400 50  0001 C CNN
	1    8000 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 1400 8000 1300
Wire Wire Line
	8000 700  8150 700 
Wire Wire Line
	8150 900  8000 900 
Connection ~ 8000 900 
Wire Wire Line
	8000 900  8000 700 
Wire Wire Line
	8150 1100 8000 1100
Connection ~ 8000 1100
Wire Wire Line
	8000 1100 8000 900 
Wire Wire Line
	8150 1300 8000 1300
Connection ~ 8000 1300
Wire Wire Line
	8000 1300 8000 1100
Text GLabel 2400 4150 2    50   Input ~ 0
UART_GPS_TX
Text GLabel 2400 4250 2    50   Input ~ 0
UART_GPS_RX
$Comp
L Connector:Barrel_Jack J1
U 1 1 5F85A052
P 950 950
F 0 "J1" H 1007 1275 50  0000 C CNN
F 1 "Jack" H 1007 1184 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_CLIFF_FC681465S_SMT_Horizontal" H 1000 910 50  0001 C CNN
F 3 "https://www.newark.com/cliff-electronic-components/fc68148s/dc-socket-smd-dc-10as-2-1mm-pin/dp/43T5066" H 1000 910 50  0001 C CNN
	1    950  950 
	1    0    0    -1  
$EndComp
Text Notes 1500 7450 0    39   ~ 0
Solder bridge to\nenable/disable\nBEC 5V
$Comp
L Jumper:SolderJumper_2_Open JP1
U 1 1 5F88370A
P 1650 7100
F 0 "JP1" H 1650 7200 50  0000 C CNN
F 1 "Sol_Jmp" H 1650 7000 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 1650 7100 50  0001 C CNN
F 3 "~" H 1650 7100 50  0001 C CNN
	1    1650 7100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5F8FA49A
P 10150 1500
F 0 "R2" H 10209 1546 50  0000 L CNN
F 1 "1k" H 10209 1455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" H 10150 1500 50  0001 C CNN
F 3 "~" H 10150 1500 50  0001 C CNN
	1    10150 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R1
U 1 1 5F8FA4A4
P 10150 1200
F 0 "R1" H 10209 1246 50  0000 L CNN
F 1 "5k1" H 10209 1155 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" H 10150 1200 50  0001 C CNN
F 3 "~" H 10150 1200 50  0001 C CNN
	1    10150 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 1400 10150 1350
$Comp
L power:GND #PWR011
U 1 1 5F8FA4AF
P 10150 1650
F 0 "#PWR011" H 10150 1400 50  0001 C CNN
F 1 "GND" H 10155 1477 50  0000 C CNN
F 2 "" H 10150 1650 50  0001 C CNN
F 3 "" H 10150 1650 50  0001 C CNN
	1    10150 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 1600 10150 1650
Wire Wire Line
	10050 1050 10150 1050
Wire Wire Line
	10150 1050 10150 1100
Wire Wire Line
	10050 1350 10150 1350
Connection ~ 10150 1350
Wire Wire Line
	10150 1350 10150 1300
Text GLabel 10050 1350 0    50   Input ~ 0
VREAD_VCC
$Comp
L power:VCC #PWR06
U 1 1 5F9237CB
P 10050 1050
F 0 "#PWR06" H 10050 900 50  0001 C CNN
F 1 "VCC" H 10065 1223 50  0000 C CNN
F 2 "" H 10050 1050 50  0001 C CNN
F 3 "" H 10050 1050 50  0001 C CNN
	1    10050 1050
	0    -1   -1   0   
$EndComp
Text GLabel 7150 4100 2    50   Input ~ 0
LED_STATG
Text GLabel 7150 4200 2    50   Input ~ 0
LED_STATB
Text Notes 7600 4100 0    50   ~ 0
Status LED (RGBC)
$Comp
L RF_ZigBee:XBee3-Breadboard-Breakout U5
U 1 1 5F999352
P 3900 6750
F 0 "U5" H 3900 7465 50  0000 C CNN
F 1 "XBee3_Breadboard_Breakout" H 3900 7374 50  0000 C CNN
F 2 "RF_Module:XBee-3-breakout" H 3900 7550 50  0001 C CNN
F 3 "https://www.sparkfun.com/products/15130" H 3900 7550 50  0001 C CNN
	1    3900 6750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR041
U 1 1 5F99C764
P 3550 7200
F 0 "#PWR041" H 3550 6950 50  0001 C CNN
F 1 "GND" H 3555 7027 50  0000 C CNN
F 2 "" H 3550 7200 50  0001 C CNN
F 3 "" H 3550 7200 50  0001 C CNN
	1    3550 7200
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR037
U 1 1 5F99D81C
P 3450 6300
F 0 "#PWR037" H 3450 6150 50  0001 C CNN
F 1 "+3V3" V 3465 6428 50  0000 L CNN
F 2 "" H 3450 6300 50  0001 C CNN
F 3 "" H 3450 6300 50  0001 C CNN
	1    3450 6300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3450 6300 3550 6300
Text GLabel 3550 6400 0    50   Input ~ 0
UART_TLM_RX
Text GLabel 3550 6500 0    50   Input ~ 0
UART_TLM_TX
Text GLabel 7150 4000 2    50   Input ~ 0
LED_STATR
Text Notes 9250 1550 0    50   ~ 0
Spec'd to 13V-16.8V\n(2.1V-2.8V)
Text Notes 2500 7050 2    39   ~ 0
Use high-current BEC\nfrom ESC to power a\nservo
Text Notes 7550 3600 0    50   ~ 0
Extra I2C Bus
Text GLabel 7150 3600 2    50   Input ~ 0
I2C1_SCL
Text GLabel 7150 3700 2    50   Input ~ 0
I2C1_SDA
Text Notes 7900 3400 0    50   ~ 0
Spektrum UART
Text GLabel 5450 4100 0    50   Input ~ 0
PWM0_IO
Text GLabel 5450 4500 0    50   Input ~ 0
I2C_SENS_SDA
Text GLabel 5450 4400 0    50   Input ~ 0
I2C_SENS_SCL
Text GLabel 7200 5000 2    50   Input ~ 0
UART_TLM_TX
Text GLabel 7200 5100 2    50   Input ~ 0
UART_TLM_RX
Text GLabel 5500 4800 0    50   Input ~ 0
UART_GPS_RX
Text GLabel 5500 4900 0    50   Input ~ 0
UART_GPS_TX
Text Notes 4500 4850 0    50   ~ 0
GPS Serial
Text Notes 4300 4450 0    50   ~ 0
Sensor I2C Bus
Text Notes 4500 4100 0    50   ~ 0
Extra PWM I/O
Text GLabel 7150 3400 2    50   Input ~ 0
UART_SPEKREC_RX
Text Notes 7650 3300 0    50   ~ 0
Volt. Divider
$Comp
L Connector:Conn_01x24_Male J7
U 1 1 5FF617DD
P 5600 3950
F 0 "J7" H 5450 5250 50  0000 C CNN
F 1 "Pins Left" H 5450 5150 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x24_P2.54mm_Vertical" H 5600 3950 50  0001 C CNN
F 3 "~" H 5600 3950 50  0001 C CNN
	1    5600 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 2850 5850 2850
Wire Wire Line
	5850 2800 5850 2850
Connection ~ 5850 2850
Wire Wire Line
	5850 2850 5900 2850
Wire Wire Line
	6750 2850 6800 2850
Wire Wire Line
	6800 2800 6800 2850
Connection ~ 6800 2850
Wire Wire Line
	6800 2850 6850 2850
Wire Wire Line
	6750 3050 6850 3050
Wire Wire Line
	5800 2950 5900 2950
Wire Wire Line
	5800 3050 5900 3050
Wire Wire Line
	5900 3250 5800 3250
Wire Wire Line
	5800 3350 5900 3350
Wire Wire Line
	5900 3450 5800 3450
Wire Wire Line
	5800 3550 5900 3550
Wire Wire Line
	5900 3650 5800 3650
Wire Wire Line
	5800 3750 5900 3750
Wire Wire Line
	5900 3850 5800 3850
Wire Wire Line
	5800 3950 5900 3950
Wire Wire Line
	5900 4050 5850 4050
Wire Wire Line
	5800 4150 5850 4150
Wire Wire Line
	5800 4250 5900 4250
Wire Wire Line
	5900 4350 5850 4350
Wire Wire Line
	5800 4450 5850 4450
Wire Wire Line
	5900 4550 5800 4550
Wire Wire Line
	5800 4650 5900 4650
Wire Wire Line
	5900 4750 5850 4750
Wire Wire Line
	5800 4850 5850 4850
Wire Wire Line
	5900 4950 5800 4950
Wire Wire Line
	5800 5050 5900 5050
Wire Wire Line
	5900 5150 5800 5150
Wire Wire Line
	6750 5150 6800 5150
Wire Wire Line
	6850 5050 6800 5050
Wire Wire Line
	6750 4950 6800 4950
Wire Wire Line
	6850 4850 6750 4850
Wire Wire Line
	6750 4750 6850 4750
Wire Wire Line
	6750 4650 6850 4650
Wire Wire Line
	6850 4550 6750 4550
Wire Wire Line
	6750 4450 6850 4450
Wire Wire Line
	6850 4350 6750 4350
Wire Wire Line
	6850 4250 6800 4250
Wire Wire Line
	6750 4150 6800 4150
Wire Wire Line
	6850 4050 6800 4050
Wire Wire Line
	6750 3950 6800 3950
Wire Wire Line
	6850 3850 6800 3850
Wire Wire Line
	6750 3750 6800 3750
Wire Wire Line
	6850 3650 6800 3650
Wire Wire Line
	6750 3550 6800 3550
Wire Wire Line
	6850 3450 6750 3450
Wire Wire Line
	6750 3350 6800 3350
Wire Wire Line
	6850 3250 6800 3250
Wire Wire Line
	6750 3150 6800 3150
$Comp
L Connector:Conn_01x24_Male J8
U 1 1 5FF6AF08
P 7050 4050
F 0 "J8" H 6900 2650 50  0000 R CNN
F 1 "Pins Right" H 7050 2750 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x24_P2.54mm_Vertical" H 7050 4050 50  0001 C CNN
F 3 "~" H 7050 4050 50  0001 C CNN
	1    7050 4050
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR027
U 1 1 5FF8E735
P 2400 4050
F 0 "#PWR027" H 2400 3900 50  0001 C CNN
F 1 "+5V" V 2415 4178 50  0000 L CNN
F 2 "" H 2400 4050 50  0001 C CNN
F 3 "" H 2400 4050 50  0001 C CNN
	1    2400 4050
	0    1    1    0   
$EndComp
Text GLabel 2400 4350 2    50   Input ~ 0
I2C_SENS_SCL
Text GLabel 2400 4450 2    50   Input ~ 0
I2C_SENS_SDA
Wire Wire Line
	2300 4050 2400 4050
Wire Wire Line
	2300 4150 2400 4150
Wire Wire Line
	2300 4250 2400 4250
Wire Wire Line
	2300 4350 2400 4350
Wire Wire Line
	2300 4450 2400 4450
Wire Wire Line
	2300 4550 2400 4550
Wire Wire Line
	900  4150 1000 4150
Wire Wire Line
	900  4250 1000 4250
Wire Wire Line
	900  4350 1000 4350
$Comp
L Connector_Generic:Conn_01x06 J10
U 1 1 5FF8B4C0
P 2100 4250
F 0 "J10" H 2018 4667 50  0000 C CNN
F 1 "GPS_MAG" H 2018 4576 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 2100 4250 50  0001 C CNN
F 3 "~" H 2100 4250 50  0001 C CNN
	1    2100 4250
	-1   0    0    -1  
$EndComp
Text GLabel 1000 4150 2    50   Input ~ 0
UART_TLM_RX
Text GLabel 1000 4250 2    50   Input ~ 0
UART_TLM_TX
$Comp
L power:GND #PWR026
U 1 1 5F8C5013
P 1000 4050
F 0 "#PWR026" H 1000 3800 50  0001 C CNN
F 1 "GND" V 1005 3877 50  0000 C CNN
F 2 "" H 1000 4050 50  0001 C CNN
F 3 "" H 1000 4050 50  0001 C CNN
	1    1000 4050
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J3
U 1 1 600199F2
P 650 3000
F 0 "J3" H 568 2575 50  0000 C CNN
F 1 "VOLT BUSES" H 568 2666 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 650 3000 50  0001 C CNN
F 3 "~" H 650 3000 50  0001 C CNN
	1    650  3000
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J5
U 1 1 6001B1DD
P 2550 3000
F 0 "J5" H 2468 2575 50  0000 C CNN
F 1 "I2C1" H 2468 2666 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 2550 3000 50  0001 C CNN
F 3 "~" H 2550 3000 50  0001 C CNN
	1    2550 3000
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR022
U 1 1 6002C4CC
P 950 3000
F 0 "#PWR022" H 950 2750 50  0001 C CNN
F 1 "GND" V 955 2827 50  0000 C CNN
F 2 "" H 950 3000 50  0001 C CNN
F 3 "" H 950 3000 50  0001 C CNN
	1    950  3000
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR019
U 1 1 6002EAB3
P 950 2900
F 0 "#PWR019" H 950 2750 50  0001 C CNN
F 1 "+3V3" V 965 3028 50  0000 L CNN
F 2 "" H 950 2900 50  0001 C CNN
F 3 "" H 950 2900 50  0001 C CNN
	1    950  2900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR012
U 1 1 600305CE
P 950 2800
F 0 "#PWR012" H 950 2550 50  0001 C CNN
F 1 "GND" V 955 2627 50  0000 C CNN
F 2 "" H 950 2800 50  0001 C CNN
F 3 "" H 950 2800 50  0001 C CNN
	1    950  2800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	850  2800 950  2800
Wire Wire Line
	850  2900 950  2900
Wire Wire Line
	850  3000 950  3000
Wire Wire Line
	850  3100 950  3100
Wire Wire Line
	1600 2900 1700 2900
$Comp
L power:+5V #PWR023
U 1 1 60098B84
P 950 3100
F 0 "#PWR023" H 950 2950 50  0001 C CNN
F 1 "+5V" V 965 3228 50  0000 L CNN
F 2 "" H 950 3100 50  0001 C CNN
F 3 "" H 950 3100 50  0001 C CNN
	1    950  3100
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR024
U 1 1 600B3308
P 2850 3100
F 0 "#PWR024" H 2850 2950 50  0001 C CNN
F 1 "+5V" V 2865 3228 50  0000 L CNN
F 2 "" H 2850 3100 50  0001 C CNN
F 3 "" H 2850 3100 50  0001 C CNN
	1    2850 3100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR014
U 1 1 600B3C4B
P 2850 2800
F 0 "#PWR014" H 2850 2550 50  0001 C CNN
F 1 "GND" V 2855 2627 50  0000 C CNN
F 2 "" H 2850 2800 50  0001 C CNN
F 3 "" H 2850 2800 50  0001 C CNN
	1    2850 2800
	0    -1   -1   0   
$EndComp
Text GLabel 2850 3000 2    50   Input ~ 0
I2C1_SCL
Text GLabel 2850 2900 2    50   Input ~ 0
I2C1_SDA
Wire Wire Line
	2750 2800 2850 2800
Wire Wire Line
	2750 2900 2850 2900
Wire Wire Line
	2750 3000 2850 3000
Wire Wire Line
	2750 3100 2850 3100
Text GLabel 7150 3800 2    50   Input ~ 0
UART1_TX
Text GLabel 7150 3900 2    50   Input ~ 0
UART1_RX
$Comp
L power:GND #PWR015
U 1 1 600E8409
P 3700 2800
F 0 "#PWR015" H 3700 2550 50  0001 C CNN
F 1 "GND" V 3705 2627 50  0000 C CNN
F 2 "" H 3700 2800 50  0001 C CNN
F 3 "" H 3700 2800 50  0001 C CNN
	1    3700 2800
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR025
U 1 1 600E8B32
P 3700 3100
F 0 "#PWR025" H 3700 2950 50  0001 C CNN
F 1 "+5V" V 3715 3228 50  0000 L CNN
F 2 "" H 3700 3100 50  0001 C CNN
F 3 "" H 3700 3100 50  0001 C CNN
	1    3700 3100
	0    1    1    0   
$EndComp
Text GLabel 3700 3000 2    50   Input ~ 0
UART1_TX
Text GLabel 3700 2900 2    50   Input ~ 0
UART1_RX
Wire Wire Line
	3600 2800 3700 2800
Wire Wire Line
	3600 2900 3700 2900
Wire Wire Line
	3600 3100 3700 3100
Wire Wire Line
	3600 3000 3700 3000
$Comp
L Connector_Generic:Conn_01x04 J6
U 1 1 6001BBEF
P 3400 3000
F 0 "J6" H 3318 2575 50  0000 C CNN
F 1 "UART1" H 3318 2666 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 3400 3000 50  0001 C CNN
F 3 "~" H 3400 3000 50  0001 C CNN
	1    3400 3000
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J9
U 1 1 601640CE
P 700 4250
F 0 "J9" H 618 3825 50  0000 C CNN
F 1 "UART1" H 618 3916 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 700 4250 50  0001 C CNN
F 3 "~" H 700 4250 50  0001 C CNN
	1    700  4250
	-1   0    0    1   
$EndComp
Wire Wire Line
	900  4050 1000 4050
$Comp
L power:+5V #PWR029
U 1 1 60170A51
P 1000 4350
F 0 "#PWR029" H 1000 4200 50  0001 C CNN
F 1 "+5V" V 1015 4478 50  0000 L CNN
F 2 "" H 1000 4350 50  0001 C CNN
F 3 "" H 1000 4350 50  0001 C CNN
	1    1000 4350
	0    1    1    0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 601A29F4
P 1050 1500
F 0 "J2" H 968 1175 50  0000 C CNN
F 1 "BATT_VCC" H 968 1266 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 1050 1500 50  0001 C CNN
F 3 "https://www.newark.com/phoenix-contact/1729128/terminal-block-pcb-2-position/dp/71C4123" H 1050 1500 50  0001 C CNN
	1    1050 1500
	-1   0    0    1   
$EndComp
$Comp
L Device:D_Schottky_Small D2
U 1 1 601B30D4
P 1700 1400
F 0 "D2" H 1700 1193 50  0000 C CNN
F 1 "Schottky" H 1700 1284 50  0000 C CNN
F 2 "Diode_THT:D_DO-201AD_P12.70mm_Horizontal" V 1700 1400 50  0001 C CNN
F 3 "https://www.newark.com/on-semiconductor/1n5820g/schottky-rectifier-3a-20v-do-201ad/dp/42K2948" V 1700 1400 50  0001 C CNN
	1    1700 1400
	-1   0    0    1   
$EndComp
Wire Wire Line
	1250 1400 1600 1400
Wire Wire Line
	2050 1400 2050 850 
Wire Wire Line
	1800 1400 2050 1400
Wire Wire Line
	1800 850  2050 850 
Connection ~ 2050 850 
Wire Wire Line
	1250 850  1600 850 
Wire Wire Line
	5100 950  5400 950 
Connection ~ 5100 950 
Text Notes 7750 5000 0    50   ~ 0
Telem. Serial
Text Notes 6650 1500 0    89   ~ 18
3.3V Reg.
$Comp
L power:GND #PWR08
U 1 1 5F658DE5
P 6400 1350
F 0 "#PWR08" H 6400 1100 50  0001 C CNN
F 1 "GND" H 6405 1177 50  0000 C CNN
F 2 "" H 6400 1350 50  0001 C CNN
F 3 "" H 6400 1350 50  0001 C CNN
	1    6400 1350
	1    0    0    -1  
$EndComp
Text GLabel 950  6050 2    50   Input ~ 0
5V_BEC
$Comp
L power:GND #PWR032
U 1 1 5F80809A
P 1700 5600
F 0 "#PWR032" H 1700 5350 50  0001 C CNN
F 1 "GND" V 1705 5427 50  0000 C CNN
F 2 "" H 1700 5600 50  0001 C CNN
F 3 "" H 1700 5600 50  0001 C CNN
	1    1700 5600
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR031
U 1 1 5F804990
P 950 5600
F 0 "#PWR031" H 950 5350 50  0001 C CNN
F 1 "GND" V 955 5427 50  0000 C CNN
F 2 "" H 950 5600 50  0001 C CNN
F 3 "" H 950 5600 50  0001 C CNN
	1    950  5600
	0    -1   -1   0   
$EndComp
$Comp
L Device:Fuse_Small F1
U 1 1 60307288
P 2300 850
F 0 "F1" H 2300 1035 50  0000 C CNN
F 1 "750mA-1A" H 2300 944 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P15.24mm_Horizontal" H 2300 850 50  0001 C CNN
F 3 "https://www.newark.com/littelfuse/0251-750mrt1l/fuse-pcb-750ma-125v-very-fast/dp/12J2330" H 2300 850 50  0001 C CNN
F 4 "https://www.newark.com/littelfuse/0440001-wr/fuse-smd-1a-1206-fast-acting/dp/64R8009" H 2300 850 50  0001 C CNN "SMD Fuse"
F 5 "https://www.newark.com/littelfuse/0251001-mxl/fuse-pcb-1a-125v-very-fast-acting/dp/12J4210" H 2300 850 50  0001 C CNN "XFast 1A"
F 6 "https://www.newark.com/littelfuse-wickmann/37011000410/fuse-pcb-1a-250v-fast-acting/dp/67K1844" H 2300 850 50  0001 C CNN "Radial 1A"
	1    2300 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 850  2200 850 
Wire Wire Line
	2400 850  2550 850 
Text Notes 10000 900  0    50   ~ 0
Vo = (Vi*R2)/(R1+R2)
NoConn ~ 4250 6300
NoConn ~ 4250 6400
NoConn ~ 4250 6500
NoConn ~ 4250 6600
NoConn ~ 4250 6700
NoConn ~ 4250 6800
NoConn ~ 4250 6900
NoConn ~ 4250 7000
NoConn ~ 4250 7100
NoConn ~ 4250 7200
NoConn ~ 3550 7100
NoConn ~ 3550 7000
NoConn ~ 3550 6900
NoConn ~ 3550 6800
NoConn ~ 3550 6700
NoConn ~ 3550 6600
Text Notes 3250 5950 0    89   ~ 18
XBee Telem. Radio
Text Notes 2800 2500 0    89   ~ 18
Peripherals
Text Notes 1450 2500 0    89   ~ 18
Spektrum RC
Text Notes 650  2500 0    89   ~ 18
V Out
Text Notes 9250 800  0    89   ~ 18
VCC Read
Text Notes 5150 2450 0    89   ~ 18
Teensy w/\nPin Headers
Text Notes 5000 1500 0    89   ~ 18
5V Reg.
Text Notes 650  6700 0    89   ~ 18
PWM I/O\nw/ BEC 5V
Text GLabel 1950 7100 2    50   Input ~ 0
5V_BEC
$Comp
L power:GND #PWR042
U 1 1 6048EB9C
P 1150 7350
F 0 "#PWR042" H 1150 7100 50  0001 C CNN
F 1 "GND" H 1155 7177 50  0000 C CNN
F 2 "" H 1150 7350 50  0001 C CNN
F 3 "" H 1150 7350 50  0001 C CNN
	1    1150 7350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 6046D00A
P 1150 7200
F 0 "C4" H 1250 7250 50  0000 L CNN
F 1 "10uF" H 1242 7155 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 1150 7200 50  0001 C CNN
F 3 "~" H 1150 7200 50  0001 C CNN
	1    1150 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  7100 1150 7100
Wire Wire Line
	1150 7300 1150 7350
Wire Notes Line
	550  500  550  1800
Wire Notes Line
	550  1800 3000 1800
Wire Notes Line
	3000 1800 3000 500 
Wire Notes Line
	3000 500  550  500 
Wire Notes Line
	7700 1650 7700 600 
Wire Notes Line
	4200 2150 4200 5300
Wire Notes Line
	4200 5300 8550 5300
Wire Notes Line
	8550 5300 8550 2150
Wire Notes Line
	8550 2150 4200 2150
Wire Notes Line
	500  2250 4200 2250
Wire Notes Line
	4200 3200 500  3200
Wire Notes Line
	500  3200 500  2250
Wire Notes Line
	600  3550 600  4650
Wire Notes Line
	600  4650 3050 4650
Wire Notes Line
	3050 4650 3050 3550
Wire Notes Line
	3050 3550 600  3550
Wire Notes Line
	600  4900 600  6300
Wire Notes Line
	600  6300 2250 6300
Wire Notes Line
	2250 6300 2250 4900
Wire Notes Line
	2250 4900 600  4900
Wire Notes Line
	600  6350 600  7600
Wire Notes Line
	600  7600 2600 7600
Wire Notes Line
	2600 7600 2600 6350
Wire Notes Line
	2600 6350 600  6350
Wire Notes Line
	2950 7450 4700 7450
Wire Notes Line
	4700 7450 4700 5800
Wire Notes Line
	4700 5800 2950 5800
Wire Notes Line
	2950 5800 2950 7450
Wire Notes Line
	9200 3350 11050 3350
Wire Notes Line
	9200 600  9200 1900
Wire Notes Line
	9200 1900 11050 1900
Wire Notes Line
	11050 1900 11050 600 
Wire Notes Line
	11050 600  9200 600 
Wire Wire Line
	5800 3150 5850 3150
Wire Wire Line
	5450 3200 5850 3200
Wire Wire Line
	5850 3200 5850 3150
Connection ~ 5850 3150
Wire Wire Line
	5850 3150 5900 3150
Wire Wire Line
	5450 4100 5850 4100
Wire Wire Line
	5850 4100 5850 4050
Connection ~ 5850 4050
Wire Wire Line
	5850 4050 5800 4050
Wire Wire Line
	5450 4200 5850 4200
Wire Wire Line
	5850 4200 5850 4150
Connection ~ 5850 4150
Wire Wire Line
	5850 4150 5900 4150
Wire Wire Line
	5450 4400 5850 4400
Wire Wire Line
	5850 4400 5850 4350
Connection ~ 5850 4350
Wire Wire Line
	5850 4350 5800 4350
Wire Wire Line
	5450 4500 5850 4500
Wire Wire Line
	5850 4500 5850 4450
Connection ~ 5850 4450
Wire Wire Line
	5850 4450 5900 4450
Wire Wire Line
	5500 4800 5850 4800
Wire Wire Line
	5850 4800 5850 4750
Connection ~ 5850 4750
Wire Wire Line
	5850 4750 5800 4750
Wire Wire Line
	5500 4900 5850 4900
Wire Wire Line
	5850 4900 5850 4850
Connection ~ 5850 4850
Wire Wire Line
	5850 4850 5900 4850
Wire Wire Line
	7150 3200 6800 3200
Wire Wire Line
	6800 3200 6800 3150
Connection ~ 6800 3150
Wire Wire Line
	6800 3150 6850 3150
Wire Wire Line
	7150 3300 6800 3300
Wire Wire Line
	6800 3300 6800 3250
Connection ~ 6800 3250
Wire Wire Line
	6800 3250 6750 3250
Wire Wire Line
	7150 3400 6800 3400
Wire Wire Line
	6800 3400 6800 3350
Connection ~ 6800 3350
Wire Wire Line
	6800 3350 6850 3350
Wire Wire Line
	7150 3600 6800 3600
Wire Wire Line
	6800 3600 6800 3550
Connection ~ 6800 3550
Wire Wire Line
	6800 3550 6850 3550
Wire Wire Line
	7150 3700 6800 3700
Wire Wire Line
	6800 3700 6800 3650
Connection ~ 6800 3650
Wire Wire Line
	6800 3650 6750 3650
Wire Wire Line
	7150 3800 6800 3800
Wire Wire Line
	6800 3800 6800 3750
Connection ~ 6800 3750
Wire Wire Line
	6800 3750 6850 3750
Wire Wire Line
	7150 3900 6800 3900
Wire Wire Line
	6800 3900 6800 3850
Connection ~ 6800 3850
Wire Wire Line
	6800 3850 6750 3850
Wire Wire Line
	7150 4000 6800 4000
Wire Wire Line
	6800 4000 6800 3950
Connection ~ 6800 3950
Wire Wire Line
	6800 3950 6850 3950
Wire Wire Line
	7150 4100 6800 4100
Wire Wire Line
	6800 4100 6800 4050
Connection ~ 6800 4050
Wire Wire Line
	6800 4050 6750 4050
Wire Wire Line
	7150 4200 6800 4200
Wire Wire Line
	6800 4200 6800 4150
Connection ~ 6800 4150
Wire Wire Line
	6800 4150 6850 4150
Wire Wire Line
	7150 4300 6800 4300
Wire Wire Line
	6800 4300 6800 4250
Connection ~ 6800 4250
Wire Wire Line
	6800 4250 6750 4250
Wire Wire Line
	7200 5000 6800 5000
Wire Wire Line
	6800 5000 6800 4950
Connection ~ 6800 4950
Wire Wire Line
	6800 4950 6850 4950
Wire Wire Line
	7200 5100 6800 5100
Wire Wire Line
	6800 5100 6800 5050
Connection ~ 6800 5050
Wire Wire Line
	6800 5050 6750 5050
Wire Wire Line
	7200 5200 6800 5200
Wire Wire Line
	6800 5200 6800 5150
Connection ~ 6800 5150
Wire Wire Line
	6800 5150 6850 5150
Wire Wire Line
	6750 2950 6800 2950
$Comp
L Sensor_Motion:Adafruit_FXOS8700_FXAS21002_IMU U4
U 1 1 5FFB204D
P 6100 6150
F 0 "U4" H 5600 6350 50  0000 L CNN
F 1 "Adafruit_FXOS8700_FXAS21002_IMU" H 5400 6250 50  0000 L CNN
F 2 "Sensor_Motion:Adafruit_FXOS8700_FXAS21002_IMU" H 6100 6150 50  0001 C CNN
F 3 "https://www.adafruit.com/product/3463" H 6100 6150 50  0001 C CNN
	1    6100 6150
	0    1    1    0   
$EndComp
$Comp
L Sensor_Pressure:Adafruit_BMP388 U6
U 1 1 5FFC4468
P 5850 7050
F 0 "U6" H 6128 7046 50  0000 L CNN
F 1 "Adafruit_BMP388" H 6128 6955 50  0000 L CNN
F 2 "Sensor_Pressure:Adafruit_BMP_388" H 5850 7050 50  0001 C CNN
F 3 "https://www.adafruit.com/product/3966" H 5850 7050 50  0001 C CNN
	1    5850 7050
	1    0    0    -1  
$EndComp
Wire Notes Line
	11050 3350 11050 2150
Wire Notes Line
	11050 2150 9200 2150
Wire Notes Line
	9200 2150 9200 3350
Wire Wire Line
	10650 2800 10750 2800
Wire Wire Line
	10350 2800 10450 2800
Wire Wire Line
	9850 3000 9950 3000
Wire Wire Line
	9850 2800 9950 2800
Wire Wire Line
	9850 2600 9950 2600
Text Notes 9250 2350 0    89   ~ 18
Status LED
$Comp
L Device:R_Small R3
U 1 1 5F9CC864
P 10550 2800
F 0 "R3" V 10450 2750 50  0000 C CNN
F 1 "330" V 10650 2800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" H 10550 2800 50  0001 C CNN
F 3 "~" H 10550 2800 50  0001 C CNN
	1    10550 2800
	0    1    1    0   
$EndComp
Text GLabel 9850 3000 0    50   Input ~ 0
LED_STATR
Text GLabel 9850 2600 0    50   Input ~ 0
LED_STATB
Text GLabel 9850 2800 0    50   Input ~ 0
LED_STATG
$Comp
L power:GND #PWR018
U 1 1 5F9B89FF
P 10750 2800
F 0 "#PWR018" H 10750 2550 50  0001 C CNN
F 1 "GND" H 10755 2627 50  0000 C CNN
F 2 "" H 10750 2800 50  0001 C CNN
F 3 "" H 10750 2800 50  0001 C CNN
	1    10750 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_RGBC D3
U 1 1 5F9B210A
P 10150 2800
F 0 "D3" H 10150 2333 50  0000 C CNN
F 1 "LED_RGBC" H 10150 2424 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 10150 2750 50  0001 C CNN
F 3 "~" H 10150 2750 50  0001 C CNN
	1    10150 2800
	-1   0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR033
U 1 1 6003728C
P 5800 5800
F 0 "#PWR033" H 5800 5650 50  0001 C CNN
F 1 "+3V3" V 5815 5928 50  0000 L CNN
F 2 "" H 5800 5800 50  0001 C CNN
F 3 "" H 5800 5800 50  0001 C CNN
	1    5800 5800
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR038
U 1 1 60039635
P 5750 6650
F 0 "#PWR038" H 5750 6500 50  0001 C CNN
F 1 "+3V3" V 5765 6778 50  0000 L CNN
F 2 "" H 5750 6650 50  0001 C CNN
F 3 "" H 5750 6650 50  0001 C CNN
	1    5750 6650
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR039
U 1 1 6003B18C
P 6000 6700
F 0 "#PWR039" H 6000 6450 50  0001 C CNN
F 1 "GND" H 6005 6527 50  0000 C CNN
F 2 "" H 6000 6700 50  0001 C CNN
F 3 "" H 6000 6700 50  0001 C CNN
	1    6000 6700
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR034
U 1 1 6003C4BD
P 5850 6050
F 0 "#PWR034" H 5850 5800 50  0001 C CNN
F 1 "GND" V 5855 5877 50  0000 C CNN
F 2 "" H 5850 6050 50  0001 C CNN
F 3 "" H 5850 6050 50  0001 C CNN
	1    5850 6050
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 5800 5800 5850
Wire Wire Line
	5800 5850 5850 5850
Wire Wire Line
	5800 6700 5800 6650
Wire Wire Line
	5800 6650 5750 6650
Text GLabel 5600 7250 0    50   Input ~ 0
I2C_SENS_SDA
Text GLabel 5600 7050 0    50   Input ~ 0
I2C_SENS_SCL
Text GLabel 5850 6150 0    50   Input ~ 0
I2C_SENS_SCL
Text GLabel 5850 6250 0    50   Input ~ 0
I2C_SENS_SDA
NoConn ~ 5850 5950
NoConn ~ 5850 6350
NoConn ~ 6550 6250
NoConn ~ 6550 6150
NoConn ~ 6550 6050
NoConn ~ 6550 5950
NoConn ~ 5900 7500
NoConn ~ 6000 7500
NoConn ~ 5900 6700
NoConn ~ 5600 7150
Text Notes 5100 5950 0    89   ~ 18
Sensors\nIMU/Baro
Wire Notes Line
	6650 7550 6650 5400
Wire Notes Line
	6650 5400 4950 5400
Wire Notes Line
	4950 5400 4950 7550
Wire Notes Line
	4950 7550 6650 7550
$Comp
L power:VCC #PWR02
U 1 1 5F6C299F
P 3800 950
F 0 "#PWR02" H 3800 800 50  0001 C CNN
F 1 "VCC" H 3815 1123 50  0000 C CNN
F 2 "" H 3800 950 50  0001 C CNN
F 3 "" H 3800 950 50  0001 C CNN
	1    3800 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 950  3950 950 
Connection ~ 3950 950 
Wire Wire Line
	3950 950  4150 950 
Wire Wire Line
	3950 1150 3950 1300
Wire Wire Line
	3950 1300 4650 1300
Wire Wire Line
	4150 950  4150 650 
Wire Wire Line
	4150 650  5800 650 
Wire Wire Line
	5800 650  5800 950 
Wire Wire Line
	5800 950  6100 950 
Connection ~ 4150 950 
Wire Wire Line
	4150 950  4350 950 
Wire Notes Line
	3650 600  3650 1650
Wire Notes Line
	3650 600  7700 600 
Wire Notes Line
	3650 1650 7700 1650
Wire Wire Line
	1600 3000 1700 3000
Wire Wire Line
	1600 2800 1700 2800
$Comp
L power:GND #PWR013
U 1 1 6007AEF1
P 1700 2800
F 0 "#PWR013" H 1700 2550 50  0001 C CNN
F 1 "GND" V 1705 2627 50  0000 C CNN
F 2 "" H 1700 2800 50  0001 C CNN
F 3 "" H 1700 2800 50  0001 C CNN
	1    1700 2800
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR020
U 1 1 6005507E
P 1700 2900
F 0 "#PWR020" H 1700 2750 50  0001 C CNN
F 1 "+3V3" V 1715 3028 50  0000 L CNN
F 2 "" H 1700 2900 50  0001 C CNN
F 3 "" H 1700 2900 50  0001 C CNN
	1    1700 2900
	0    1    1    0   
$EndComp
Text GLabel 1700 3000 2    50   Input ~ 0
UART_SPEKREC_RX
NoConn ~ 1600 3100
$Comp
L Device:CP_Small C2
U 1 1 5F81FE7F
P 5100 1100
F 0 "C2" H 5188 1146 50  0000 L CNN
F 1 "100uF" H 5188 1055 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 5100 1100 50  0001 C CNN
F 3 "~" H 5100 1100 50  0001 C CNN
	1    5100 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C3
U 1 1 5F827F28
P 6850 1100
F 0 "C3" H 6938 1146 50  0000 L CNN
F 1 "100uF" H 6938 1055 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 6850 1100 50  0001 C CNN
F 3 "~" H 6850 1100 50  0001 C CNN
	1    6850 1100
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J4
U 1 1 6001A5DE
P 1400 3000
F 0 "J4" H 1318 2575 50  0000 C CNN
F 1 "SPEK_RECV" H 1318 2666 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 1400 3000 50  0001 C CNN
F 3 "~" H 1400 3000 50  0001 C CNN
	1    1400 3000
	-1   0    0    1   
$EndComp
Connection ~ 1150 7100
Wire Wire Line
	1150 7100 1500 7100
Wire Wire Line
	1800 7100 1950 7100
Wire Wire Line
	7150 3000 6800 3000
Wire Wire Line
	6800 3000 6800 2950
Connection ~ 6800 2950
Wire Wire Line
	6800 2950 6850 2950
$EndSCHEMATC
