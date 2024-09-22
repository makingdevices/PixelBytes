EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
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
L PicBytesMicro-rescue:FS312F-G-SamacSys_Parts IC1
U 1 1 6009F530
P 8900 3700
F 0 "IC1" H 9400 3965 50  0000 C CNN
F 1 "FS312F-G" H 9400 3874 50  0000 C CNN
F 2 "SOT95P280X145-6N" H 9750 3800 50  0001 L CNN
F 3 "https://lcsc.com/product-detail/Battery-Protection-ICs_FS312F-G_C82736.html" H 9750 3700 50  0001 L CNN
F 4 "Battery Protection ICs SOT-23-6 RoHS" H 9750 3600 50  0001 L CNN "Description"
F 5 "1.45" H 9750 3500 50  0001 L CNN "Height"
F 6 "" H 9750 3400 50  0001 L CNN "RS Part Number"
F 7 "" H 9750 3300 50  0001 L CNN "RS Price/Stock"
F 8 "Fortune Semicon" H 9750 3200 50  0001 L CNN "Manufacturer_Name"
F 9 "FS312F-G" H 9750 3100 50  0001 L CNN "Manufacturer_Part_Number"
	1    8900 3700
	1    0    0    -1  
$EndComp
$Comp
L PicBytesMicro-rescue:TP4056-42-ESOP8-SamacSys_Parts IC_BMS_TP4056
U 1 1 600A0595
P 2550 3200
F 0 "IC_BMS_TP4056" H 3150 3465 50  0000 C CNN
F 1 "TP4056-42-ESOP8" H 3150 3374 50  0000 C CNN
F 2 "SOIC127P600X175-9N" H 3600 3300 50  0001 L CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1906261508_Nanjing-Extension-Microelectronics-TP4056-42-ESOP8_C16581.pdf" H 3600 3200 50  0001 L CNN
F 4 "PMIC - Battery Management ESOP-8 RoHS" H 3600 3100 50  0001 L CNN "Description"
F 5 "1.75" H 3600 3000 50  0001 L CNN "Height"
F 6 "" H 3600 2900 50  0001 L CNN "RS Part Number"
F 7 "" H 3600 2800 50  0001 L CNN "RS Price/Stock"
F 8 "Nanjing Extension Microelectronics" H 3600 2700 50  0001 L CNN "Manufacturer_Name"
F 9 "TP4056-42-ESOP8" H 3600 2600 50  0001 L CNN "Manufacturer_Part_Number"
	1    2550 3200
	1    0    0    -1  
$EndComp
Text HLabel 1600 3400 0    50   Input ~ 0
BMS_gnd
$Comp
L PicBytesMicro-rescue:KTR10EZPF4220-SamacSys_Parts R_2k_1
U 1 1 600A1099
P 1750 3300
F 0 "R_2k_1" H 2100 3433 50  0000 C CNN
F 1 "KTR10EZPF4220" H 2100 3434 50  0001 C CNN
F 2 "RESC2012X65N" H 2300 3350 50  0001 L CNN
F 3 "http://rohmfs.rohm.com/en/products/databook/datasheet/passive/resistor/chip_resistor/ktr.pdf" H 2300 3250 50  0001 L CNN
F 4 "ROHM 0805 Resistor Chip" H 2300 3150 50  0001 L CNN "Description"
F 5 "0.65" H 2300 3050 50  0001 L CNN "Height"
F 6 "" H 2300 2950 50  0001 L CNN "RS Part Number"
F 7 "" H 2300 2850 50  0001 L CNN "RS Price/Stock"
F 8 "ROHM Semiconductor" H 2300 2750 50  0001 L CNN "Manufacturer_Name"
F 9 "KTR10EZPF4220" H 2300 2650 50  0001 L CNN "Manufacturer_Part_Number"
	1    1750 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 3400 1700 3400
Wire Wire Line
	1750 3300 1700 3300
Wire Wire Line
	1700 3300 1700 3400
Connection ~ 1700 3400
Wire Wire Line
	1700 3400 1600 3400
Wire Wire Line
	2450 3300 2550 3300
Wire Wire Line
	2550 3200 1700 3200
Wire Wire Line
	1700 3200 1700 3300
Connection ~ 1700 3300
$Comp
L PicBytesMicro-rescue:TYPE-C-31-M-17-SamacSys_Parts J_USB_C1
U 1 1 600A4CC6
P 6700 1850
F 0 "J_USB_C1" H 7350 2115 50  0000 C CNN
F 1 "TYPE-C-31-M-17" H 7350 2024 50  0000 C CNN
F 2 "TYPEC31M17" H 7850 1950 50  0001 L CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1903211732_Korean-Hroparts-Elec-TYPE-C-31-M-17_C283540.pdf" H 7850 1850 50  0001 L CNN
F 4 "USB Connectors 6 Receptacle 1 RoHS" H 7850 1750 50  0001 L CNN "Description"
F 5 "3.26" H 7850 1650 50  0001 L CNN "Height"
F 6 "" H 7850 1550 50  0001 L CNN "RS Part Number"
F 7 "" H 7850 1450 50  0001 L CNN "RS Price/Stock"
F 8 "Korean Hroparts Elec" H 7850 1350 50  0001 L CNN "Manufacturer_Name"
F 9 "TYPE-C-31-M-17" H 7850 1250 50  0001 L CNN "Manufacturer_Part_Number"
	1    6700 1850
	1    0    0    -1  
$EndComp
Text HLabel 8000 1850 2    50   Input ~ 0
BMS_gnd
Text HLabel 5650 2050 0    50   Input ~ 0
BMS_gnd
$Comp
L PicBytesMicro-rescue:GCG21BR71H154KA01K-SamacSys_Parts C_10u_1
U 1 1 600AAF6B
P 2300 3500
F 0 "C_10u_1" H 2550 3628 50  0000 L CNN
F 1 "GCG21BR71H154KA01K" V 2595 3628 50  0001 L CNN
F 2 "CAPC2012X145N" H 2650 3550 50  0001 L CNN
F 3 "https://psearch.en.murata.com/capacitor/product/GCG21BR71H154KA01%23.html" H 2650 3450 50  0001 L CNN
F 4 "Capacitor L=2.0mm W=1.25mm T=1.25mm" H 2650 3350 50  0001 L CNN "Description"
F 5 "1.45" H 2650 3250 50  0001 L CNN "Height"
F 6 "" H 2650 3150 50  0001 L CNN "RS Part Number"
F 7 "" H 2650 3050 50  0001 L CNN "RS Price/Stock"
F 8 "Murata Electronics" H 2650 2950 50  0001 L CNN "Manufacturer_Name"
F 9 "GCG21BR71H154KA01K" H 2650 2850 50  0001 L CNN "Manufacturer_Part_Number"
	1    2300 3500
	0    1    1    0   
$EndComp
$Comp
L PicBytesMicro-rescue:KTR10EZPF4220-SamacSys_Parts R_5.1k_1
U 1 1 600AC24C
P 5850 1850
F 0 "R_5.1k_1" H 6200 1983 50  0000 C CNN
F 1 "KTR10EZPF4220" H 6200 1984 50  0001 C CNN
F 2 "RESC2012X65N" H 6400 1900 50  0001 L CNN
F 3 "http://rohmfs.rohm.com/en/products/databook/datasheet/passive/resistor/chip_resistor/ktr.pdf" H 6400 1800 50  0001 L CNN
F 4 "ROHM 0805 Resistor Chip" H 6400 1700 50  0001 L CNN "Description"
F 5 "0.65" H 6400 1600 50  0001 L CNN "Height"
F 6 "" H 6400 1500 50  0001 L CNN "RS Part Number"
F 7 "" H 6400 1400 50  0001 L CNN "RS Price/Stock"
F 8 "ROHM Semiconductor" H 6400 1300 50  0001 L CNN "Manufacturer_Name"
F 9 "KTR10EZPF4220" H 6400 1200 50  0001 L CNN "Manufacturer_Part_Number"
	1    5850 1850
	1    0    0    -1  
$EndComp
$Comp
L PicBytesMicro-rescue:KTR10EZPF4220-SamacSys_Parts R_5.1_1
U 1 1 600AD829
P 5850 2150
F 0 "R_5.1_1" H 6200 2283 50  0000 C CNN
F 1 "KTR10EZPF4220" H 6200 2284 50  0001 C CNN
F 2 "RESC2012X65N" H 6400 2200 50  0001 L CNN
F 3 "http://rohmfs.rohm.com/en/products/databook/datasheet/passive/resistor/chip_resistor/ktr.pdf" H 6400 2100 50  0001 L CNN
F 4 "ROHM 0805 Resistor Chip" H 6400 2000 50  0001 L CNN "Description"
F 5 "0.65" H 6400 1900 50  0001 L CNN "Height"
F 6 "" H 6400 1800 50  0001 L CNN "RS Part Number"
F 7 "" H 6400 1700 50  0001 L CNN "RS Price/Stock"
F 8 "ROHM Semiconductor" H 6400 1600 50  0001 L CNN "Manufacturer_Name"
F 9 "KTR10EZPF4220" H 6400 1500 50  0001 L CNN "Manufacturer_Part_Number"
	1    5850 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 1850 6550 1850
Wire Wire Line
	5850 1850 5650 1850
Wire Wire Line
	5650 1850 5650 2050
Wire Wire Line
	6700 2050 5650 2050
Wire Wire Line
	2550 3500 2500 3500
Wire Wire Line
	2300 3500 2200 3500
Connection ~ 2300 3500
Wire Wire Line
	2300 4000 1700 4000
Wire Wire Line
	1700 4000 1700 3400
Wire Wire Line
	3750 3200 3850 3200
Wire Wire Line
	3850 3200 3850 3850
Wire Wire Line
	3850 3850 2500 3850
Wire Wire Line
	2500 3850 2500 3500
Connection ~ 2500 3500
Wire Wire Line
	2500 3500 2400 3500
Text GLabel 4050 3500 2    50   Input ~ 0
BAT+
$Comp
L PicBytesMicro-rescue:KTR10EZPF4220-SamacSys_Parts R_1k_1
U 1 1 600B3A1E
P 4000 3700
F 0 "R_1k_1" H 4350 3788 50  0000 L CNN
F 1 "KTR10EZPF4220" V 4395 3788 50  0001 L CNN
F 2 "RESC2012X65N" H 4550 3750 50  0001 L CNN
F 3 "http://rohmfs.rohm.com/en/products/databook/datasheet/passive/resistor/chip_resistor/ktr.pdf" H 4550 3650 50  0001 L CNN
F 4 "ROHM 0805 Resistor Chip" H 4550 3550 50  0001 L CNN "Description"
F 5 "0.65" H 4550 3450 50  0001 L CNN "Height"
F 6 "" H 4550 3350 50  0001 L CNN "RS Part Number"
F 7 "" H 4550 3250 50  0001 L CNN "RS Price/Stock"
F 8 "ROHM Semiconductor" H 4550 3150 50  0001 L CNN "Manufacturer_Name"
F 9 "KTR10EZPF4220" H 4550 3050 50  0001 L CNN "Manufacturer_Part_Number"
	1    4000 3700
	0    1    1    0   
$EndComp
$Comp
L PicBytesMicro-rescue:KTR10EZPF4220-SamacSys_Parts R_1k_2
U 1 1 600B48CA
P 4350 3700
F 0 "R_1k_2" H 4700 3788 50  0000 L CNN
F 1 "KTR10EZPF4220" V 4745 3788 50  0001 L CNN
F 2 "RESC2012X65N" H 4900 3750 50  0001 L CNN
F 3 "http://rohmfs.rohm.com/en/products/databook/datasheet/passive/resistor/chip_resistor/ktr.pdf" H 4900 3650 50  0001 L CNN
F 4 "ROHM 0805 Resistor Chip" H 4900 3550 50  0001 L CNN "Description"
F 5 "0.65" H 4900 3450 50  0001 L CNN "Height"
F 6 "" H 4900 3350 50  0001 L CNN "RS Part Number"
F 7 "" H 4900 3250 50  0001 L CNN "RS Price/Stock"
F 8 "ROHM Semiconductor" H 4900 3150 50  0001 L CNN "Manufacturer_Name"
F 9 "KTR10EZPF4220" H 4900 3050 50  0001 L CNN "Manufacturer_Part_Number"
	1    4350 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	4000 3700 4000 3400
Wire Wire Line
	4000 3400 3750 3400
Wire Wire Line
	4050 3500 3950 3500
Wire Wire Line
	4350 3300 4350 3700
Wire Wire Line
	3750 3300 4350 3300
$Comp
L PicBytesMicro-rescue:LTST-C171GKT-SamacSys_Parts LED_RED_bms1
U 1 1 600B691B
P 4000 4500
F 0 "LED_RED_bms1" H 4300 4327 50  0000 C CNN
F 1 "LTST-C171GKT" H 4300 4326 50  0001 C CNN
F 2 "LEDC2012X90N" H 4500 4650 50  0001 L BNN
F 3 "http://uk.rs-online.com/web/p/products/6920935P" H 4500 4550 50  0001 L BNN
F 4 "Lite-On LTST-C171GKT, CHIPLED 0805 569 nm Green LED, 2012 (0805) SMD package" H 4500 4450 50  0001 L BNN "Description"
F 5 "0.9" H 4500 4350 50  0001 L BNN "Height"
F 6 "6920935P" H 4500 4250 50  0001 L BNN "RS Part Number"
F 7 "http://uk.rs-online.com/web/p/products/6920935P" H 4500 4150 50  0001 L BNN "RS Price/Stock"
F 8 "Lite-On" H 4500 4050 50  0001 L BNN "Manufacturer_Name"
F 9 "LTST-C171GKT" H 4500 3950 50  0001 L BNN "Manufacturer_Part_Number"
	1    4000 4500
	-1   0    0    1   
$EndComp
$Comp
L PicBytesMicro-rescue:LTST-C171GKT-SamacSys_Parts LED_Green_bms1
U 1 1 600B851B
P 4000 5100
F 0 "LED_Green_bms1" H 4300 4927 50  0000 C CNN
F 1 "LTST-C171GKT" H 4300 4926 50  0001 C CNN
F 2 "LEDC2012X90N" H 4500 5250 50  0001 L BNN
F 3 "http://uk.rs-online.com/web/p/products/6920935P" H 4500 5150 50  0001 L BNN
F 4 "Lite-On LTST-C171GKT, CHIPLED 0805 569 nm Green LED, 2012 (0805) SMD package" H 4500 5050 50  0001 L BNN "Description"
F 5 "0.9" H 4500 4950 50  0001 L BNN "Height"
F 6 "6920935P" H 4500 4850 50  0001 L BNN "RS Part Number"
F 7 "http://uk.rs-online.com/web/p/products/6920935P" H 4500 4750 50  0001 L BNN "RS Price/Stock"
F 8 "Lite-On" H 4500 4650 50  0001 L BNN "Manufacturer_Name"
F 9 "LTST-C171GKT" H 4500 4550 50  0001 L BNN "Manufacturer_Part_Number"
	1    4000 5100
	-1   0    0    1   
$EndComp
Wire Wire Line
	4000 4400 4000 4500
Wire Wire Line
	3400 4500 2400 4500
Wire Wire Line
	2400 4500 2400 3500
Connection ~ 2400 3500
Wire Wire Line
	2400 3500 2300 3500
Connection ~ 2400 4500
Wire Wire Line
	4350 4400 4350 5100
Wire Wire Line
	4350 5100 4000 5100
Wire Wire Line
	3400 5100 2400 5100
Wire Wire Line
	2400 4500 2400 5100
$Comp
L PicBytesMicro-rescue:K3-1260D-L1-SamacSys_Parts SW_Toggle1
U 1 1 600BE833
P 4500 3100
F 0 "SW_Toggle1" V 4792 2772 50  0000 R CNN
F 1 "K3-1260D-L1" V 4747 2772 50  0001 R CNN
F 2 "K31260DL1" H 5150 3200 50  0001 L CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Korean-Hroparts-Elec-K3-1260D-L1_C92657.pdf" H 5150 3100 50  0001 L CNN
F 4 "Toggle Switches Plugin RoHS" H 5150 3000 50  0001 L CNN "Description"
F 5 "3.7" H 5150 2900 50  0001 L CNN "Height"
F 6 "" H 5150 2800 50  0001 L CNN "RS Part Number"
F 7 "" H 5150 2700 50  0001 L CNN "RS Price/Stock"
F 8 "Korean Hroparts Elec" H 5150 2600 50  0001 L CNN "Manufacturer_Name"
F 9 "K3-1260D-L1" H 5150 2500 50  0001 L CNN "Manufacturer_Part_Number"
	1    4500 3100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4500 3100 3950 3100
Wire Wire Line
	3950 3100 3950 3500
Connection ~ 3950 3500
Wire Wire Line
	3950 3500 3750 3500
$Comp
L PicBytesMicro-rescue:KTR10EZPF4220-SamacSys_Parts R_100_1
U 1 1 600C108E
P 9800 3200
F 0 "R_100_1" H 10150 3333 50  0000 C CNN
F 1 "KTR10EZPF4220" H 10150 3334 50  0001 C CNN
F 2 "RESC2012X65N" H 10350 3250 50  0001 L CNN
F 3 "http://rohmfs.rohm.com/en/products/databook/datasheet/passive/resistor/chip_resistor/ktr.pdf" H 10350 3150 50  0001 L CNN
F 4 "ROHM 0805 Resistor Chip" H 10350 3050 50  0001 L CNN "Description"
F 5 "0.65" H 10350 2950 50  0001 L CNN "Height"
F 6 "" H 10350 2850 50  0001 L CNN "RS Part Number"
F 7 "" H 10350 2750 50  0001 L CNN "RS Price/Stock"
F 8 "ROHM Semiconductor" H 10350 2650 50  0001 L CNN "Manufacturer_Name"
F 9 "KTR10EZPF4220" H 10350 2550 50  0001 L CNN "Manufacturer_Part_Number"
	1    9800 3200
	-1   0    0    1   
$EndComp
Text GLabel 8950 3200 0    50   Input ~ 0
BAT+
Wire Wire Line
	8950 3200 9100 3200
$Comp
L PicBytesMicro-rescue:GCG21BR71H154KA01K-SamacSys_Parts C_0.1u_1
U 1 1 600C9532
P 10150 3200
F 0 "C_0.1u_1" V 10400 3328 50  0000 L CNN
F 1 "GCG21BR71H154KA01K" V 10445 3328 50  0001 L CNN
F 2 "CAPC2012X145N" H 10500 3250 50  0001 L CNN
F 3 "https://psearch.en.murata.com/capacitor/product/GCG21BR71H154KA01%23.html" H 10500 3150 50  0001 L CNN
F 4 "Capacitor L=2.0mm W=1.25mm T=1.25mm" H 10500 3050 50  0001 L CNN "Description"
F 5 "1.45" H 10500 2950 50  0001 L CNN "Height"
F 6 "" H 10500 2850 50  0001 L CNN "RS Part Number"
F 7 "" H 10500 2750 50  0001 L CNN "RS Price/Stock"
F 8 "Murata Electronics" H 10500 2650 50  0001 L CNN "Manufacturer_Name"
F 9 "GCG21BR71H154KA01K" H 10500 2550 50  0001 L CNN "Manufacturer_Part_Number"
	1    10150 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	10150 3200 10000 3200
Wire Wire Line
	10150 3700 9900 3700
Text GLabel 10400 3700 2    50   Input ~ 0
BAT-
Wire Wire Line
	10400 3700 10150 3700
Connection ~ 10150 3700
$Comp
L PicBytesMicro-rescue:FS8205-SamacSys_Parts Q30
U 1 1 600CCE9A
P 8600 4450
F 0 "Q30" H 9200 4623 50  0000 C CNN
F 1 "FS8205" H 9200 4624 50  0001 C CNN
F 2 "FS8205" H 9650 4550 50  0001 L CNN
F 3 "https://www.ic-fortune.com/upload/Download/FS8205-DS-19_EN.pdf" H 9650 4450 50  0001 L CNN
F 4 "DUAL N-CHANNEL ENHANCEMENT MODE POWER MOFSET" H 9650 4350 50  0001 L CNN "Description"
F 5 "1" H 9650 4250 50  0001 L CNN "Height"
F 6 "" H 9650 4150 50  0001 L CNN "RS Part Number"
F 7 "" H 9650 4050 50  0001 L CNN "RS Price/Stock"
F 8 "Fortune Semiconductor Corporation" H 9650 3950 50  0001 L CNN "Manufacturer_Name"
F 9 "FS8205" H 9650 3850 50  0001 L CNN "Manufacturer_Part_Number"
	1    8600 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 4850 10150 3700
Wire Wire Line
	8600 4650 8600 4850
Wire Wire Line
	8600 4850 10150 4850
Wire Wire Line
	9800 4450 9800 4100
Wire Wire Line
	9800 4550 9900 4550
Wire Wire Line
	9900 4550 9900 4300
Wire Wire Line
	9900 4300 8600 4300
Wire Wire Line
	8600 4300 8600 4450
Wire Wire Line
	9800 4650 10000 4650
Wire Wire Line
	10000 4650 10000 4050
Wire Wire Line
	10000 4050 8900 4050
Wire Wire Line
	8900 4050 8900 3900
Text HLabel 8600 4550 0    50   Input ~ 0
BMS_gnd
$Comp
L PicBytesMicro-rescue:KTR10EZPF4220-SamacSys_Parts R_2k_2
U 1 1 600D4150
P 8000 4050
F 0 "R_2k_2" H 8350 4138 50  0000 L CNN
F 1 "KTR10EZPF4220" V 8395 4138 50  0001 L CNN
F 2 "RESC2012X65N" H 8550 4100 50  0001 L CNN
F 3 "http://rohmfs.rohm.com/en/products/databook/datasheet/passive/resistor/chip_resistor/ktr.pdf" H 8550 4000 50  0001 L CNN
F 4 "ROHM 0805 Resistor Chip" H 8550 3900 50  0001 L CNN "Description"
F 5 "0.65" H 8550 3800 50  0001 L CNN "Height"
F 6 "" H 8550 3700 50  0001 L CNN "RS Part Number"
F 7 "" H 8550 3600 50  0001 L CNN "RS Price/Stock"
F 8 "ROHM Semiconductor" H 8550 3500 50  0001 L CNN "Manufacturer_Name"
F 9 "KTR10EZPF4220" H 8550 3400 50  0001 L CNN "Manufacturer_Part_Number"
	1    8000 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	8500 3700 8900 3700
Wire Wire Line
	8500 4100 8500 3700
Wire Wire Line
	9800 4100 8500 4100
Wire Wire Line
	8900 3800 8000 3800
Wire Wire Line
	8000 3800 8000 4050
Text HLabel 8000 5050 0    50   Input ~ 0
BMS_gnd
Wire Wire Line
	8000 4750 8000 5050
Wire Wire Line
	9900 3800 10000 3800
Wire Wire Line
	10000 3800 10000 3200
Connection ~ 10000 3200
Wire Wire Line
	10000 3200 9800 3200
NoConn ~ 9900 3900
NoConn ~ 3150 4000
NoConn ~ 4700 3100
$Comp
L PicBytesMicro-rescue:MT3608-SamacSys_Parts U_StepUp1
U 1 1 600FC408
P 6000 3700
F 0 "U_StepUp1" H 6500 3965 50  0000 C CNN
F 1 "MT3608" H 6500 3874 50  0000 C CNN
F 2 "SOT95P280X145-6N" H 6850 3800 50  0001 L CNN
F 3 "https://www.olimex.com/Products/Breadboarding/BB-PWR-3608/resources/MT3608.pdf" H 6850 3700 50  0001 L CNN
F 4 "High Efficiency 1.2MHz 2A Step Up Converter" H 6850 3600 50  0001 L CNN "Description"
F 5 "1.45" H 6850 3500 50  0001 L CNN "Height"
F 6 "" H 6850 3400 50  0001 L CNN "RS Part Number"
F 7 "" H 6850 3300 50  0001 L CNN "RS Price/Stock"
F 8 "Aerosemi" H 6850 3200 50  0001 L CNN "Manufacturer_Name"
F 9 "MT3608" H 6850 3100 50  0001 L CNN "Manufacturer_Part_Number"
	1    6000 3700
	-1   0    0    1   
$EndComp
Wire Wire Line
	5000 3600 4800 3600
Wire Wire Line
	4600 3600 4600 3500
Wire Wire Line
	5000 3500 4800 3500
Connection ~ 4600 3500
Wire Wire Line
	4600 3500 4600 3100
$Comp
L PicBytesMicro-rescue:GCG21BR71H154KA01K-SamacSys_Parts C_22u_1
U 1 1 60101539
P 4800 3900
F 0 "C_22u_1" V 5050 4028 50  0000 L CNN
F 1 "GCG21BR71H154KA01K" V 5095 4028 50  0001 L CNN
F 2 "CAPC2012X145N" H 5150 3950 50  0001 L CNN
F 3 "https://psearch.en.murata.com/capacitor/product/GCG21BR71H154KA01%23.html" H 5150 3850 50  0001 L CNN
F 4 "Capacitor L=2.0mm W=1.25mm T=1.25mm" H 5150 3750 50  0001 L CNN "Description"
F 5 "1.45" H 5150 3650 50  0001 L CNN "Height"
F 6 "" H 5150 3550 50  0001 L CNN "RS Part Number"
F 7 "" H 5150 3450 50  0001 L CNN "RS Price/Stock"
F 8 "Murata Electronics" H 5150 3350 50  0001 L CNN "Manufacturer_Name"
F 9 "GCG21BR71H154KA01K" H 5150 3250 50  0001 L CNN "Manufacturer_Part_Number"
	1    4800 3900
	0    1    1    0   
$EndComp
Text HLabel 4800 4600 0    50   Input ~ 0
BMS_gnd
Wire Wire Line
	4800 4400 4800 4600
Wire Wire Line
	4800 3900 4800 3600
Connection ~ 4800 3600
Wire Wire Line
	4800 3600 4600 3600
Wire Wire Line
	6000 3600 6100 3600
Wire Wire Line
	6100 3600 6100 4600
Wire Wire Line
	6100 4600 5350 4600
$Comp
L PicBytesMicro-rescue:SRR1260-220M-SamacSys_Parts L_22uH_1
U 1 1 60107DB0
P 5100 3250
F 0 "L_22uH_1" H 5500 3383 50  0000 C CNN
F 1 "SRR1260-220M" H 5500 3384 50  0001 C CNN
F 2 "SRR1260-150M" H 5750 3300 50  0001 L CNN
F 3 "http://uk.rs-online.com/web/p/products/7272246P" H 5750 3200 50  0001 L CNN
F 4 "Power inductor SMD shielded 22uH 4A Bourns SRR1260 Series Shielded Wire-wound SMD Inductor with a Ferrite Core, 22 uH +/-20% 4A Idc Q:29" H 5750 3100 50  0001 L CNN "Description"
F 5 "" H 5750 3000 50  0001 L CNN "Height"
F 6 "7272246P" H 5750 2900 50  0001 L CNN "RS Part Number"
F 7 "http://uk.rs-online.com/web/p/products/7272246P" H 5750 2800 50  0001 L CNN "RS Price/Stock"
F 8 "Bourns" H 5750 2700 50  0001 L CNN "Manufacturer_Name"
F 9 "SRR1260-220M" H 5750 2600 50  0001 L CNN "Manufacturer_Part_Number"
F 10 "70277063" H 5750 2500 50  0001 L CNN "Allied_Number"
	1    5100 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 3250 4800 3250
Wire Wire Line
	4800 3250 4800 3500
Connection ~ 4800 3500
Wire Wire Line
	4800 3500 4600 3500
Wire Wire Line
	6000 3700 6050 3700
Wire Wire Line
	6050 3700 6050 3250
Wire Wire Line
	6050 3250 5900 3250
$Comp
L PicBytesMicro-rescue:SS34-E3_57T-SamacSys_Parts D_1
U 1 1 6010C769
P 6850 3250
F 0 "D_1" H 7250 3077 50  0000 C CNN
F 1 "SS34-E3_57T" H 7250 3076 50  0001 C CNN
F 2 "DIOM7959X262N" H 7350 3400 50  0001 L CNN
F 3 "http://uk.rs-online.com/web/p/products/7000978P" H 7350 3300 50  0001 L CNN
F 4 "Vishay SS34-E3/57T SMT Schottky Diode, 40V 3A, 2-Pin DO-214AB" H 7350 3200 50  0001 L CNN "Description"
F 5 "2.62" H 7350 3100 50  0001 L CNN "Height"
F 6 "7000978P" H 7350 3000 50  0001 L CNN "RS Part Number"
F 7 "http://uk.rs-online.com/web/p/products/7000978P" H 7350 2900 50  0001 L CNN "RS Price/Stock"
F 8 "Vishay" H 7350 2800 50  0001 L CNN "Manufacturer_Name"
F 9 "SS34-E3/57T" H 7350 2700 50  0001 L CNN "Manufacturer_Part_Number"
F 10 "70217403" H 7350 2600 50  0001 L CNN "Allied_Number"
	1    6850 3250
	-1   0    0    1   
$EndComp
Wire Wire Line
	6150 3250 6050 3250
Connection ~ 6050 3250
$Comp
L PicBytesMicro-rescue:KTR10EZPF4220-SamacSys_Parts R_7.5k_1
U 1 1 6010F718
P 6900 3400
F 0 "R_7.5k_1" V 7250 3488 50  0000 L CNN
F 1 "KTR10EZPF4220" V 7295 3488 50  0001 L CNN
F 2 "RESC2012X65N" H 7450 3450 50  0001 L CNN
F 3 "http://rohmfs.rohm.com/en/products/databook/datasheet/passive/resistor/chip_resistor/ktr.pdf" H 7450 3350 50  0001 L CNN
F 4 "ROHM 0805 Resistor Chip" H 7450 3250 50  0001 L CNN "Description"
F 5 "0.65" H 7450 3150 50  0001 L CNN "Height"
F 6 "" H 7450 3050 50  0001 L CNN "RS Part Number"
F 7 "" H 7450 2950 50  0001 L CNN "RS Price/Stock"
F 8 "ROHM Semiconductor" H 7450 2850 50  0001 L CNN "Manufacturer_Name"
F 9 "KTR10EZPF4220" H 7450 2750 50  0001 L CNN "Manufacturer_Part_Number"
	1    6900 3400
	0    1    1    0   
$EndComp
$Comp
L PicBytesMicro-rescue:KTR10EZPF4220-SamacSys_Parts R_1k_3
U 1 1 60110135
P 6900 4250
F 0 "R_1k_3" V 7250 4338 50  0000 L CNN
F 1 "KTR10EZPF4220" V 7295 4338 50  0001 L CNN
F 2 "RESC2012X65N" H 7450 4300 50  0001 L CNN
F 3 "http://rohmfs.rohm.com/en/products/databook/datasheet/passive/resistor/chip_resistor/ktr.pdf" H 7450 4200 50  0001 L CNN
F 4 "ROHM 0805 Resistor Chip" H 7450 4100 50  0001 L CNN "Description"
F 5 "0.65" H 7450 4000 50  0001 L CNN "Height"
F 6 "" H 7450 3900 50  0001 L CNN "RS Part Number"
F 7 "" H 7450 3800 50  0001 L CNN "RS Price/Stock"
F 8 "ROHM Semiconductor" H 7450 3700 50  0001 L CNN "Manufacturer_Name"
F 9 "KTR10EZPF4220" H 7450 3600 50  0001 L CNN "Manufacturer_Part_Number"
	1    6900 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	6900 4250 6900 4200
Wire Wire Line
	6900 3400 6900 3250
Wire Wire Line
	6900 3250 6750 3250
Wire Wire Line
	6900 4950 5350 4950
Wire Wire Line
	5350 4950 5350 4600
Connection ~ 5350 4600
Wire Wire Line
	5350 4600 4800 4600
Wire Wire Line
	6900 4200 6250 4200
Wire Wire Line
	6250 4200 6250 3500
Wire Wire Line
	6250 3500 6000 3500
Connection ~ 6900 4200
Wire Wire Line
	6900 4200 6900 4100
$Comp
L PicBytesMicro-rescue:GCG21BR71H154KA01K-SamacSys_Parts C_22u_2
U 1 1 6011920D
P 7500 3250
F 0 "C_22u_2" V 7750 3378 50  0000 L CNN
F 1 "GCG21BR71H154KA01K" V 7795 3378 50  0001 L CNN
F 2 "CAPC2012X145N" H 7850 3300 50  0001 L CNN
F 3 "https://psearch.en.murata.com/capacitor/product/GCG21BR71H154KA01%23.html" H 7850 3200 50  0001 L CNN
F 4 "Capacitor L=2.0mm W=1.25mm T=1.25mm" H 7850 3100 50  0001 L CNN "Description"
F 5 "1.45" H 7850 3000 50  0001 L CNN "Height"
F 6 "" H 7850 2900 50  0001 L CNN "RS Part Number"
F 7 "" H 7850 2800 50  0001 L CNN "RS Price/Stock"
F 8 "Murata Electronics" H 7850 2700 50  0001 L CNN "Manufacturer_Name"
F 9 "GCG21BR71H154KA01K" H 7850 2600 50  0001 L CNN "Manufacturer_Part_Number"
	1    7500 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	7500 3250 6900 3250
Connection ~ 6900 3250
Text HLabel 8050 3250 2    50   Input ~ 0
5V
Wire Wire Line
	8050 3250 7500 3250
Connection ~ 7500 3250
Wire Wire Line
	7500 3750 7500 4950
Wire Wire Line
	7500 4950 6900 4950
Connection ~ 6900 4950
Text GLabel 2800 5400 2    50   Input ~ 0
BAT-
Text HLabel 2800 5400 0    50   Input ~ 0
BMS_gnd
Wire Wire Line
	6700 2150 6550 2150
Wire Wire Line
	5850 2150 5650 2150
Wire Wire Line
	5650 2150 5650 2050
Connection ~ 5650 2050
Text GLabel 6700 2250 0    50   Input ~ 0
BMS_Vcc
Text GLabel 2200 3500 0    50   Input ~ 0
BMS_Vcc
Text GLabel 6700 1950 0    50   Input ~ 0
BMS_Vcc
NoConn ~ 8000 1950
NoConn ~ 8000 2050
NoConn ~ 8000 2150
NoConn ~ 8000 2250
$Comp
L PicBytesMicro-rescue:MountingHole_Pad-User_library-SamacSys_Parts-HVolt_sub-system-FIT H_Bat+1
U 1 1 600BF28F
P 1800 6000
AR Path="/600BF28F" Ref="H_Bat+1"  Part="1" 
AR Path="/6009E6F5/600BF28F" Ref="H_Bat+1"  Part="1" 
F 0 "H_Bat+1" H 1908 6020 50  0000 L CNN
F 1 "MountingHole_Pad-User_library-SamacSys_Parts" H 1908 5975 50  0001 L CNN
F 2 "User:Mounting-Pad" H 1800 6000 50  0001 C CNN
F 3 "" H 1800 6000 50  0001 C CNN
	1    1800 6000
	1    0    0    -1  
$EndComp
$Comp
L PicBytesMicro-rescue:MountingHole_Pad-User_library-SamacSys_Parts-HVolt_sub-system-FIT H_Bat-1
U 1 1 600C008A
P 2850 6000
AR Path="/600C008A" Ref="H_Bat-1"  Part="1" 
AR Path="/6009E6F5/600C008A" Ref="H_Bat-1"  Part="1" 
F 0 "H_Bat-1" H 2958 6020 50  0000 L CNN
F 1 "MountingHole_Pad-User_library-SamacSys_Parts" H 2958 5975 50  0001 L CNN
F 2 "User:Mounting-Pad" H 2850 6000 50  0001 C CNN
F 3 "" H 2850 6000 50  0001 C CNN
	1    2850 6000
	1    0    0    -1  
$EndComp
Text GLabel 2850 6200 2    50   Input ~ 0
BAT-
Text GLabel 1800 6250 2    50   Input ~ 0
BAT+
Wire Wire Line
	1800 6250 1800 6100
Wire Wire Line
	2850 6200 2850 6100
$EndSCHEMATC
