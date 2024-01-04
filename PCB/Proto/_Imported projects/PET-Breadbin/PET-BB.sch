EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A1 33110 23386
encoding utf-8
Sheet 1 1
Title "CMOSRAM PET"
Date "2020-04-17"
Rev "C"
Comp "Steve J. Gray"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	30775 2850 31125 2850
Wire Wire Line
	22450 4325 22600 4325
Wire Wire Line
	27600 5400 27825 5400
Wire Wire Line
	2025 14475 2100 14475
Wire Wire Line
	2025 14475 2025 14950
Wire Wire Line
	1325 14475 1350 14475
Wire Wire Line
	2725 15050 3100 15050
Wire Wire Line
	2125 5975 2600 5975
Wire Wire Line
	27700 4950 27875 4950
Wire Wire Line
	27550 4950 27700 4950
Wire Wire Line
	27400 4950 27550 4950
Wire Wire Line
	27700 4500 27800 4500
Wire Wire Line
	27550 4400 27700 4400
Wire Wire Line
	27400 4300 27600 4300
Wire Wire Line
	27250 4200 27500 4200
Wire Wire Line
	27700 3900 27875 3900
Wire Wire Line
	27550 3900 27700 3900
Wire Wire Line
	27400 3900 27550 3900
Wire Wire Line
	27700 3450 27800 3450
Wire Wire Line
	27550 3350 27700 3350
Wire Wire Line
	27400 3250 27600 3250
Wire Wire Line
	27250 3150 27500 3150
Wire Wire Line
	27700 2850 27875 2850
Wire Wire Line
	27550 2850 27700 2850
Wire Wire Line
	27400 2850 27550 2850
Wire Wire Line
	27700 2400 27800 2400
Wire Wire Line
	27550 2300 27700 2300
Wire Wire Line
	27400 2200 27600 2200
Wire Wire Line
	27250 2100 27475 2100
Wire Wire Line
	2725 15600 3700 15600
Text Notes 4825 9975 0    61   ~ 0
Decode X8XX for use with I/O area ($E8xx)\nand Editor ROM area $E000-$EFFF minus $E8xx.\n
$Comp
L device1:Ferrite_Bead FB19
U 1 1 5A6A10F8
P 27975 5400
F 0 "FB19" V 27900 5250 50  0000 C CNN
F 1 "fb" V 27975 5400 50  0000 C CNN
F 2 "" V 27905 5400 50  0001 C CNN
F 3 "" H 27975 5400 50  0001 C CNN
	1    27975 5400
	0    1    1    0   
$EndComp
$Comp
L device1:Ferrite_Bead FB15
U 1 1 5A69F463
P 27950 1375
F 0 "FB15" V 27825 1400 50  0000 C CNN
F 1 "fb" V 27950 1375 50  0000 C CNN
F 2 "" V 27880 1375 50  0001 C CNN
F 3 "" H 27950 1375 50  0001 C CNN
	1    27950 1375
	0    1    1    0   
$EndComp
Text GLabel 30700 3000 0    60   Input ~ 0
~SRQ_IN
Connection ~ 30775 2850
Wire Wire Line
	30775 3000 30700 3000
Wire Wire Line
	30775 2850 30775 3000
Wire Wire Line
	30700 2850 30775 2850
Connection ~ 22450 4325
Wire Wire Line
	22450 4425 22450 4325
Wire Wire Line
	22600 4425 22450 4425
Wire Wire Line
	22350 4325 22450 4325
Text GLabel 31125 3050 0    60   Input ~ 0
GND
Connection ~ 27600 5400
$Comp
L device1:R R9
U 1 1 5A688508
P 27450 5525
F 0 "R9" V 27530 5525 50  0000 C CNN
F 1 "5.1K" V 27450 5525 50  0000 C CNN
F 2 "" V 27380 5525 50  0001 C CNN
F 3 "" H 27450 5525 50  0001 C CNN
	1    27450 5525
	0    -1   -1   0   
$EndComp
Wire Wire Line
	27000 5400 27600 5400
Text GLabel 28125 5400 2    60   Input ~ 0
~IFC
Text GLabel 27325 1250 0    60   Input ~ 0
5V
Text GLabel 27300 5525 0    60   Input ~ 0
GND
Text GLabel 5025 12100 0    61   Input ~ 0
~EOI_OUT
$Comp
L device1:R R11
U 1 1 5A67D766
P 27475 1475
F 0 "R11" V 27555 1475 50  0000 C CNN
F 1 "5.1K" V 27475 1475 50  0000 C CNN
F 2 "" V 27405 1475 50  0001 C CNN
F 3 "" H 27475 1475 50  0001 C CNN
	1    27475 1475
	0    1    1    0   
$EndComp
Connection ~ 27625 1375
Wire Wire Line
	27625 1375 27625 1250
Wire Wire Line
	26975 1375 27625 1375
Text GLabel 28125 1375 2    60   Input ~ 0
~EOI
Text Notes 7000 8525 0    61   ~ 0
VIDEO RAM\nOPTION ROM\nOPTION ROM\nBASIC\nBASIC\nBASIC\nEDITOR + I/O\nKERNAL\n\nI/O
Text Notes 1050 7850 0    61   ~ 0
* NOROM: Used to disable on-board\n  ROMs when in SuperPET mode.\n* 16MHz Clock to SuperPET combo board.
Text GLabel 22575 12200 0    60   Input ~ 0
~CS-PIA1
Text GLabel 22600 3675 0    60   Input ~ 0
X8XX
Text GLabel 22600 3875 0    60   Input ~ 0
BA5
Text Notes 22775 6275 0    61   ~ 0
VIA: $E840-$E84F
Text Notes 22775 10750 0    61   ~ 0
PIA#1: $E810-$E813
Text GLabel 22600 3775 0    60   Input ~ 0
~IO
Text Notes 22900 2350 0    61   ~ 0
PIA#2: $E820-$E823
Text Notes 3700 14625 0    61   ~ 0
Slightly delayed 1MHz
Connection ~ 2025 14475
Text Notes 3700 15750 0    61   ~ 0
Feeds Pixel Shift Register
Text Notes 3700 15300 0    61   ~ 0
Load Character\ninto Shift Register
Text Notes 3700 14100 0    61   ~ 0
To CPU
Connection ~ 2075 15050
Wire Wire Line
	2075 15050 2075 15500
Connection ~ 1325 14475
Wire Wire Line
	1325 13950 3700 13950
Wire Wire Line
	1325 14475 1325 13950
Wire Wire Line
	1275 14475 1325 14475
Text GLabel 1275 14475 0    60   Input ~ 0
1MHz
Connection ~ 2725 15050
Wire Wire Line
	2725 14950 2725 15050
Wire Wire Line
	2575 14950 2725 14950
Text GLabel 3100 14950 0    60   Input ~ 0
2MHz
Text GLabel 3100 15150 0    60   Input ~ 0
4MHz
Text GLabel 1275 15050 0    60   Input ~ 0
8MHz
Connection ~ 2125 5975
Wire Wire Line
	2125 5975 2125 5050
Wire Wire Line
	1350 5975 2125 5975
Text GLabel 24000 4375 2    60   Output ~ 0
~NDAC_OUT
Text GLabel 24000 4275 2    60   Input ~ 0
~ATN_IN
Text GLabel 25700 2600 0    60   Input ~ 0
~NDAC_OUT
Text GLabel 25700 2500 0    60   Input ~ 0
~NDAC_IN
Text GLabel 25700 2400 0    60   Input ~ 0
~ATN_OUT
Text GLabel 25700 2300 0    60   Input ~ 0
~ATN_IN
Text GLabel 25700 2800 0    60   Input ~ 0
~NRFD_OUT
Text GLabel 25700 2700 0    60   Input ~ 0
~NRFD_IN
Text GLabel 24000 4625 2    60   Output ~ 0
~DAV_OUT
Text GLabel 25700 2200 0    60   Input ~ 0
~DAV_OUT
Text GLabel 23975 11350 2    61   Output ~ 0
CASS1_SWITCH
Text GLabel 23975 11450 2    61   Output ~ 0
CASS2_SWITCH
Text GLabel 23975 11550 2    61   Output ~ 0
~EOI_IN
Text GLabel 23975 11650 2    61   Output ~ 0
DIAG
Text GLabel 22500 9600 0    60   Input ~ 0
DIAG
$Comp
L device1:R R23
U 1 1 5A4ED2C9
P 23250 9500
F 0 "R23" V 23175 9500 50  0000 C CNN
F 1 "10 ohm" V 23325 9500 50  0000 C CNN
F 2 "" V 23180 9500 50  0001 C CNN
F 3 "" H 23250 9500 50  0001 C CNN
	1    23250 9500
	0    1    1    0   
$EndComp
Text GLabel 22500 9400 0    60   Input ~ 0
CB2
Text Notes 23850 9300 2    118  ~ 0
PIEZO SOUND
Text Notes 31825 7775 2    118  ~ 0
USER PORT
Text GLabel 23925 8550 2    60   Output ~ 0
CB2
Text GLabel 23975 12700 2    61   Output ~ 0
CASS_CA1
Text GLabel 23925 8450 2    60   Output ~ 0
CASS_CB1
Text GLabel 23925 8200 2    60   Output ~ 0
CA1
Text GLabel 23925 7350 2    60   Output ~ 0
~NDAC_IN
Text GLabel 23925 7450 2    60   Output ~ 0
~NRFD_OUT
Text GLabel 23925 7550 2    60   Output ~ 0
~ATN_OUT
Text GLabel 23925 7650 2    60   Output ~ 0
CASS_PB3
Text GLabel 23925 7750 2    60   Output ~ 0
CASS_PB4
Text GLabel 23925 7850 2    60   Output ~ 0
V-SYNC
Text GLabel 23925 7950 2    60   Output ~ 0
~NRFD_IN
Text GLabel 23925 8050 2    60   Output ~ 0
~DAV_IN
Text GLabel 25700 2100 0    60   Input ~ 0
~DAV_IN
Text GLabel 24000 4525 2    60   Input ~ 0
~SRQ
Text GLabel 31125 2350 0    60   Input ~ 0
~EOI
Text GLabel 31625 3050 2    60   Input ~ 0
GND
Text GLabel 31625 2950 2    60   Input ~ 0
GND
Text GLabel 31625 2850 2    60   Input ~ 0
GND
Text GLabel 31625 2750 2    60   Input ~ 0
GND
Text GLabel 31625 2650 2    60   Input ~ 0
GND
Text GLabel 31625 2550 2    60   Input ~ 0
GND
Text GLabel 31625 2450 2    60   Input ~ 0
GND
Text GLabel 31625 2350 2    60   Input ~ 0
GND
Text GLabel 31125 2750 0    60   Input ~ 0
~IFC
Text GLabel 30700 2850 0    60   Input ~ 0
~SRQ
Text GLabel 31125 2950 0    60   Input ~ 0
~ATN
Text GLabel 31125 2650 0    60   Input ~ 0
~NDAC
Text GLabel 31125 2550 0    60   Input ~ 0
~NFRD
Text GLabel 31125 2450 0    60   Input ~ 0
~DAV
Text GLabel 31625 2250 2    60   Input ~ 0
DIO8
Text GLabel 31625 2150 2    60   Input ~ 0
DIO7
Text GLabel 31625 2050 2    60   Input ~ 0
DIO6
Text GLabel 31625 1950 2    60   Input ~ 0
DIO5
Text GLabel 31125 2250 0    60   Input ~ 0
DIO4
Text GLabel 31125 2150 0    60   Input ~ 0
DIO3
Text GLabel 31125 2050 0    60   Input ~ 0
DIO2
Text GLabel 31125 1950 0    60   Input ~ 0
DIO1
Text GLabel 28100 4500 2    60   Input ~ 0
DIO6
Text GLabel 28100 4400 2    60   Input ~ 0
DIO8
Text GLabel 28100 4300 2    60   Input ~ 0
DIO7
Text GLabel 28100 4200 2    60   Input ~ 0
DIO5
Connection ~ 27700 4950
Wire Wire Line
	27700 4825 27700 4950
Connection ~ 27550 4950
Wire Wire Line
	27550 4825 27550 4950
Connection ~ 27400 4950
Wire Wire Line
	27400 4825 27400 4950
Text GLabel 27875 4950 2    60   Input ~ 0
GND
Wire Wire Line
	27250 4950 27400 4950
Wire Wire Line
	27250 4825 27250 4950
Connection ~ 27700 4500
Wire Wire Line
	27700 4625 27700 4500
Connection ~ 27550 4400
Wire Wire Line
	27550 4625 27550 4400
Connection ~ 27400 4300
Wire Wire Line
	27400 4625 27400 4300
Connection ~ 27250 4200
Wire Wire Line
	27250 4625 27250 4200
Wire Wire Line
	26900 4500 27700 4500
Wire Wire Line
	26900 4400 27550 4400
Wire Wire Line
	26900 4300 27400 4300
Wire Wire Line
	26900 4200 27250 4200
$Comp
L device1:Ferrite_Bead FB7
U 1 1 5A4CA971
P 27650 4200
F 0 "FB7" H 27575 4125 50  0000 C CNN
F 1 "fb" V 27650 4200 50  0000 C CNN
F 2 "" V 27580 4200 50  0001 C CNN
F 3 "" H 27650 4200 50  0001 C CNN
	1    27650 4200
	0    1    1    0   
$EndComp
Text GLabel 28100 3450 2    60   Input ~ 0
DIO2
Text GLabel 28100 3350 2    60   Input ~ 0
DIO4
Text GLabel 28100 3250 2    60   Input ~ 0
DIO3
Text GLabel 28100 3150 2    60   Input ~ 0
DIO1
Connection ~ 27700 3900
Wire Wire Line
	27700 3775 27700 3900
Connection ~ 27550 3900
Wire Wire Line
	27550 3775 27550 3900
Connection ~ 27400 3900
Wire Wire Line
	27400 3775 27400 3900
Text GLabel 27875 3900 2    60   Input ~ 0
GND
Wire Wire Line
	27250 3900 27400 3900
Wire Wire Line
	27250 3775 27250 3900
Connection ~ 27700 3450
Wire Wire Line
	27700 3575 27700 3450
Connection ~ 27550 3350
Wire Wire Line
	27550 3575 27550 3350
Connection ~ 27400 3250
Wire Wire Line
	27400 3575 27400 3250
Connection ~ 27250 3150
Wire Wire Line
	27250 3575 27250 3150
$Comp
L device1:C_Small C12
U 1 1 5A4C9720
P 27700 3675
F 0 "C12" V 27750 3725 50  0000 L CNN
F 1 "47pf" V 27750 3475 50  0000 L CNN
F 2 "" H 27700 3675 50  0001 C CNN
F 3 "" H 27700 3675 50  0001 C CNN
	1    27700 3675
	1    0    0    -1  
$EndComp
$Comp
L device1:C_Small C14
U 1 1 5A4C971A
P 27550 3675
F 0 "C14" V 27600 3725 50  0000 L CNN
F 1 "47pf" V 27600 3475 50  0000 L CNN
F 2 "" H 27550 3675 50  0001 C CNN
F 3 "" H 27550 3675 50  0001 C CNN
	1    27550 3675
	1    0    0    -1  
$EndComp
$Comp
L device1:C_Small C13
U 1 1 5A4C9714
P 27400 3675
F 0 "C13" V 27450 3725 50  0000 L CNN
F 1 "47pf" V 27450 3475 50  0000 L CNN
F 2 "" H 27400 3675 50  0001 C CNN
F 3 "" H 27400 3675 50  0001 C CNN
	1    27400 3675
	1    0    0    -1  
$EndComp
$Comp
L device1:C_Small C11
U 1 1 5A4C970E
P 27250 3675
F 0 "C11" V 27300 3725 50  0000 L CNN
F 1 "47pf" V 27300 3475 50  0000 L CNN
F 2 "" H 27250 3675 50  0001 C CNN
F 3 "" H 27250 3675 50  0001 C CNN
	1    27250 3675
	1    0    0    -1  
$EndComp
Wire Wire Line
	26900 3450 27700 3450
Wire Wire Line
	26900 3350 27550 3350
Wire Wire Line
	26900 3250 27400 3250
Wire Wire Line
	26900 3150 27250 3150
$Comp
L device1:Ferrite_Bead FB12
U 1 1 5A4C9704
P 27950 3450
F 0 "FB12" H 27550 3500 50  0000 C CNN
F 1 "fb" V 27950 3450 50  0000 C CNN
F 2 "" V 27880 3450 50  0001 C CNN
F 3 "" H 27950 3450 50  0001 C CNN
	1    27950 3450
	0    1    1    0   
$EndComp
$Comp
L device1:Ferrite_Bead FB14
U 1 1 5A4C96FE
P 27850 3350
F 0 "FB14" H 27550 3400 50  0000 C CNN
F 1 "fb" V 27850 3350 50  0000 C CNN
F 2 "" V 27780 3350 50  0001 C CNN
F 3 "" H 27850 3350 50  0001 C CNN
	1    27850 3350
	0    1    1    0   
$EndComp
$Comp
L device1:Ferrite_Bead FB13
U 1 1 5A4C96F8
P 27750 3250
F 0 "FB13" H 27550 3300 50  0000 C CNN
F 1 "fb" V 27750 3250 50  0000 C CNN
F 2 "" V 27680 3250 50  0001 C CNN
F 3 "" H 27750 3250 50  0001 C CNN
	1    27750 3250
	0    1    1    0   
$EndComp
$Comp
L device1:Ferrite_Bead FB11
U 1 1 5A4C96F2
P 27650 3150
F 0 "FB11" H 27550 3075 50  0000 C CNN
F 1 "fb" V 27650 3150 50  0000 C CNN
F 2 "" V 27580 3150 50  0001 C CNN
F 3 "" H 27650 3150 50  0001 C CNN
	1    27650 3150
	0    1    1    0   
$EndComp
Text GLabel 28100 2200 2    60   Input ~ 0
~ATN
Text GLabel 28100 2300 2    60   Input ~ 0
~NDAC
Text GLabel 28100 2400 2    60   Input ~ 0
~NFRD
Text GLabel 28100 2100 2    60   Input ~ 0
~DAV
Connection ~ 27700 2850
Wire Wire Line
	27700 2725 27700 2850
Connection ~ 27550 2850
Wire Wire Line
	27550 2725 27550 2850
Connection ~ 27400 2850
Wire Wire Line
	27400 2725 27400 2850
Text GLabel 27875 2850 2    60   Input ~ 0
GND
Wire Wire Line
	27250 2850 27400 2850
Wire Wire Line
	27250 2725 27250 2850
Connection ~ 27700 2400
Wire Wire Line
	27700 2525 27700 2400
Connection ~ 27550 2300
Wire Wire Line
	27550 2525 27550 2300
Connection ~ 27400 2200
Wire Wire Line
	27400 2525 27400 2200
Connection ~ 27250 2100
Wire Wire Line
	27250 2525 27250 2100
$Comp
L device1:C_Small C17
U 1 1 5A4C7A6A
P 27700 2625
F 0 "C17" V 27750 2675 50  0000 L CNN
F 1 "47pf" V 27750 2425 50  0000 L CNN
F 2 "" H 27700 2625 50  0001 C CNN
F 3 "" H 27700 2625 50  0001 C CNN
	1    27700 2625
	1    0    0    -1  
$EndComp
$Comp
L device1:C_Small C18
U 1 1 5A4C79C8
P 27550 2625
F 0 "C18" V 27600 2675 50  0000 L CNN
F 1 "47pf" V 27600 2425 50  0000 L CNN
F 2 "" H 27550 2625 50  0001 C CNN
F 3 "" H 27550 2625 50  0001 C CNN
	1    27550 2625
	1    0    0    -1  
$EndComp
$Comp
L device1:C_Small C20
U 1 1 5A4C792D
P 27400 2625
F 0 "C20" V 27450 2675 50  0000 L CNN
F 1 "47pf" V 27450 2425 50  0000 L CNN
F 2 "" H 27400 2625 50  0001 C CNN
F 3 "" H 27400 2625 50  0001 C CNN
	1    27400 2625
	1    0    0    -1  
$EndComp
$Comp
L device1:C_Small C16
U 1 1 5A4C7876
P 27250 2625
F 0 "C16" V 27300 2675 50  0000 L CNN
F 1 "47pf" V 27300 2425 50  0000 L CNN
F 2 "" H 27250 2625 50  0001 C CNN
F 3 "" H 27250 2625 50  0001 C CNN
	1    27250 2625
	1    0    0    -1  
$EndComp
Wire Wire Line
	26900 2400 27700 2400
Wire Wire Line
	26900 2300 27550 2300
Wire Wire Line
	26900 2200 27400 2200
Wire Wire Line
	26900 2100 27250 2100
$Comp
L device1:Ferrite_Bead FB17
U 1 1 5A4C723E
P 27950 2400
F 0 "FB17" H 27550 2475 50  0000 C CNN
F 1 "fb" V 27950 2400 50  0000 C CNN
F 2 "" V 27880 2400 50  0001 C CNN
F 3 "" H 27950 2400 50  0001 C CNN
	1    27950 2400
	0    1    1    0   
$EndComp
$Comp
L device1:Ferrite_Bead FB18
U 1 1 5A4C6F9C
P 27850 2300
F 0 "FB18" H 27550 2375 50  0000 C CNN
F 1 "fb" V 27850 2300 50  0000 C CNN
F 2 "" V 27780 2300 50  0001 C CNN
F 3 "" H 27850 2300 50  0001 C CNN
	1    27850 2300
	0    1    1    0   
$EndComp
$Comp
L device1:Ferrite_Bead FB20
U 1 1 5A4C6F0D
P 27750 2200
F 0 "FB20" H 27550 2275 50  0000 C CNN
F 1 "fb" V 27750 2200 50  0000 C CNN
F 2 "" V 27680 2200 50  0001 C CNN
F 3 "" H 27750 2200 50  0001 C CNN
	1    27750 2200
	0    1    1    0   
$EndComp
$Comp
L device1:Ferrite_Bead FB16
U 1 1 5A4C6E00
P 27625 2100
F 0 "FB16" H 27525 2025 50  0000 C CNN
F 1 "fb" V 27625 2100 50  0000 C CNN
F 2 "" V 27555 2100 50  0001 C CNN
F 3 "" H 27625 2100 50  0001 C CNN
	1    27625 2100
	0    1    1    0   
$EndComp
Text Notes 31500 3175 0    61   ~ 12
N
Text Notes 31150 3200 0    61   ~ 12
12
Text Notes 31525 1825 0    61   ~ 12
A
Text Notes 31150 1825 0    61   ~ 12
1
$Comp
L PET-BB-rescue:CONN_02X12-conn1-PET-Reloaded-rescue-PET-CR-rescue J1
U 1 1 5A4BE2E6
P 31375 2500
F 0 "J1" H 31375 3150 50  0000 C CNN
F 1 "USER PORT" V 31375 2500 50  0000 C CNN
F 2 "" H 31375 1300 50  0001 C CNN
F 3 "" H 31375 1300 50  0001 C CNN
	1    31375 2500
	1    0    0    -1  
$EndComp
Text GLabel 31650 9050 2    60   Input ~ 0
CB2
Text GLabel 31650 9150 2    60   Input ~ 0
GND
Text GLabel 31650 8950 2    60   BiDi ~ 0
USER7
Text GLabel 31650 8850 2    60   BiDi ~ 0
USER6
Text GLabel 31650 8750 2    60   BiDi ~ 0
USER5
Text GLabel 31650 8650 2    60   BiDi ~ 0
USER4
Text GLabel 31650 8550 2    60   BiDi ~ 0
USER3
Text GLabel 31650 8450 2    60   BiDi ~ 0
USER2
Text GLabel 31650 8350 2    60   BiDi ~ 0
USER1
Text GLabel 31650 8250 2    60   BiDi ~ 0
USER0
Text GLabel 31650 8150 2    60   Input ~ 0
CA1
Text GLabel 31650 8050 2    60   Input ~ 0
GND
Text GLabel 31150 9150 0    60   Input ~ 0
GND
Text GLabel 31150 9050 0    60   Input ~ 0
GND
Text GLabel 31150 8950 0    60   Input ~ 0
HORIZ-DRIVE
Text GLabel 31150 8850 0    60   Input ~ 0
VERT-DRIVE
Text GLabel 31150 8750 0    60   Input ~ 0
CASS_WRITE
Text GLabel 31150 8650 0    60   Input ~ 0
CASS2_READ
Text GLabel 31150 8550 0    60   Input ~ 0
CASS1_READ
Text GLabel 31150 8450 0    60   Input ~ 0
DIAG
Text GLabel 31150 8350 0    60   Input ~ 0
~EOI
Text GLabel 31150 8250 0    60   Input ~ 0
~SRQ_IN
Text GLabel 31150 8150 0    60   Input ~ 0
VIDEO
Text GLabel 31150 8050 0    60   Input ~ 0
GND
Text Notes 31675 9300 0    61   ~ 12
N
Text Notes 31700 7900 0    61   ~ 12
A
Text Notes 31150 9300 0    61   ~ 12
12
Text Notes 31125 7900 0    61   ~ 12
1
$Comp
L PET-BB-rescue:CONN_02X12-conn1-PET-Reloaded-rescue-PET-CR-rescue J2
U 1 1 5A4BBF31
P 31400 8600
F 0 "J2" H 31400 9250 50  0000 C CNN
F 1 "USER PORT" V 31400 8600 50  0000 C CNN
F 2 "" H 31400 7400 50  0001 C CNN
F 3 "" H 31400 7400 50  0001 C CNN
	1    31400 8600
	1    0    0    -1  
$EndComp
Text Notes 2900 15575 0    61   ~ 0
8 or 16 MHz
Text Notes 3700 14375 0    61   ~ 0
1MHz (inverted)
Connection ~ 2725 15600
Wire Wire Line
	2725 15500 2725 15600
Wire Wire Line
	2575 15500 2725 15500
Text GLabel 3700 15600 2    60   Output ~ 0
CLK16-8
Wire Wire Line
	2575 15600 2725 15600
$Comp
L PET-BB-rescue:CONN_02X02-conn1-PET-Reloaded-rescue-PET-CR-rescue J12
U 1 1 5A4B1260
P 2325 15550
F 0 "J12" H 2325 15700 50  0000 C CNN
F 1 "J1/J2" H 2325 15400 50  0000 C CNN
F 2 "" H 2325 14350 50  0001 C CNN
F 3 "" H 2325 14350 50  0001 C CNN
	1    2325 15550
	1    0    0    -1  
$EndComp
Text GLabel 1275 15600 0    60   Input ~ 0
16MHz
Text GLabel 3700 14475 2    60   Output ~ 0
CLK1B
Wire Wire Line
	2700 14475 3700 14475
Wire Wire Line
	2025 14200 3700 14200
Wire Wire Line
	2025 14200 2025 14475
Wire Wire Line
	2025 14950 2075 14950
Wire Wire Line
	1275 15050 2075 15050
Wire Wire Line
	2575 15050 2725 15050
Wire Wire Line
	25050 4700 25700 4700
Wire Wire Line
	25050 4125 25050 4700
Wire Wire Line
	24000 4125 25050 4125
Wire Wire Line
	25000 4500 25700 4500
Wire Wire Line
	25000 4025 25000 4500
Wire Wire Line
	24000 4025 25000 4025
Wire Wire Line
	25100 4900 25700 4900
Wire Wire Line
	25100 3925 25100 4900
Wire Wire Line
	24000 3925 25100 3925
Wire Wire Line
	24950 4300 25700 4300
Wire Wire Line
	24950 3825 24950 4300
Wire Wire Line
	24000 3825 24950 3825
Wire Wire Line
	25325 3650 25700 3650
Wire Wire Line
	25325 3725 25325 3650
Wire Wire Line
	24000 3725 25325 3725
Wire Wire Line
	25175 3450 25700 3450
Wire Wire Line
	25175 3625 25175 3450
Wire Wire Line
	24000 3625 25175 3625
Wire Wire Line
	25525 3850 25700 3850
Wire Wire Line
	25525 3525 25525 3850
Wire Wire Line
	24000 3525 25525 3525
Wire Wire Line
	25100 3250 25700 3250
Wire Wire Line
	25100 3425 25100 3250
Wire Wire Line
	24000 3425 25100 3425
Wire Wire Line
	24750 4600 25700 4600
Wire Wire Line
	24750 3225 24750 4600
Wire Wire Line
	24000 3225 24750 3225
Wire Wire Line
	24800 4400 25700 4400
Wire Wire Line
	24800 3125 24800 4400
Wire Wire Line
	24000 3125 24800 3125
Wire Wire Line
	24850 4800 25700 4800
Wire Wire Line
	24850 3025 24850 4800
Wire Wire Line
	24000 3025 24850 3025
Wire Wire Line
	24900 4200 25700 4200
Wire Wire Line
	24900 2925 24900 4200
Wire Wire Line
	24000 2925 24900 2925
Wire Wire Line
	24950 3550 25700 3550
Wire Wire Line
	24950 2825 24950 3550
Wire Wire Line
	24000 2825 24950 2825
Wire Wire Line
	25000 3350 25700 3350
Wire Wire Line
	25000 2725 25000 3350
Wire Wire Line
	24000 2725 25000 2725
Wire Wire Line
	25050 3750 25700 3750
Wire Wire Line
	25050 2625 25050 3750
Wire Wire Line
	24000 2625 25050 2625
Wire Wire Line
	25100 3150 25700 3150
Wire Wire Line
	25100 2525 25100 3150
Wire Wire Line
	24000 2525 25100 2525
Text GLabel 3700 13950 2    60   Output ~ 0
CLK1
Text GLabel 3700 15050 2    60   Output ~ 0
~LOADSR
Text GLabel 3700 14200 2    60   Output ~ 0
~CLK1
$Comp
L PET-BB-rescue:CONN_02X02-conn1-PET-Reloaded-rescue-PET-CR-rescue J34
U 1 1 5A4AACE3
P 2325 15000
F 0 "J34" H 2325 15150 50  0000 C CNN
F 1 "J3/J4" H 2325 14850 50  0000 C CNN
F 2 "" H 2325 13800 50  0001 C CNN
F 3 "" H 2325 13800 50  0001 C CNN
	1    2325 15000
	1    0    0    -1  
$EndComp
Text Notes 3025 13825 2    118  ~ 0
VIDEO CLOCKS
Text GLabel 23925 8300 2    60   Output ~ 0
GRAPHIC
Text GLabel 23925 7150 2    60   BiDi ~ 0
USER7
Text GLabel 23925 7050 2    60   BiDi ~ 0
USER6
Text GLabel 23925 6950 2    60   BiDi ~ 0
USER5
Text GLabel 23925 6850 2    60   BiDi ~ 0
USER4
Text GLabel 23925 6750 2    60   BiDi ~ 0
USER3
Text GLabel 23925 6650 2    60   BiDi ~ 0
USER2
Text GLabel 23925 6550 2    60   BiDi ~ 0
USER1
Text GLabel 23925 6450 2    60   BiDi ~ 0
USER0
Text GLabel 22525 8100 0    60   Input ~ 0
B02
Text GLabel 22525 8200 0    60   Input ~ 0
R/W
Text GLabel 22525 8300 0    60   Input ~ 0
~IRQ
Text GLabel 22525 7350 0    60   Input ~ 0
BA0
Text GLabel 22525 7450 0    60   Input ~ 0
BA1
Text GLabel 22525 7550 0    60   Input ~ 0
BA2
Text GLabel 22525 7650 0    60   Input ~ 0
BA3
Text GLabel 22525 8550 0    60   Input ~ 0
~RESET
Text Notes 31825 1675 2    118  ~ 0
IEEE PORT
Text Notes 31575 10250 2    118  ~ 0
KEYBOARD\nPORT
Text GLabel 22575 12600 0    60   Input ~ 0
R/W
Text GLabel 22575 12750 0    60   Input ~ 0
~IRQ
Text GLabel 22575 12850 0    60   Input ~ 0
~IRQ
Text GLabel 22575 13050 0    60   Input ~ 0
~RESET
Text GLabel 22575 12500 0    60   Input ~ 0
B02
Text GLabel 22575 12100 0    60   Input ~ 0
5V
Text GLabel 22575 12300 0    60   Input ~ 0
5V
Text GLabel 23975 13050 2    61   Output ~ 0
CASS_CB2
Text GLabel 23975 12950 2    61   Output ~ 0
V-SYNC
Text GLabel 23975 12800 2    61   Output ~ 0
~EOI_OUT
Text GLabel 22575 11950 0    60   Input ~ 0
BA1
Text GLabel 22575 11850 0    60   Input ~ 0
BA0
Text GLabel 22575 11650 0    60   BiDi ~ 0
D7
Text GLabel 22575 11550 0    60   BiDi ~ 0
D6
Text GLabel 22575 11450 0    60   BiDi ~ 0
D5
Text GLabel 22575 11350 0    60   BiDi ~ 0
D4
Text GLabel 22575 11250 0    60   BiDi ~ 0
D3
Text GLabel 22575 11150 0    60   BiDi ~ 0
D2
Text GLabel 22575 11050 0    60   BiDi ~ 0
D1
Text GLabel 22575 10950 0    60   BiDi ~ 0
D0
Text Notes 31575 12350 0    61   ~ 0
KEY
NoConn ~ 31300 12325
Text GLabel 31300 12425 0    60   Input ~ 0
GND
Text GLabel 31300 12225 0    60   Output ~ 0
KOUT9
Text GLabel 31300 12125 0    60   Output ~ 0
KOUT8
Text GLabel 31300 12025 0    60   Output ~ 0
KOUT7
Text GLabel 31300 11925 0    60   Output ~ 0
KOUT6
Text GLabel 31300 11825 0    60   Output ~ 0
KOUT5
Text GLabel 31300 11725 0    60   Output ~ 0
KOUT4
Text GLabel 31300 11625 0    60   Output ~ 0
KOUT3
Text GLabel 31300 11525 0    60   Output ~ 0
KOUT2
Text GLabel 31300 11425 0    60   Output ~ 0
KOUT1
Text GLabel 31300 11325 0    60   Output ~ 0
KOUT0
Text GLabel 31300 11225 0    60   Input ~ 0
KIN7
Text GLabel 31300 11125 0    60   Input ~ 0
KIN6
Text GLabel 31300 11025 0    60   Input ~ 0
KIN5
Text GLabel 31300 10925 0    60   Input ~ 0
KIN4
Text GLabel 31300 10825 0    60   Input ~ 0
KIN3
Text GLabel 31300 10725 0    60   Input ~ 0
KIN2
Text GLabel 31300 10625 0    60   Input ~ 0
KIN1
Text GLabel 31300 10525 0    60   Input ~ 0
KIN0
$Comp
L PET-BB-rescue:CONN_01X20-conn1-PET-Reloaded-rescue-PET-CR-rescue J5
U 1 1 5A49863C
P 31500 11475
F 0 "J5" H 31500 12525 50  0000 C CNN
F 1 "PET KEYBOARD" V 31600 11475 50  0000 C CNN
F 2 "" H 31500 11475 50  0001 C CNN
F 3 "" H 31500 11475 50  0001 C CNN
	1    31500 11475
	1    0    0    -1  
$EndComp
Text GLabel 26600 11850 2    60   Output ~ 0
KOUT9
Text GLabel 26600 11750 2    60   Output ~ 0
KOUT8
Text GLabel 26600 11650 2    60   Output ~ 0
KOUT7
Text GLabel 26600 11550 2    60   Output ~ 0
KOUT6
Text GLabel 26600 11450 2    60   Output ~ 0
KOUT5
Text GLabel 26600 11350 2    60   Output ~ 0
KOUT4
Text GLabel 26600 11250 2    60   Output ~ 0
KOUT3
Text GLabel 26600 11150 2    60   Output ~ 0
KOUT2
Text GLabel 26600 11050 2    60   Output ~ 0
KOUT1
Text GLabel 26600 10950 2    60   Output ~ 0
KOUT0
Text GLabel 25400 12550 2    60   Input ~ 0
KIN7
Text GLabel 25400 12450 2    60   Input ~ 0
KIN6
Text GLabel 25400 12350 2    60   Input ~ 0
KIN5
Text GLabel 25400 12250 2    60   Input ~ 0
KIN4
Text GLabel 25400 12150 2    60   Input ~ 0
KIN3
Text GLabel 25400 12050 2    60   Input ~ 0
KIN2
Text GLabel 25400 11950 2    60   Input ~ 0
KIN1
Text GLabel 25400 11850 2    60   Input ~ 0
KIN0
Text Notes 23875 10575 2    157  ~ 31
KEYBOARD
$Comp
L cbm:6520 UD7
U 1 1 5A493AE6
P 23275 11650
F 0 "UD7" H 23275 11500 50  0000 C CNN
F 1 "6520" H 23275 11300 50  0000 C CNN
F 2 "" H 23275 11650 50  0000 C CNN
F 3 "" H 23275 11650 50  0000 C CNN
	1    23275 11650
	-1   0    0    -1  
$EndComp
Text Notes 24450 6150 2    157  ~ 31
USER PORT / IEEE
Text GLabel 22525 7150 0    60   BiDi ~ 0
D7
Text GLabel 22525 7050 0    60   BiDi ~ 0
D6
Text GLabel 22525 6950 0    60   BiDi ~ 0
D5
Text GLabel 22525 6850 0    60   BiDi ~ 0
D4
Text GLabel 22525 6750 0    60   BiDi ~ 0
D3
Text GLabel 22525 6650 0    60   BiDi ~ 0
D2
Text GLabel 22525 6550 0    60   BiDi ~ 0
D1
Text GLabel 22525 6450 0    60   BiDi ~ 0
D0
$Comp
L cbm:6522 UD6
U 1 1 5A492F4F
P 23225 7150
F 0 "UD6" H 23225 7000 50  0000 C CNN
F 1 "6522" H 23225 6800 50  0000 C CNN
F 2 "" H 23225 7150 50  0000 C CNN
F 3 "" H 23225 7150 50  0000 C CNN
	1    23225 7150
	-1   0    0    -1  
$EndComp
Text GLabel 26900 3750 2    60   Input ~ 0
GND
Text GLabel 26900 3650 2    60   Input ~ 0
GND
Text GLabel 26900 2700 2    60   Input ~ 0
GND
Text GLabel 26900 2600 2    60   Input ~ 0
GND
$Comp
L cbm-steve:MC3446 UA2
U 1 1 5A488CEA
P 26300 4500
F 0 "UA2" H 26300 4600 50  0000 C CNN
F 1 "MC3446" H 26300 4450 50  0000 C CNN
F 2 "" H 26400 4300 50  0000 C CNN
F 3 "" H 26400 4300 50  0000 C CNN
	1    26300 4500
	1    0    0    -1  
$EndComp
$Comp
L cbm-steve:MC3446 UB2
U 1 1 5A488C76
P 26300 3450
F 0 "UB2" H 26300 3550 50  0000 C CNN
F 1 "MC3446" H 26300 3400 50  0000 C CNN
F 2 "" H 26400 3250 50  0000 C CNN
F 3 "" H 26400 3250 50  0000 C CNN
	1    26300 3450
	1    0    0    -1  
$EndComp
$Comp
L cbm-steve:MC3446 UC2
U 1 1 5A488BE2
P 26300 2400
F 0 "UC2" H 26300 2500 50  0000 C CNN
F 1 "MC3446" H 26300 2350 50  0000 C CNN
F 2 "" H 26400 2200 50  0000 C CNN
F 3 "" H 26400 2200 50  0000 C CNN
	1    26300 2400
	1    0    0    -1  
$EndComp
Text Notes 23475 2225 2    157  ~ 31
IEEE
Text GLabel 22600 4075 0    60   Input ~ 0
B02
Text GLabel 22350 4325 0    60   Output ~ 0
~IRQ
Text GLabel 22600 4625 0    60   Input ~ 0
~RES
Text GLabel 22600 4175 0    60   Input ~ 0
RW
Text GLabel 22600 3525 0    60   Input ~ 0
BA1
Text GLabel 22600 3425 0    60   Input ~ 0
BA0
Text GLabel 22600 3225 0    60   BiDi ~ 0
D7
Text GLabel 22600 3125 0    60   BiDi ~ 0
D6
Text GLabel 22600 3025 0    60   BiDi ~ 0
D5
Text GLabel 22600 2925 0    60   BiDi ~ 0
D4
Text GLabel 22600 2825 0    60   BiDi ~ 0
D3
Text GLabel 22600 2725 0    60   BiDi ~ 0
D2
Text GLabel 22600 2625 0    60   BiDi ~ 0
D1
Text GLabel 22600 2525 0    60   BiDi ~ 0
D0
$Comp
L cbm:6520 UD3
U 1 1 5A486FB0
P 23300 3225
F 0 "UD3" H 23300 3075 50  0000 C CNN
F 1 "6520" H 23300 2875 50  0000 C CNN
F 2 "" H 23300 3225 50  0000 C CNN
F 3 "" H 23300 3225 50  0000 C CNN
	1    23300 3225
	-1   0    0    -1  
$EndComp
Text GLabel 5325 1625 0    60   BiDi ~ 0
D3
Text GLabel 5325 1525 0    60   BiDi ~ 0
D2
Text GLabel 5325 1425 0    60   BiDi ~ 0
D1
Text GLabel 5325 1325 0    60   BiDi ~ 0
D0
Text Notes 6525 1175 2    118  ~ 0
DATA BUFFER
Text Notes 50   23350 0    236  ~ 47
Work in Progress!!!
Text Notes 29100 22175 0    315  ~ 63
BREADBIN PET
Text GLabel 6725 8300 2    60   Output ~ 0
~SELF
Text GLabel 6725 8200 2    60   Output ~ 0
~SELE
Text GLabel 6650 8100 2    60   Output ~ 0
~SELD
Text GLabel 6650 8000 2    60   Output ~ 0
~SELC
Text GLabel 6650 7900 2    60   Output ~ 0
~SELB
Text GLabel 6650 7800 2    60   Output ~ 0
~SELA
Text GLabel 6650 7700 2    60   Output ~ 0
~SEL9
Text GLabel 6650 7600 2    60   Output ~ 0
~SEL8
Text Notes 6850 3875 2    118  ~ 0
ADDRESS BUFFER
Text GLabel 1350 5975 0    60   Input ~ 0
S0
Text GLabel 2600 5825 0    60   Input ~ 0
SYNC
Text GLabel 1375 5675 0    60   Input ~ 0
~NMI
Text GLabel 1375 5525 0    60   Input ~ 0
~IRQ
Text GLabel 1375 5375 0    60   Input ~ 0
RDY
Text GLabel 2600 6175 0    60   Input ~ 0
CLK1
Text GLabel 2600 7325 0    60   Input ~ 0
16MHz
Text GLabel 1450 6925 0    60   Input ~ 0
~RES
Text GLabel 2600 6625 0    60   Input ~ 0
R/~W
Text GLabel 2600 6375 0    60   Input ~ 0
02
Text GLabel 1450 7225 0    60   Input ~ 0
~NOROM
Text GLabel 6675 4275 2    60   Input ~ 0
BA8
Text GLabel 6675 4175 2    60   Input ~ 0
BA9
Text GLabel 6675 4075 2    60   Input ~ 0
BA10
Text GLabel 6675 3975 2    60   Input ~ 0
BA11
Text GLabel 6675 4375 2    60   Input ~ 0
BA12
Text GLabel 6675 4475 2    60   Input ~ 0
BA13
Text GLabel 6675 4575 2    60   Input ~ 0
BA14
Text GLabel 6675 4675 2    60   Input ~ 0
BA15
Text GLabel 5275 4675 0    60   Input ~ 0
A15
Text GLabel 5275 4575 0    60   Input ~ 0
A14
Text GLabel 5275 4475 0    60   Input ~ 0
A13
Text GLabel 5275 4375 0    60   Input ~ 0
A12
Text GLabel 5275 3975 0    60   Input ~ 0
A11
Text GLabel 5275 4075 0    60   Input ~ 0
A10
Text GLabel 5275 4175 0    60   Input ~ 0
A9
Text GLabel 5275 4275 0    60   Input ~ 0
A8
$Comp
L PET-BB-rescue:74LS244-74xx1-PET-Reloaded-rescue-PET-CR-rescue UD14
U 1 1 57281990
P 5975 4475
F 0 "UD14" H 6025 4275 50  0000 C CNN
F 1 "74LS244" H 6075 4075 50  0000 C CNN
F 2 "" H 5975 4475 50  0000 C CNN
F 3 "" H 5975 4475 50  0000 C CNN
	1    5975 4475
	1    0    0    -1  
$EndComp
Text GLabel 6675 5825 2    60   Input ~ 0
BA0
Text GLabel 6675 5725 2    60   Input ~ 0
BA1
Text GLabel 6675 5625 2    60   Input ~ 0
BA2
Text GLabel 6675 5525 2    60   Input ~ 0
BA3
Text GLabel 6675 5425 2    60   Input ~ 0
BA4
Text GLabel 6675 5325 2    60   Input ~ 0
BA5
Text GLabel 6675 5225 2    60   Input ~ 0
BA6
Text GLabel 6675 5125 2    60   Input ~ 0
BA7
Text GLabel 5275 5125 0    60   Input ~ 0
A7
Text GLabel 5275 5225 0    60   Input ~ 0
A6
Text GLabel 5275 5325 0    60   Input ~ 0
A5
Text GLabel 5275 5425 0    60   Input ~ 0
A4
Text GLabel 5275 5525 0    60   Input ~ 0
A3
Text GLabel 5275 5625 0    60   Input ~ 0
A2
Text GLabel 5275 5725 0    60   Input ~ 0
A1
Text GLabel 5275 5825 0    60   Input ~ 0
A0
$Comp
L PET-BB-rescue:74LS244-74xx1-PET-Reloaded-rescue-PET-CR-rescue UD13
U 1 1 57281791
P 5975 5625
F 0 "UD13" H 6025 5425 50  0000 C CNN
F 1 "74LS244" H 6075 5225 50  0000 C CNN
F 2 "" H 5975 5625 50  0000 C CNN
F 3 "" H 5975 5625 50  0000 C CNN
	1    5975 5625
	1    0    0    -1  
$EndComp
Text GLabel 4000 7675 2    60   Output ~ 0
A15
Text GLabel 4000 7575 2    60   Output ~ 0
A14
Text GLabel 4000 7475 2    60   Output ~ 0
A13
Text GLabel 4000 7375 2    60   Output ~ 0
A12
Text GLabel 4000 7275 2    60   Output ~ 0
A11
Text GLabel 4000 7175 2    60   Output ~ 0
A10
Text GLabel 4000 7075 2    60   Output ~ 0
A9
Text GLabel 4000 6975 2    60   Output ~ 0
A8
Text GLabel 4000 6875 2    60   Output ~ 0
A7
Text GLabel 4000 6775 2    60   Output ~ 0
A6
Text GLabel 4000 6675 2    60   Output ~ 0
A5
Text GLabel 4000 6575 2    60   Output ~ 0
A4
Text GLabel 4000 6475 2    60   Output ~ 0
A3
Text GLabel 4000 6375 2    60   Output ~ 0
A2
Text GLabel 4000 6275 2    60   Output ~ 0
A1
Text GLabel 4000 6175 2    60   Output ~ 0
A0
Text GLabel 4000 6025 2    60   BiDi ~ 0
D7
Text GLabel 4000 5925 2    60   BiDi ~ 0
D6
Text GLabel 4000 5825 2    60   BiDi ~ 0
D5
Text GLabel 4000 5725 2    60   BiDi ~ 0
D4
Text GLabel 4000 5625 2    60   BiDi ~ 0
D3
Text GLabel 4000 5525 2    60   BiDi ~ 0
D2
Text GLabel 4000 5425 2    60   BiDi ~ 0
D1
Text GLabel 4000 5325 2    60   BiDi ~ 0
D0
$Comp
L cbm:6502 UF5
U 1 1 572815CB
P 3300 6025
F 0 "UF5" H 3300 5425 50  0000 C CNN
F 1 "6502" H 3300 5225 50  0000 C CNN
F 2 "" H 3300 6025 50  0000 C CNN
F 3 "" H 3300 6025 50  0000 C CNN
	1    3300 6025
	1    0    0    -1  
$EndComp
Wire Wire Line
	1375 5375 2025 5375
Connection ~ 2075 14950
Wire Wire Line
	2075 14950 2425 14950
$Comp
L PET-BB-rescue:74LS244-74xx1-PET-Reloaded-rescue-PET-CR-rescue UF7
U 1 1 5EB9BCA0
P 6025 1825
F 0 "UF7" H 6075 1625 50  0000 C CNN
F 1 "74LS244" H 6125 1425 50  0000 C CNN
F 2 "" H 6025 1825 50  0000 C CNN
F 3 "" H 6025 1825 50  0000 C CNN
	1    6025 1825
	1    0    0    -1  
$EndComp
$Comp
L PET-BB-rescue:74LS244-74xx1-PET-Reloaded-rescue-PET-CR-rescue UF?
U 1 1 5EBC31AA
P 6025 2950
F 0 "UF?" H 6075 2750 50  0000 C CNN
F 1 "74LS244" H 6125 2550 50  0000 C CNN
F 2 "" H 6025 2950 50  0000 C CNN
F 3 "" H 6025 2950 50  0000 C CNN
	1    6025 2950
	1    0    0    -1  
$EndComp
Text GLabel 6725 2025 2    60   BiDi ~ 0
D0
Text GLabel 6725 1925 2    60   BiDi ~ 0
D1
Text GLabel 6725 1825 2    60   BiDi ~ 0
D2
Text GLabel 6725 1725 2    60   BiDi ~ 0
D3
Text GLabel 6725 1625 2    60   BiDi ~ 0
BD3
Text GLabel 6725 1525 2    60   BiDi ~ 0
BD2
Text GLabel 6725 1425 2    60   BiDi ~ 0
BD1
Text GLabel 6725 1325 2    60   BiDi ~ 0
BD0
Text GLabel 5325 1725 0    60   BiDi ~ 0
BD3
Text GLabel 5325 1825 0    60   BiDi ~ 0
BD2
Text GLabel 5325 1925 0    60   BiDi ~ 0
BD1
Text GLabel 5325 2025 0    60   BiDi ~ 0
BD0
Text GLabel 5325 2750 0    60   BiDi ~ 0
D7
Text GLabel 5325 2650 0    60   BiDi ~ 0
D6
Text GLabel 5325 2550 0    60   BiDi ~ 0
D5
Text GLabel 5325 2450 0    60   BiDi ~ 0
D4
Text GLabel 5325 2850 0    60   BiDi ~ 0
BD7
Text GLabel 5325 2950 0    60   BiDi ~ 0
BD6
Text GLabel 5325 3050 0    60   BiDi ~ 0
BD5
Text GLabel 5325 3150 0    60   BiDi ~ 0
BD4
Text GLabel 6725 3150 2    60   BiDi ~ 0
D4
Text GLabel 6725 3050 2    60   BiDi ~ 0
D5
Text GLabel 6725 2950 2    60   BiDi ~ 0
D6
Text GLabel 6725 2850 2    60   BiDi ~ 0
D7
Text GLabel 6725 2750 2    60   BiDi ~ 0
BD7
Text GLabel 6725 2650 2    60   BiDi ~ 0
BD6
Text GLabel 6725 2550 2    60   BiDi ~ 0
BD5
Text GLabel 6725 2450 2    60   BiDi ~ 0
BD4
Wire Wire Line
	5000 3450 5325 3450
Text GLabel 5275 6025 0    60   Input ~ 0
GND
Text GLabel 5275 6125 0    60   Input ~ 0
GND
Text GLabel 5275 4875 0    60   Input ~ 0
GND
Text GLabel 5275 4975 0    60   Input ~ 0
GND
$Comp
L 74xx:74LS00 UE8
U 1 1 5E9CD82E
P 3550 1875
F 0 "UE8" H 3550 1875 50  0000 C CNN
F 1 "74LS00" H 3550 1675 50  0000 C CNN
F 2 "" H 3550 1875 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 3550 1875 50  0001 C CNN
	1    3550 1875
	1    0    0    1   
$EndComp
$Comp
L 74xx:74LS00 UE8
U 2 1 5E9CEBB8
P 22800 9500
F 0 "UE8" H 22800 9500 50  0000 C CNN
F 1 "74LS00" H 22775 9300 50  0000 C CNN
F 2 "" H 22800 9500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 22800 9500 50  0001 C CNN
	2    22800 9500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS00 UE8
U 3 1 5E9D07D0
P 22650 20875
F 0 "UE8" H 22650 20875 50  0000 C CNN
F 1 "74LS00" H 22650 20675 50  0000 C CNN
F 2 "" H 22650 20875 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 22650 20875 50  0001 C CNN
	3    22650 20875
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS00 UE8
U 4 1 5E9D3353
P 2925 1525
F 0 "UE8" H 2900 1525 50  0000 C CNN
F 1 "74LS00" H 2925 1325 50  0000 C CNN
F 2 "" H 2925 1525 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 2925 1525 50  0001 C CNN
	4    2925 1525
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS00 UE8
U 5 1 5E9D8A76
P 23200 22100
F 0 "UE8" H 23100 22150 50  0000 L CNN
F 1 "74LS00" H 23050 22050 50  0000 L CNN
F 2 "" H 23200 22100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 23200 22100 50  0001 C CNN
	5    23200 22100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4925 2225 5325 2225
$Comp
L 74xx:74LS10 UD5
U 1 1 5EA80A3F
P 2200 1425
F 0 "UD5" H 2200 1425 50  0000 C CNN
F 1 "74LS10" H 2200 1625 50  0000 C CNN
F 2 "" H 2200 1425 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS10" H 2200 1425 50  0001 C CNN
	1    2200 1425
	1    0    0    1   
$EndComp
$Comp
L 74xx:74LS10 UD5
U 2 1 5EA83795
P 5525 10250
F 0 "UD5" H 5500 10250 50  0000 C CNN
F 1 "74LS10" H 5525 10050 50  0000 C CNN
F 2 "" H 5525 10250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS10" H 5525 10250 50  0001 C CNN
	2    5525 10250
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS10 UD5
U 3 1 5EA85D86
P 22650 21300
F 0 "UD5" H 22650 21300 50  0000 C CNN
F 1 "74LS10" H 22625 21100 50  0000 C CNN
F 2 "" H 22650 21300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS10" H 22650 21300 50  0001 C CNN
	3    22650 21300
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS10 UD5
U 4 1 5EA87E97
P 24100 22100
F 0 "UD5" H 24000 22175 50  0000 L CNN
F 1 "74LS10" H 23975 22050 50  0000 L CNN
F 2 "" H 24100 22100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS10" H 24100 22100 50  0001 C CNN
	4    24100 22100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 1425 2625 1425
$Comp
L 74xx:74LS00 UE3
U 1 1 5EAB2C1C
P 1750 2025
F 0 "UE3" H 1750 2025 50  0000 C CNN
F 1 "74LS00" H 1725 1825 50  0000 C CNN
F 2 "" H 1750 2025 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 1750 2025 50  0001 C CNN
	1    1750 2025
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS00 UE3
U 2 1 5EAB4BDD
P 21900 20875
F 0 "UE3" H 21875 20875 50  0000 C CNN
F 1 "74LS00" H 21875 20675 50  0000 C CNN
F 2 "" H 21900 20875 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 21900 20875 50  0001 C CNN
	2    21900 20875
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS00 UE3
U 3 1 5EAB8AEB
P 6950 9450
F 0 "UE3" H 6950 9450 50  0000 C CNN
F 1 "74LS00" H 6925 9250 50  0000 C CNN
F 2 "" H 6950 9450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 6950 9450 50  0001 C CNN
	3    6950 9450
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS00 UE3
U 4 1 5EABC5D3
P 1525 1425
F 0 "UE3" H 1525 1425 50  0000 C CNN
F 1 "74LS00" H 1500 1225 50  0000 C CNN
F 2 "" H 1525 1425 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 1525 1425 50  0001 C CNN
	4    1525 1425
	1    0    0    1   
$EndComp
$Comp
L 74xx:74LS00 UE3
U 5 1 5EABEEF1
P 22775 22100
F 0 "UE3" H 22675 22150 50  0000 L CNN
F 1 "74LS00" H 22625 22075 50  0000 L CNN
F 2 "" H 22775 22100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 22775 22100 50  0001 C CNN
	5    22775 22100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1825 1425 1900 1425
$Comp
L Device:R R17
U 1 1 5ECF1273
P 1950 1125
F 0 "R17" V 2157 1125 50  0000 C CNN
F 1 "1K" V 2066 1125 50  0000 C CNN
F 2 "" V 1880 1125 50  0001 C CNN
F 3 "~" H 1950 1125 50  0001 C CNN
	1    1950 1125
	0    -1   -1   0   
$EndComp
Text GLabel 2100 1125 2    60   Input ~ 0
5V
Wire Wire Line
	1450 1925 1375 1925
Wire Wire Line
	1375 1925 1375 2125
Wire Wire Line
	1375 2125 1450 2125
Wire Wire Line
	1375 1925 1225 1925
Connection ~ 1375 1925
Text GLabel 1225 1925 0    60   Input ~ 0
BA15
$Comp
L Connector:TestPoint TP1
U 1 1 5EEE6DD4
P 3250 2150
F 0 "TP1" V 3250 2325 50  0000 L CNN
F 1 "TP1" H 3275 2200 50  0000 L CNN
F 2 "" H 3450 2150 50  0001 C CNN
F 3 "~" H 3450 2150 50  0001 C CNN
	1    3250 2150
	0    1    1    0   
$EndComp
$Comp
L Device:R_Network08 RN1
U 1 1 5EF0E0E9
P 2325 4850
F 0 "RN1" H 2713 4896 50  0000 L CNN
F 1 "1K" H 2713 4805 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP9" V 2800 4850 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 2325 4850 50  0001 C CNN
	1    2325 4850
	1    0    0    -1  
$EndComp
Text GLabel 1925 4650 1    60   Input ~ 0
5V
Wire Wire Line
	2025 5050 2025 5375
Connection ~ 2025 5375
Wire Wire Line
	2025 5375 2600 5375
Wire Wire Line
	1375 5525 1875 5525
Wire Wire Line
	1375 5675 2225 5675
Wire Wire Line
	1450 7225 1775 7225
Wire Wire Line
	1925 5050 1925 6925
Wire Wire Line
	1450 6925 1925 6925
Connection ~ 1925 6925
Wire Wire Line
	1925 6925 2600 6925
$Comp
L Device:R R1
U 1 1 5F14DA41
P 1675 4800
F 0 "R1" V 1750 4750 50  0000 L CNN
F 1 "1K" V 1675 4750 50  0000 L CNN
F 2 "" V 1605 4800 50  0001 C CNN
F 3 "~" H 1675 4800 50  0001 C CNN
	1    1675 4800
	1    0    0    -1  
$EndComp
Text GLabel 1675 4650 1    60   Input ~ 0
5V
Wire Wire Line
	1875 5525 1875 5175
Wire Wire Line
	1675 5175 1675 4950
Wire Wire Line
	1675 5175 1875 5175
Connection ~ 1875 5525
Wire Wire Line
	1875 5525 2600 5525
Wire Wire Line
	2225 5050 2225 5675
Connection ~ 2225 5675
Wire Wire Line
	2225 5675 2600 5675
NoConn ~ 2600 6275
Wire Wire Line
	1800 1125 1800 1325
Wire Wire Line
	1800 1325 1900 1325
$Comp
L PET-BB-rescue:74LS154-74xx1-PET-Reloaded-rescue-PET-CR-rescue UF8
U 1 1 5F37DECC
P 5950 7600
F 0 "UF8" H 5950 7700 50  0000 C CNN
F 1 "74LS154" H 5950 7575 50  0000 C CNN
F 2 "" H 5950 7600 50  0001 C CNN
F 3 "" H 5950 7600 50  0001 C CNN
	1    5950 7600
	1    0    0    -1  
$EndComp
Text Notes 6800 6625 2    118  ~ 0
ADDRESS DECODE
Text GLabel 6650 7500 2    60   Output ~ 0
~SEL7
Text GLabel 6650 7400 2    60   Output ~ 0
~SEL6
Text GLabel 6650 7300 2    60   Output ~ 0
~SEL5
Text GLabel 6650 7200 2    60   Output ~ 0
~SEL4
NoConn ~ 6650 7100
NoConn ~ 6650 7000
NoConn ~ 6650 6900
NoConn ~ 6650 6800
Text GLabel 5300 6800 0    60   Input ~ 0
BA12
Text GLabel 5300 6900 0    60   Input ~ 0
BA13
Text GLabel 5300 7000 0    60   Input ~ 0
BA14
Text GLabel 5300 7100 0    60   Input ~ 0
BA15
Text GLabel 5300 7300 0    60   Input ~ 0
GND
Text GLabel 5300 7400 0    60   Input ~ 0
GND
Text Notes 3000 6225 0    197  ~ 0
CPU
Text GLabel 1225 1125 0    60   Input ~ 0
~SEL9
Text GLabel 1225 1325 0    60   Input ~ 0
~RAMON
Text GLabel 2050 2025 2    60   Output ~ 0
~BA15
Text GLabel 1225 1525 0    60   Input ~ 0
~BA15
Text GLabel 1225 1725 0    60   Input ~ 0
~SEL8
Wire Wire Line
	1225 1725 1800 1725
Wire Wire Line
	1800 1725 1800 1525
Wire Wire Line
	1800 1525 1900 1525
$Comp
L cbm-steve:7417 UD2
U 1 1 5F7BBEEF
P 5625 12150
F 0 "UD2" H 5625 12175 50  0000 C CNN
F 1 "7417" H 5850 11725 50  0000 C CNN
F 2 "" H 5725 11900 50  0000 C CNN
F 3 "" H 5725 11900 50  0000 C CNN
	1    5625 12150
	1    0    0    -1  
$EndComp
Text GLabel 7125 11675 2    60   Output ~ 0
~RES
$Comp
L Timer:LM555 UF2
U 1 1 5F839D00
P 2225 8850
F 0 "UF2" H 2225 8925 50  0000 C CNN
F 1 "LM555" H 2225 8850 50  0000 C CNN
F 2 "" H 2225 8850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm555.pdf" H 2225 8850 50  0001 C CNN
	1    2225 8850
	1    0    0    -1  
$EndComp
Text Notes 2475 8200 2    118  ~ 0
RESET
Text GLabel 2225 8450 1    60   Input ~ 0
5V
Text GLabel 1725 9050 0    60   Input ~ 0
5V
Text GLabel 3325 8650 2    60   Output ~ 0
COLDRESET
$Comp
L 74xx1:74LS04 UE2
U 7 1 5F83D5CD
P 22350 22100
F 0 "UE2" H 22250 22150 50  0000 L CNN
F 1 "74LS04" H 22200 22075 50  0000 L CNN
F 2 "" H 22350 22100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 22350 22100 50  0001 C CNN
	7    22350 22100
	1    0    0    -1  
$EndComp
$Comp
L 74xx1:74LS04 UE2
U 1 1 5F840533
P 21200 20975
F 0 "UE2" H 21150 20975 50  0000 C CNN
F 1 "74LS04" H 21275 20825 50  0000 C CNN
F 2 "" H 21200 20975 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 21200 20975 50  0001 C CNN
	1    21200 20975
	1    0    0    -1  
$EndComp
$Comp
L 74xx1:74LS04 UE2
U 2 1 5F842BFE
P 5100 8875
F 0 "UE2" H 5050 8875 50  0000 C CNN
F 1 "74LS04" H 5175 8725 50  0000 C CNN
F 2 "" H 5100 8875 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 5100 8875 50  0001 C CNN
	2    5100 8875
	1    0    0    -1  
$EndComp
$Comp
L 74xx1:74LS04 UE2
U 3 1 5F844F7F
P 3025 8650
F 0 "UE2" H 2975 8650 50  0000 C CNN
F 1 "74LS04" H 3100 8500 50  0000 C CNN
F 2 "" H 3025 8650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 3025 8650 50  0001 C CNN
	3    3025 8650
	1    0    0    -1  
$EndComp
$Comp
L 74xx1:74LS04 UE2
U 4 1 5F847148
P 6125 10250
F 0 "UE2" H 6100 10250 50  0000 C CNN
F 1 "74LS04" H 6225 10125 50  0000 C CNN
F 2 "" H 6125 10250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 6125 10250 50  0001 C CNN
	4    6125 10250
	1    0    0    -1  
$EndComp
$Comp
L 74xx1:74LS04 UE2
U 5 1 5F849523
P 1475 2850
F 0 "UE2" H 1425 2850 50  0000 C CNN
F 1 "74LS04" H 1550 2700 50  0000 C CNN
F 2 "" H 1475 2850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 1475 2850 50  0001 C CNN
	5    1475 2850
	1    0    0    -1  
$EndComp
$Comp
L 74xx1:74LS04 UE2
U 6 1 5F84B2CD
P 1475 2450
F 0 "UE2" H 1425 2450 50  0000 C CNN
F 1 "74LS04" H 1600 2325 50  0000 C CNN
F 2 "" H 1475 2450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 1475 2450 50  0001 C CNN
	6    1475 2450
	1    0    0    -1  
$EndComp
Text GLabel 2225 9250 3    60   Input ~ 0
GND
Text GLabel 5025 11900 0    60   Input ~ 0
COLDRESET
$Comp
L Device:R R3
U 1 1 5F9248B7
P 3000 9050
F 0 "R3" V 2925 9050 50  0000 C CNN
F 1 "1M" V 3000 9050 50  0000 C CNN
F 2 "" V 2930 9050 50  0001 C CNN
F 3 "~" H 3000 9050 50  0001 C CNN
	1    3000 9050
	0    1    1    0   
$EndComp
Wire Wire Line
	2725 8850 2775 8850
Wire Wire Line
	2775 8850 2775 9050
Connection ~ 2775 9050
Wire Wire Line
	2775 9050 2850 9050
Wire Wire Line
	1725 8650 1200 8650
$Comp
L Device:R R2
U 1 1 5F97B9A8
P 1200 8500
F 0 "R2" V 1125 8500 50  0000 C CNN
F 1 "1M" V 1200 8500 50  0000 C CNN
F 2 "" V 1130 8500 50  0001 C CNN
F 3 "~" H 1200 8500 50  0001 C CNN
	1    1200 8500
	-1   0    0    1   
$EndComp
Connection ~ 1200 8650
$Comp
L Device:C_Small C2
U 1 1 5FA0188F
P 1450 9250
F 0 "C2" H 1400 9175 50  0000 C CNN
F 1 "0.01" H 1350 9325 50  0000 C CNN
F 2 "" H 1450 9250 50  0001 C CNN
F 3 "~" H 1450 9250 50  0001 C CNN
	1    1450 9250
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5FA039A1
P 1200 9250
F 0 "C1" H 1200 9325 50  0000 L CNN
F 1 "0.1" H 1225 9175 50  0000 L CNN
F 2 "" H 1200 9250 50  0001 C CNN
F 3 "~" H 1200 9250 50  0001 C CNN
	1    1200 9250
	1    0    0    -1  
$EndComp
Text GLabel 1200 9350 3    60   Input ~ 0
GND
Text GLabel 1200 8350 1    60   Input ~ 0
5V
Wire Wire Line
	1725 8850 1450 8850
Wire Wire Line
	1450 8850 1450 9150
Text GLabel 1450 9350 3    60   Input ~ 0
GND
Wire Wire Line
	1200 8650 1200 9150
$Comp
L Device:C_Small C5
U 1 1 5FC88EF0
P 2775 9275
F 0 "C5" H 2725 9200 50  0000 C CNN
F 1 "Tant 1.0 25V" H 2500 9350 50  0000 C CNN
F 2 "" H 2775 9275 50  0001 C CNN
F 3 "~" H 2775 9275 50  0001 C CNN
	1    2775 9275
	-1   0    0    1   
$EndComp
Wire Wire Line
	2725 9050 2775 9050
Wire Wire Line
	2775 9050 2775 9175
Text GLabel 2775 9375 3    60   Input ~ 0
GND
Text GLabel 3150 9050 2    60   Input ~ 0
5V
Text GLabel 5025 12400 0    60   Input ~ 0
02
Text GLabel 7125 12550 2    60   Output ~ 0
B02
Wire Wire Line
	6225 12400 6250 12400
$Comp
L Device:R R7
U 1 1 5FD945AC
P 6250 12925
F 0 "R7" H 6300 12975 50  0000 L CNN
F 1 "470" H 6300 12875 50  0000 L CNN
F 2 "" V 6180 12925 50  0001 C CNN
F 3 "~" H 6250 12925 50  0001 C CNN
	1    6250 12925
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 12400 6250 12650
Wire Wire Line
	4725 12650 4725 12300
Wire Wire Line
	4725 12300 5025 12300
Connection ~ 6250 12400
$Comp
L Device:R R8
U 1 1 5FDC31AD
P 6700 12925
F 0 "R8" H 6750 12975 50  0000 L CNN
F 1 "470" H 6750 12875 50  0000 L CNN
F 2 "" V 6630 12925 50  0001 C CNN
F 3 "~" H 6700 12925 50  0001 C CNN
	1    6700 12925
	1    0    0    -1  
$EndComp
Wire Wire Line
	6225 12300 6700 12300
Text GLabel 7125 12375 2    60   Output ~ 0
~B02
Wire Wire Line
	6700 12775 6700 12300
Connection ~ 6700 12300
Text GLabel 6475 13075 3    60   Input ~ 0
5V
Text GLabel 6700 13075 3    60   Input ~ 0
5V
Text GLabel 5025 12200 0    60   Input ~ 0
RW
Text GLabel 7125 12200 2    60   Output ~ 0
BRW
Wire Wire Line
	6225 12200 6475 12200
Wire Wire Line
	6250 12650 4725 12650
Wire Wire Line
	6250 12775 6250 12650
Connection ~ 6250 12650
$Comp
L Device:R R6
U 1 1 5FFE6455
P 6475 12925
F 0 "R6" H 6525 12975 50  0000 L CNN
F 1 "470" H 6525 12875 50  0000 L CNN
F 2 "" V 6405 12925 50  0001 C CNN
F 3 "~" H 6475 12925 50  0001 C CNN
	1    6475 12925
	1    0    0    -1  
$EndComp
Text GLabel 6225 13075 3    60   Input ~ 0
5V
Connection ~ 6475 12200
Wire Wire Line
	6475 12200 7125 12200
Wire Wire Line
	6975 12300 6975 12375
Wire Wire Line
	6975 12375 7125 12375
Wire Wire Line
	6700 12300 6975 12300
Wire Wire Line
	6925 12400 6925 12550
Wire Wire Line
	6925 12550 7125 12550
Wire Wire Line
	6250 12400 6925 12400
Text GLabel 2625 1625 0    60   Input ~ 0
BRW
Wire Wire Line
	1800 1125 1525 1125
Connection ~ 1800 1125
Wire Wire Line
	1225 1125 1425 1125
$Comp
L Connector:Conn_01x02_Male M1
U 1 1 604DA882
P 1525 925
F 0 "M1" V 1500 850 50  0000 L CNN
F 1 "ROM 9 OUT" V 1400 625 50  0000 L CNN
F 2 "" H 1525 925 50  0001 C CNN
F 3 "~" H 1525 925 50  0001 C CNN
	1    1525 925 
	0    1    1    0   
$EndComp
Wire Wire Line
	3250 2150 3250 1975
Text GLabel 1175 2450 0    60   Input ~ 0
BRW
Text GLabel 1775 2450 2    60   Output ~ 0
~BRW
Text GLabel 1175 2850 0    60   Input ~ 0
~BRW
Text GLabel 2175 2850 2    60   Output ~ 0
RAM-RW
$Comp
L Device:R R36
U 1 1 6091B667
P 1925 2850
F 0 "R36" V 2000 2850 50  0000 C CNN
F 1 "68" V 1825 2850 50  0000 C CNN
F 2 "" V 1855 2850 50  0001 C CNN
F 3 "~" H 1925 2850 50  0001 C CNN
	1    1925 2850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6225 11900 6825 11900
Text Notes 6150 11725 2    118  ~ 0
LOAD DRIVER
Text GLabel 5650 8675 0    60   Input ~ 0
BA8
Text GLabel 5650 8775 0    60   Input ~ 0
BA9
Text GLabel 5650 8975 0    60   Input ~ 0
BA10
Text GLabel 7275 8775 2    60   Output ~ 0
X8XX
Text GLabel 4800 8875 0    60   Input ~ 0
BA11
Wire Wire Line
	5400 8875 5650 8875
$Comp
L 74xx_IEEE:7425 UE4
U 1 1 60D26E6F
P 6150 9450
F 0 "UE4" H 6250 9650 50  0000 C CNN
F 1 "7425" H 6125 9150 50  0000 C CNN
F 2 "" H 6150 9450 50  0001 C CNN
F 3 "" H 6150 9450 50  0001 C CNN
	1    6150 9450
	1    0    0    -1  
$EndComp
$Comp
L 74xx_IEEE:7425 UE4
U 2 1 60D293A6
P 6150 8775
F 0 "UE4" H 6150 9100 50  0000 C CNN
F 1 "7425" H 6150 8450 50  0000 C CNN
F 2 "" H 6150 8775 50  0001 C CNN
F 3 "" H 6150 8775 50  0001 C CNN
	2    6150 8775
	1    0    0    -1  
$EndComp
$Comp
L Device:R R15
U 1 1 60D5B8CF
P 5225 8575
F 0 "R15" V 5300 8575 50  0000 C CNN
F 1 "1K" V 5125 8575 50  0000 C CNN
F 2 "" V 5155 8575 50  0001 C CNN
F 3 "~" H 5225 8575 50  0001 C CNN
	1    5225 8575
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5375 8575 5650 8575
Text GLabel 5075 8575 0    60   Input ~ 0
5V
Text Notes 6075 7950 2    61   ~ 0
4 TO 16\nDECODER
Wire Wire Line
	6475 12200 6475 12775
Wire Wire Line
	5325 2325 5000 2325
Wire Wire Line
	5325 3350 4925 3350
Text GLabel 2650 5175 2    60   Input ~ 0
RN1_8
Text GLabel 3175 1975 0    60   Output ~ 0
RN1_8
Wire Wire Line
	3175 1975 3250 1975
Wire Wire Line
	27775 2100 28100 2100
Wire Wire Line
	27900 2200 28100 2200
Wire Wire Line
	28000 2300 28100 2300
Wire Wire Line
	27800 3150 28100 3150
Wire Wire Line
	27900 3250 28100 3250
Wire Wire Line
	28000 3350 28100 3350
Wire Wire Line
	27800 4200 28100 4200
Wire Wire Line
	27900 4300 28100 4300
Wire Wire Line
	28000 4400 28100 4400
$Comp
L device1:Ferrite_Bead FB8
U 1 1 615F4472
P 27950 4500
F 0 "FB8" H 27575 4575 50  0000 C CNN
F 1 "fb" V 27950 4500 50  0000 C CNN
F 2 "" V 27880 4500 50  0001 C CNN
F 3 "" H 27950 4500 50  0001 C CNN
	1    27950 4500
	0    1    1    0   
$EndComp
$Comp
L device1:Ferrite_Bead FB9
U 1 1 615F492A
P 27750 4300
F 0 "FB9" H 27575 4375 50  0000 C CNN
F 1 "fb" V 27750 4300 50  0000 C CNN
F 2 "" V 27680 4300 50  0001 C CNN
F 3 "" H 27750 4300 50  0001 C CNN
	1    27750 4300
	0    1    1    0   
$EndComp
$Comp
L device1:Ferrite_Bead FB10
U 1 1 615F4C53
P 27850 4400
F 0 "FB10" H 27550 4475 50  0000 C CNN
F 1 "fb" V 27850 4400 50  0000 C CNN
F 2 "" V 27780 4400 50  0001 C CNN
F 3 "" H 27850 4400 50  0001 C CNN
	1    27850 4400
	0    1    1    0   
$EndComp
Text GLabel 26900 4700 2    60   Input ~ 0
GND
Text GLabel 26900 4800 2    60   Input ~ 0
GND
$Comp
L device1:C_Small C8
U 1 1 6165FC9A
P 27700 4725
F 0 "C8" V 27750 4775 50  0000 L CNN
F 1 "47pf" V 27750 4525 50  0000 L CNN
F 2 "" H 27700 4725 50  0001 C CNN
F 3 "" H 27700 4725 50  0001 C CNN
	1    27700 4725
	1    0    0    -1  
$EndComp
$Comp
L device1:C_Small C10
U 1 1 6165FCA0
P 27550 4725
F 0 "C10" V 27600 4775 50  0000 L CNN
F 1 "47pf" V 27600 4525 50  0000 L CNN
F 2 "" H 27550 4725 50  0001 C CNN
F 3 "" H 27550 4725 50  0001 C CNN
	1    27550 4725
	1    0    0    -1  
$EndComp
$Comp
L device1:C_Small C9
U 1 1 6165FCA6
P 27400 4725
F 0 "C9" V 27450 4775 50  0000 L CNN
F 1 "47pf" V 27450 4525 50  0000 L CNN
F 2 "" H 27400 4725 50  0001 C CNN
F 3 "" H 27400 4725 50  0001 C CNN
	1    27400 4725
	1    0    0    -1  
$EndComp
$Comp
L device1:C_Small C7
U 1 1 6165FCAC
P 27250 4725
F 0 "C7" V 27300 4775 50  0000 L CNN
F 1 "47pf" V 27300 4525 50  0000 L CNN
F 2 "" H 27250 4725 50  0001 C CNN
F 3 "" H 27250 4725 50  0001 C CNN
	1    27250 4725
	1    0    0    -1  
$EndComp
$Comp
L device1:R R10
U 1 1 5A688B90
P 27450 5325
F 0 "R10" V 27375 5325 50  0000 C CNN
F 1 "2.4K" V 27450 5325 50  0000 C CNN
F 2 "" V 27380 5325 50  0001 C CNN
F 3 "" H 27450 5325 50  0001 C CNN
	1    27450 5325
	0    1    1    0   
$EndComp
Wire Wire Line
	27600 5400 27600 5325
Text GLabel 5025 12000 0    60   Input ~ 0
~RES
Wire Wire Line
	6825 11900 6825 11675
Wire Wire Line
	6825 11675 7125 11675
Text GLabel 7125 11875 2    60   Output ~ 0
IFC_RESET
Wire Wire Line
	6225 12000 6925 12000
Wire Wire Line
	6925 12000 6925 11875
Wire Wire Line
	6925 11875 7125 11875
Text GLabel 27000 5400 0    60   Input ~ 0
IFC_RESET
Text GLabel 7125 12025 2    60   Output ~ 0
EIO_OUT
Wire Wire Line
	6225 12100 6975 12100
Wire Wire Line
	6975 12100 6975 12025
Wire Wire Line
	6975 12025 7125 12025
Text GLabel 26975 1375 0    60   Input ~ 0
EIO_OUT
$Comp
L device1:R R12
U 1 1 5A67EEF4
P 27475 1250
F 0 "R12" V 27555 1250 50  0000 C CNN
F 1 "2.4K" V 27475 1250 50  0000 C CNN
F 2 "" V 27405 1250 50  0001 C CNN
F 3 "" H 27475 1250 50  0001 C CNN
	1    27475 1250
	0    1    1    0   
$EndComp
Wire Wire Line
	27625 1375 27625 1475
Wire Wire Line
	27625 1375 27750 1375
Text GLabel 27325 1475 0    60   Input ~ 0
GND
Wire Wire Line
	27600 5525 27600 5400
Text GLabel 27300 5325 0    60   Input ~ 0
5V
Wire Wire Line
	28100 1375 28125 1375
Wire Wire Line
	27750 1375 27750 1125
Wire Wire Line
	27750 1125 26975 1125
Connection ~ 27750 1375
Wire Wire Line
	27750 1375 27800 1375
Text GLabel 26975 1125 0    60   Output ~ 0
~EIO_IN
Wire Wire Line
	27625 1475 27625 1675
Connection ~ 27625 1475
$Comp
L Device:C_Small C15
U 1 1 61DA6F98
P 27525 1675
F 0 "C15" V 27550 1500 50  0000 C CNN
F 1 "47pf" V 27475 1475 50  0000 C CNN
F 2 "" H 27525 1675 50  0001 C CNN
F 3 "~" H 27525 1675 50  0001 C CNN
	1    27525 1675
	0    -1   -1   0   
$EndComp
Text GLabel 27325 1675 0    60   Input ~ 0
GND
Wire Wire Line
	27325 1675 27425 1675
Wire Wire Line
	27600 5525 27600 5725
$Comp
L Device:C_Small C19
U 1 1 61ED89F1
P 27500 5725
F 0 "C19" V 27525 5550 50  0000 C CNN
F 1 "47pf" V 27450 5525 50  0000 C CNN
F 2 "" H 27500 5725 50  0001 C CNN
F 3 "~" H 27500 5725 50  0001 C CNN
	1    27500 5725
	0    -1   -1   0   
$EndComp
Text GLabel 27300 5725 0    60   Input ~ 0
GND
Wire Wire Line
	27300 5725 27400 5725
Text Notes 23525 3000 2    197  ~ 0
PIA
Text Notes 23450 6950 2    197  ~ 0
VIA
Text GLabel 22525 7900 0    60   Input ~ 0
~IO
Wire Wire Line
	22375 7800 22525 7800
Text GLabel 5225 10150 0    60   Input ~ 0
BA6
Text GLabel 5225 10250 0    60   Input ~ 0
X8XX
Text GLabel 5225 10350 0    60   Input ~ 0
X8XX
Text GLabel 6425 10250 2    60   Output ~ 0
VIA-CS1
Text GLabel 22375 7800 0    60   Input ~ 0
VIA-CS1
Text GLabel 6850 8475 2    60   Output ~ 0
~IO
Wire Wire Line
	6650 8200 6675 8200
Wire Wire Line
	6650 8300 6725 8300
Wire Wire Line
	6675 8200 6675 8475
Wire Wire Line
	6675 8475 6850 8475
Connection ~ 6675 8200
Wire Wire Line
	6675 8200 6725 8200
$Comp
L Device:Speaker MT1
U 1 1 62575BCE
P 23950 9500
F 0 "MT1" H 24120 9496 50  0000 L CNN
F 1 "Piezo" H 24120 9405 50  0000 L CNN
F 2 "" H 23950 9300 50  0001 C CNN
F 3 "~" H 23940 9450 50  0001 C CNN
	1    23950 9500
	1    0    0    -1  
$EndComp
Wire Wire Line
	23400 9500 23750 9500
Text GLabel 23750 9600 0    60   Input ~ 0
GND
$Comp
L 74xx:74LS145 UD9
U 1 1 62618271
P 26100 11350
F 0 "UD9" H 26100 11375 50  0000 C CNN
F 1 "74LS145" H 26050 11300 50  0000 C CNN
F 2 "" H 26100 11350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS145" H 26100 11350 50  0001 C CNN
	1    26100 11350
	1    0    0    -1  
$EndComp
Text GLabel 23975 10950 2    61   Output ~ 0
KEYA
Text GLabel 23975 11050 2    61   Output ~ 0
KEYB
Text GLabel 23975 11150 2    61   Output ~ 0
KEYC
Text GLabel 23975 11250 2    61   Output ~ 0
KEYD
Text GLabel 25600 10950 0    61   Input ~ 0
KEYA
Text GLabel 25600 11050 0    61   Input ~ 0
KEYB
Text GLabel 25600 11150 0    61   Input ~ 0
KEYC
Text GLabel 25600 11250 0    61   Input ~ 0
KEYD
Text GLabel 26100 12150 3    60   Input ~ 0
GND
Text GLabel 26100 10650 1    60   Input ~ 0
5V
Text Notes 23450 11450 2    197  ~ 0
PIA
Text Notes 25825 11750 0    61   ~ 0
BCD TO\nDECIMAL\nDECODER
Wire Wire Line
	23975 12150 24925 12150
Wire Wire Line
	23975 12550 25325 12550
Wire Wire Line
	23975 12350 25125 12350
Wire Wire Line
	23975 12250 25025 12250
Wire Wire Line
	23975 12050 24825 12050
Wire Wire Line
	23975 11950 24725 11950
Text Notes 3525 5025 2    157  ~ 31
CPU
Wire Wire Line
	3225 1525 3250 1525
Text GLabel 3850 1525 2    60   Output ~ 0
~DATA_READ
Wire Wire Line
	3250 1775 3250 1525
Wire Wire Line
	4925 2225 4925 3350
Connection ~ 3250 1525
Wire Wire Line
	3250 1525 3850 1525
Connection ~ 3250 1975
Text GLabel 3850 1875 2    60   Output ~ 0
~DATA_WRITE
Wire Wire Line
	2525 5050 2525 5175
Wire Wire Line
	2525 5175 2650 5175
Text Notes 4300 1150 2    157  ~ 31
MEMORY LOGIC
Text GLabel 4850 3450 0    60   Input ~ 0
~DATA_READ
Text GLabel 4875 2225 0    60   Input ~ 0
~DATA_WRITE
Wire Wire Line
	5000 2325 5000 3450
$Comp
L Device:R R14
U 1 1 5EBC500D
P 1475 4800
F 0 "R14" V 1550 4725 50  0000 L CNN
F 1 "100" V 1475 4725 50  0000 L CNN
F 2 "" V 1405 4800 50  0001 C CNN
F 3 "~" H 1475 4800 50  0001 C CNN
	1    1475 4800
	1    0    0    -1  
$EndComp
Text GLabel 1475 4650 1    60   Input ~ 0
5V
Wire Wire Line
	1475 4950 1475 5275
Wire Wire Line
	1475 5275 1775 5275
Wire Wire Line
	1775 5275 1775 7225
Connection ~ 1775 7225
Wire Wire Line
	1775 7225 2600 7225
Text GLabel 7250 9450 2    60   Output ~ 0
SEL-EDROM
$Comp
L Device:R R16
U 1 1 5EC94E55
P 5200 9250
F 0 "R16" V 5275 9250 50  0000 C CNN
F 1 "1K" V 5100 9250 50  0000 C CNN
F 2 "" V 5130 9250 50  0001 C CNN
F 3 "~" H 5200 9250 50  0001 C CNN
	1    5200 9250
	0    -1   -1   0   
$EndComp
Text GLabel 5050 9250 0    60   Input ~ 0
5V
Text GLabel 5650 9550 0    60   Input ~ 0
X8XX
Text GLabel 5650 9650 0    60   Input ~ 0
X8XX
Text GLabel 5650 9350 0    60   Input ~ 0
~SELE
Text GLabel 5650 9450 0    60   Input ~ 0
~SELE
Wire Wire Line
	6650 9550 6650 9450
Wire Wire Line
	6650 9350 6650 9450
Connection ~ 6650 9450
Wire Wire Line
	6650 8775 7275 8775
Connection ~ 27600 5525
Text Notes 31675 1300 2    157  ~ 31
PORTS
$Comp
L 74xx:74LS04 UD13
U 1 1 5EAD3057
P 21200 20650
F 0 "UD13" H 21150 20650 50  0000 C CNN
F 1 "74LS04" H 21275 20500 50  0000 C CNN
F 2 "" H 21200 20650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 21200 20650 50  0001 C CNN
	1    21200 20650
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 UD13
U 2 1 5EAD71E2
P 7250 14650
F 0 "UD13" H 7200 14650 50  0000 C CNN
F 1 "74LS04" H 7325 14500 50  0000 C CNN
F 2 "" H 7250 14650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 7250 14650 50  0001 C CNN
	2    7250 14650
	-1   0    0    1   
$EndComp
$Comp
L 74xx:74LS04 UD13
U 3 1 5EAD8E27
P 5450 10825
F 0 "UD13" H 5400 10825 50  0000 C CNN
F 1 "74LS04" H 5525 10700 50  0000 C CNN
F 2 "" H 5450 10825 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 5450 10825 50  0001 C CNN
	3    5450 10825
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 UD13
U 5 1 5EADCD05
P 1775 15600
F 0 "UD13" H 1750 15600 50  0000 C CNN
F 1 "74LS04" H 1850 15450 50  0000 C CNN
F 2 "" H 1775 15600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 1775 15600 50  0001 C CNN
	5    1775 15600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 UD13
U 7 1 5EAE0DCD
P 25050 22100
F 0 "UD13" H 24925 22175 50  0000 L CNN
F 1 "74LS04" H 24925 22075 50  0000 L CNN
F 2 "" H 25050 22100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 25050 22100 50  0001 C CNN
	7    25050 22100
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4050 UB10
U 7 1 5EB4ECB8
P 21075 22100
F 0 "UB10" H 20950 22175 50  0000 L CNN
F 1 "4050" H 21000 22075 50  0000 L CNN
F 2 "" H 21075 22100 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/intersil/documents/cd40/cd4050bms.pdf" H 21075 22100 50  0001 C CNN
	7    21075 22100
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4050 UB11
U 7 1 5EE43C96
P 21500 22100
F 0 "UB11" H 21375 22175 50  0000 L CNN
F 1 "4050" H 21425 22075 50  0000 L CNN
F 2 "" H 21500 22100 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/intersil/documents/cd40/cd4050bms.pdf" H 21500 22100 50  0001 C CNN
	7    21500 22100
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4050 UB13
U 6 1 5EE6906A
P 21200 21300
F 0 "UB13" H 21175 21300 50  0000 C CNN
F 1 "4050" H 21275 21175 50  0000 C CNN
F 2 "" H 21200 21300 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/intersil/documents/cd40/cd4050bms.pdf" H 21200 21300 50  0001 C CNN
	6    21200 21300
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4050 UB13
U 7 1 5EE69070
P 21925 22100
F 0 "UB13" H 21800 22175 50  0000 L CNN
F 1 "4050" H 21850 22075 50  0000 L CNN
F 2 "" H 21925 22100 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/intersil/documents/cd40/cd4050bms.pdf" H 21925 22100 50  0001 C CNN
	7    21925 22100
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 606DB96E
P 1600 11425
F 0 "Y1" H 1600 11575 50  0000 C CNN
F 1 "16 MHz" H 1825 11375 50  0000 C CNN
F 2 "" H 1600 11425 50  0001 C CNN
F 3 "~" H 1600 11425 50  0001 C CNN
	1    1600 11425
	1    0    0    -1  
$EndComp
$Comp
L Device:R R25
U 1 1 606DC1AB
P 1600 11675
F 0 "R25" V 1525 11675 50  0000 C CNN
F 1 "2.2K" V 1675 11675 50  0000 C CNN
F 2 "" V 1530 11675 50  0001 C CNN
F 3 "~" H 1600 11675 50  0001 C CNN
	1    1600 11675
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C55
U 1 1 606DC756
P 1125 12100
F 0 "C55" H 1050 12025 50  0000 C CNN
F 1 "100pf" H 1025 12175 50  0000 C CNN
F 2 "" H 1125 12100 50  0001 C CNN
F 3 "~" H 1125 12100 50  0001 C CNN
	1    1125 12100
	-1   0    0    1   
$EndComp
$Comp
L Device:R R24
U 1 1 606DCBF8
P 1400 12100
F 0 "R24" H 1275 12125 50  0000 C CNN
F 1 "4.7K" H 1250 12200 50  0000 C CNN
F 2 "" V 1330 12100 50  0001 C CNN
F 3 "~" H 1400 12100 50  0001 C CNN
	1    1400 12100
	-1   0    0    1   
$EndComp
$Comp
L 74xx1:74LS02 UD14
U 1 1 606DD640
P 24125 20875
F 0 "UD14" H 24125 20875 50  0000 C CNN
F 1 "74LS02" H 24125 20675 50  0000 C CNN
F 2 "" H 24125 20875 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 24125 20875 50  0001 C CNN
	1    24125 20875
	1    0    0    -1  
$EndComp
$Comp
L 74xx1:74LS02 UD14
U 2 1 606E168E
P 2000 3375
F 0 "UD14" H 2025 3375 50  0000 C CNN
F 1 "74LS02" H 2000 3175 50  0000 C CNN
F 2 "" H 2000 3375 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 2000 3375 50  0001 C CNN
	2    2000 3375
	1    0    0    -1  
$EndComp
$Comp
L 74xx1:74LS02 UD14
U 3 1 606E3DAB
P 7550 17350
F 0 "UD14" H 7575 17350 50  0000 C CNN
F 1 "74LS02" H 7575 17550 50  0000 C CNN
F 2 "" H 7550 17350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 7550 17350 50  0001 C CNN
	3    7550 17350
	1    0    0    1   
$EndComp
$Comp
L 74xx1:74LS02 UD14
U 4 1 606E5E5B
P 24125 21300
F 0 "UD14" H 24150 21300 50  0000 C CNN
F 1 "74LS02" H 24125 21100 50  0000 C CNN
F 2 "" H 24125 21300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 24125 21300 50  0001 C CNN
	4    24125 21300
	1    0    0    -1  
$EndComp
$Comp
L 74xx1:74LS02 UD14
U 5 1 606E7F8D
P 25500 22100
F 0 "UD14" H 25425 22150 50  0000 L CNN
F 1 "74LS02" H 25375 22075 50  0000 L CNN
F 2 "" H 25500 22100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 25500 22100 50  0001 C CNN
	5    25500 22100
	1    0    0    -1  
$EndComp
$Comp
L 74xx1:7400 UF16
U 1 1 606F1823
P 1900 11975
F 0 "UF16" H 1875 11975 50  0000 C CNN
F 1 "7400" H 1850 11875 50  0000 C CNN
F 2 "" H 1900 11975 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn7400" H 1900 11975 50  0001 C CNN
	1    1900 11975
	1    0    0    -1  
$EndComp
$Comp
L 74xx1:7400 UF16
U 2 1 606F1ACE
P 2725 11975
F 0 "UF16" H 2700 11975 50  0000 C CNN
F 1 "7400" H 2700 11875 50  0000 C CNN
F 2 "" H 2725 11975 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn7400" H 2725 11975 50  0001 C CNN
	2    2725 11975
	1    0    0    -1  
$EndComp
$Comp
L 74xx1:7400 UF16
U 3 1 606F43A0
P 1675 10425
F 0 "UF16" H 1650 10425 50  0000 C CNN
F 1 "7400" H 1650 10325 50  0000 C CNN
F 2 "" H 1675 10425 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn7400" H 1675 10425 50  0001 C CNN
	3    1675 10425
	1    0    0    -1  
$EndComp
$Comp
L 74xx1:7400 UF16
U 4 1 606F6B58
P 1675 10850
F 0 "UF16" H 1650 10850 50  0000 C CNN
F 1 "7400" H 1625 10750 50  0000 C CNN
F 2 "" H 1675 10850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn7400" H 1675 10850 50  0001 C CNN
	4    1675 10850
	1    0    0    -1  
$EndComp
$Comp
L 74xx1:7400 UF16
U 5 1 606F8F1C
P 3175 10875
F 0 "UF16" H 3050 10925 50  0000 L CNN
F 1 "7400" H 3075 10825 50  0000 L CNN
F 2 "" H 3175 10875 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn7400" H 3175 10875 50  0001 C CNN
	5    3175 10875
	1    0    0    -1  
$EndComp
Wire Wire Line
	1125 11425 1125 11675
Wire Wire Line
	1125 11425 1450 11425
Wire Wire Line
	1450 11675 1125 11675
Connection ~ 1125 11675
Wire Wire Line
	1125 11675 1125 11875
Wire Wire Line
	1600 11875 1575 11875
Connection ~ 1125 11875
Wire Wire Line
	1125 11875 1125 12000
Wire Wire Line
	1600 12075 1575 12075
Wire Wire Line
	1575 12075 1575 11875
Connection ~ 1575 11875
Wire Wire Line
	1575 11875 1400 11875
Wire Wire Line
	1400 11950 1400 11875
Connection ~ 1400 11875
Wire Wire Line
	1400 11875 1125 11875
Wire Wire Line
	1125 12200 1125 12250
Wire Wire Line
	1125 12250 1400 12250
Text GLabel 1400 12325 3    60   Input ~ 0
GND
Wire Wire Line
	1400 12250 1400 12325
Connection ~ 1400 12250
Wire Wire Line
	2200 11975 2200 11675
Wire Wire Line
	2200 11425 1750 11425
Wire Wire Line
	1750 11675 2200 11675
Connection ~ 2200 11675
Wire Wire Line
	2200 11675 2200 11425
$Comp
L Device:C_Small C54
U 1 1 608F7175
P 2200 12125
F 0 "C54" H 2275 12200 50  0000 C CNN
F 1 "220pf" H 2075 12200 50  0000 C CNN
F 2 "" H 2200 12125 50  0001 C CNN
F 3 "~" H 2200 12125 50  0001 C CNN
	1    2200 12125
	-1   0    0    1   
$EndComp
Wire Wire Line
	2200 12025 2200 11975
Connection ~ 2200 11975
Text GLabel 2200 12325 3    60   Input ~ 0
GND
Wire Wire Line
	2200 12225 2200 12325
Wire Wire Line
	2200 11975 2425 11975
Wire Wire Line
	2425 11975 2425 11875
Wire Wire Line
	2425 12075 2425 11975
Connection ~ 2425 11975
$Comp
L device1:Ferrite_Bead FB24
U 1 1 609A1C87
P 3400 10375
F 0 "FB24" V 3275 10400 50  0000 C CNN
F 1 "fb" V 3400 10375 50  0000 C CNN
F 2 "" V 3330 10375 50  0001 C CNN
F 3 "" H 3400 10375 50  0001 C CNN
	1    3400 10375
	0    1    1    0   
$EndComp
$Comp
L Device:R R26
U 1 1 609A30A7
P 3475 11975
F 0 "R26" V 3400 11975 50  0000 C CNN
F 1 "47" V 3550 11975 50  0000 C CNN
F 2 "" V 3405 11975 50  0001 C CNN
F 3 "~" H 3475 11975 50  0001 C CNN
	1    3475 11975
	0    1    1    0   
$EndComp
Text GLabel 3775 11975 2    60   Output ~ 0
16MHz
Text GLabel 1375 10325 0    60   Input ~ 0
GND
Text GLabel 1375 10525 0    60   Input ~ 0
GND
NoConn ~ 1975 10425
Text GLabel 1375 10750 0    60   Input ~ 0
GND
Text GLabel 1375 10950 0    60   Input ~ 0
GND
Text Notes 3250 10150 2    157  ~ 31
MASTER TIMING
$Comp
L Device:C_Small C56
U 1 1 609FA523
P 2475 10575
F 0 "C56" H 2400 10500 50  0000 C CNN
F 1 ".047" H 2400 10650 50  0000 C CNN
F 2 "" H 2475 10575 50  0001 C CNN
F 3 "~" H 2475 10575 50  0001 C CNN
	1    2475 10575
	-1   0    0    1   
$EndComp
NoConn ~ 1975 10850
$Comp
L Device:L_Small L2
U 1 1 60B71CBA
P 3650 10375
F 0 "L2" V 3600 10375 50  0000 C CNN
F 1 "2.2uH" V 3725 10375 50  0000 C CNN
F 2 "" H 3650 10375 50  0001 C CNN
F 3 "~" H 3650 10375 50  0001 C CNN
	1    3650 10375
	0    1    1    0   
$EndComp
Text GLabel 2475 10800 3    60   Input ~ 0
GND
Wire Wire Line
	2475 10800 2475 10750
Wire Wire Line
	2475 10750 2725 10750
Wire Wire Line
	2725 10750 2725 10675
Connection ~ 2475 10750
Wire Wire Line
	2475 10750 2475 10675
$Comp
L Device:C_Small C57
U 1 1 60BCA886
P 2725 10575
F 0 "C57" H 2675 10500 50  0000 C CNN
F 1 ".033" H 2625 10650 50  0000 C CNN
F 2 "" H 2725 10575 50  0001 C CNN
F 3 "~" H 2725 10575 50  0001 C CNN
	1    2725 10575
	-1   0    0    1   
$EndComp
Wire Wire Line
	2475 10475 2475 10375
Wire Wire Line
	2475 10375 2725 10375
Wire Wire Line
	2725 10475 2725 10375
Connection ~ 2725 10375
Connection ~ 3175 10375
Wire Wire Line
	3175 10375 3250 10375
Text GLabel 3825 10375 2    60   Input ~ 0
5V
Wire Wire Line
	3750 10375 3825 10375
Text GLabel 3175 11375 3    60   Input ~ 0
GND
Wire Wire Line
	2725 10375 3175 10375
$Comp
L device1:Ferrite_Bead FB25
U 1 1 60E9C6D8
P 3175 11975
F 0 "FB25" V 3050 12000 50  0000 C CNN
F 1 "fb" V 3175 11975 50  0000 C CNN
F 2 "" V 3105 11975 50  0001 C CNN
F 3 "" H 3175 11975 50  0001 C CNN
	1    3175 11975
	0    1    1    0   
$EndComp
$Comp
L 74xx:74LS393 UE18
U 1 1 6102F5D5
P 3325 12450
F 0 "UE18" H 3300 12475 50  0000 C CNN
F 1 "74LS393" H 3300 12350 50  0000 C CNN
F 2 "" H 3325 12450 50  0001 C CNN
F 3 "74xx\\74LS393.pdf" H 3325 12450 50  0001 C CNN
	1    3325 12450
	1    0    0    -1  
$EndComp
Text GLabel 2825 12350 0    60   Input ~ 0
16MHz
Text GLabel 2825 12650 0    60   Input ~ 0
GND
Text GLabel 3825 12350 2    60   Output ~ 0
8MHz
Text GLabel 3825 12450 2    60   Output ~ 0
4MHz
Text GLabel 3825 12550 2    60   Output ~ 0
2MHz
Text GLabel 3825 12650 2    60   Output ~ 0
1MHz
$Comp
L 74xx:74LS10 UC14
U 1 1 6116BC1F
P 9575 16750
F 0 "UC14" H 9575 16750 50  0000 C CNN
F 1 "74LS10" H 9550 16550 50  0000 C CNN
F 2 "" H 9575 16750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS10" H 9575 16750 50  0001 C CNN
	1    9575 16750
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS10 UC14
U 2 1 6117081E
P 3400 15050
F 0 "UC14" H 3400 15050 50  0000 C CNN
F 1 "74LS10" H 3375 14850 50  0000 C CNN
F 2 "" H 3400 15050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS10" H 3400 15050 50  0001 C CNN
	2    3400 15050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS10 UC14
U 4 1 61176C59
P 25975 22100
F 0 "UC14" H 25850 22150 50  0000 L CNN
F 1 "74LS10" H 25825 22050 50  0000 L CNN
F 2 "" H 25975 22100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS10" H 25975 22100 50  0001 C CNN
	4    25975 22100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 UD12
U 1 1 61282470
P 23375 20325
F 0 "UD12" H 23350 20325 50  0000 C CNN
F 1 "74LS04" H 23450 20175 50  0000 C CNN
F 2 "" H 23375 20325 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 23375 20325 50  0001 C CNN
	1    23375 20325
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 UD12
U 2 1 61284E9D
P 23375 20650
F 0 "UD12" H 23350 20650 50  0000 C CNN
F 1 "74LS04" H 23450 20500 50  0000 C CNN
F 2 "" H 23375 20650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 23375 20650 50  0001 C CNN
	2    23375 20650
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 UD12
U 3 1 612883FC
P 23375 20975
F 0 "UD12" H 23350 20975 50  0000 C CNN
F 1 "74LS04" H 23425 20800 50  0000 C CNN
F 2 "" H 23375 20975 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 23375 20975 50  0001 C CNN
	3    23375 20975
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 UD12
U 4 1 6128AF7D
P 2400 14475
F 0 "UD12" H 2375 14475 50  0000 C CNN
F 1 "74LS04" H 2450 14300 50  0000 C CNN
F 2 "" H 2400 14475 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 2400 14475 50  0001 C CNN
	4    2400 14475
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 UD12
U 5 1 6128DED2
P 1650 14475
F 0 "UD12" H 1625 14475 50  0000 C CNN
F 1 "74LS04" H 1675 14300 50  0000 C CNN
F 2 "" H 1650 14475 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 1650 14475 50  0001 C CNN
	5    1650 14475
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 UD12
U 6 1 61290B2B
P 23375 21300
F 0 "UD12" H 23350 21300 50  0000 C CNN
F 1 "74LS04" H 23400 21125 50  0000 C CNN
F 2 "" H 23375 21300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 23375 21300 50  0001 C CNN
	6    23375 21300
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 UD12
U 7 1 612938B8
P 24575 22100
F 0 "UD12" H 24450 22175 50  0000 L CNN
F 1 "74LS04" H 24450 22050 50  0000 L CNN
F 2 "" H 24575 22100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 24575 22100 50  0001 C CNN
	7    24575 22100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1275 15600 1475 15600
Text GLabel 1250 14750 0    60   Input ~ 0
2MHz
Wire Wire Line
	1250 14750 3700 14750
Text GLabel 3700 14750 2    60   Output ~ 0
RWG
Wire Wire Line
	1950 14475 2025 14475
Text Notes 3700 14900 0    61   ~ 0
2MHz, seems to be a late fix
$Comp
L 74xx:74LS393 UE18
U 3 1 615FB791
P 27000 22100
F 0 "UE18" H 26900 22150 50  0000 L CNN
F 1 "74LS393" H 26825 22075 50  0000 L CNN
F 2 "" H 27000 22100 50  0001 C CNN
F 3 "74xx\\74LS393.pdf" H 27000 22100 50  0001 C CNN
	3    27000 22100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS393 UE18
U 2 1 61600A81
P 25150 21125
F 0 "UE18" H 25125 21125 50  0000 C CNN
F 1 "74LS393" H 25125 21025 50  0000 C CNN
F 2 "" H 25150 21125 50  0001 C CNN
F 3 "74xx\\74LS393.pdf" H 25150 21125 50  0001 C CNN
	2    25150 21125
	1    0    0    -1  
$EndComp
$Comp
L device1:Ferrite_Bead FB26
U 1 1 6162F330
P 27000 21450
F 0 "FB26" V 26850 21475 50  0000 C CNN
F 1 "fb" V 27000 21450 50  0000 C CNN
F 2 "" V 26930 21450 50  0001 C CNN
F 3 "" H 27000 21450 50  0001 C CNN
	1    27000 21450
	-1   0    0    1   
$EndComp
Wire Wire Line
	27000 21600 27225 21600
Text GLabel 27000 21300 1    60   Input ~ 0
5V
Wire Wire Line
	26675 21600 27000 21600
Connection ~ 27000 21600
$Comp
L Device:C_Small C28
U 1 1 6168C6E3
P 26675 21850
F 0 "C28" H 26750 21775 50  0000 C CNN
F 1 ".1" H 26775 21925 50  0000 C CNN
F 2 "" H 26675 21850 50  0001 C CNN
F 3 "~" H 26675 21850 50  0001 C CNN
	1    26675 21850
	-1   0    0    1   
$EndComp
Text GLabel 27425 22600 2    60   Input ~ 0
GND
Text GLabel 1200 3475 0    60   Input ~ 0
BA14
Wire Wire Line
	1700 3575 1700 3475
Text GLabel 1700 3275 0    60   Input ~ 0
GND
$Comp
L 74xx:74LS10 UC13
U 1 1 618C8723
P 6125 11050
F 0 "UC13" H 6125 11050 50  0000 C CNN
F 1 "74LS10" H 6125 10850 50  0000 C CNN
F 2 "" H 6125 11050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS10" H 6125 11050 50  0001 C CNN
	1    6125 11050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS10 UC13
U 2 1 618CBA37
P 21900 21300
F 0 "UC13" H 21900 21300 50  0000 C CNN
F 1 "74LS10" H 21875 21100 50  0000 C CNN
F 2 "" H 21900 21300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS10" H 21900 21300 50  0001 C CNN
	2    21900 21300
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS10 UC13
U 3 1 618CE4BD
P 2925 3475
F 0 "UC13" H 2925 3475 50  0000 C CNN
F 1 "74LS10" H 2925 3275 50  0000 C CNN
F 2 "" H 2925 3475 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS10" H 2925 3475 50  0001 C CNN
	3    2925 3475
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS10 UC13
U 4 1 618D0DDB
P 23650 22100
F 0 "UC13" H 23525 22150 50  0000 L CNN
F 1 "74LS10" H 23525 22050 50  0000 L CNN
F 2 "" H 23650 22100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS10" H 23650 22100 50  0001 C CNN
	4    23650 22100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 3375 2625 3375
Connection ~ 1700 3475
$Comp
L PET-BB-rescue:CONN_02X02-conn1-PET-Reloaded-rescue-PET-CR-rescue W4
U 1 1 61701154
P 1450 3525
F 0 "W4" H 1450 3675 50  0000 C CNN
F 1 "Y/Z" H 1450 3375 50  0000 C CNN
F 2 "" H 1450 2325 50  0001 C CNN
F 3 "" H 1450 2325 50  0001 C CNN
	1    1450 3525
	-1   0    0    -1  
$EndComp
Text GLabel 1200 3575 0    60   Input ~ 0
GND
Text GLabel 1200 3900 0    60   Input ~ 0
~BA15
Wire Wire Line
	1200 3900 2350 3900
Wire Wire Line
	2350 3900 2350 3475
Wire Wire Line
	2350 3475 2625 3475
Text GLabel 1200 4100 0    60   Input ~ 0
B02
Wire Wire Line
	1200 4100 2450 4100
Wire Wire Line
	2450 4100 2450 3575
Wire Wire Line
	2450 3575 2625 3575
Text GLabel 3225 3475 2    60   Output ~ 0
~RAMON
Text Notes 1250 3775 0    50   ~ 0
16 or 32K RAM OPTION?
NoConn ~ 2600 7425
Text GLabel 3400 15950 0    60   Input ~ 0
5V
$Comp
L Device:R R25
U 1 1 61B317E0
P 3550 15950
F 0 "R25" V 3650 15950 50  0000 C CNN
F 1 "1K" V 3450 15950 50  0000 C CNN
F 2 "" V 3480 15950 50  0001 C CNN
F 3 "~" H 3550 15950 50  0001 C CNN
	1    3550 15950
	0    -1   -1   0   
$EndComp
Text GLabel 3700 15950 2    60   Output ~ 0
~INIT
$Comp
L 74xx:74LS157 UE11
U 1 1 61B94B64
P 11025 10500
F 0 "UE11" H 11025 10575 50  0000 C CNN
F 1 "74LS157" H 11075 10375 50  0000 C CNN
F 2 "" H 11025 10500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 11025 10500 50  0001 C CNN
	1    11025 10500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS157 UE10
U 1 1 61B97806
P 11025 12575
F 0 "UE10" H 11025 12650 50  0000 C CNN
F 1 "74LS157" H 11075 12450 50  0000 C CNN
F 2 "" H 11025 12575 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 11025 12575 50  0001 C CNN
	1    11025 12575
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS157 UE9
U 1 1 61B98175
P 11025 14650
F 0 "UE9" H 11025 14725 50  0000 C CNN
F 1 "74LS157" H 11075 14525 50  0000 C CNN
F 2 "" H 11025 14650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 11025 14650 50  0001 C CNN
	1    11025 14650
	1    0    0    -1  
$EndComp
Text GLabel 11525 9900 2    60   Output ~ 0
SA0
Text GLabel 11525 10200 2    60   Output ~ 0
SA1
NoConn ~ 11525 10500
NoConn ~ 11525 10800
Text GLabel 11525 11975 2    60   Output ~ 0
SA4
Text GLabel 11525 12275 2    60   Output ~ 0
SA5
Text GLabel 11525 12575 2    60   Output ~ 0
SA2
Text GLabel 11525 12875 2    60   Output ~ 0
SA3
Text GLabel 11525 14050 2    60   Output ~ 0
SA8
Text GLabel 11525 14350 2    60   Output ~ 0
SA9
Text GLabel 11525 14650 2    60   Output ~ 0
SA6
Text GLabel 11525 14950 2    60   Output ~ 0
SA7
Text GLabel 10525 11200 0    60   Input ~ 0
GND
Text GLabel 10525 13275 0    60   Input ~ 0
GND
Text GLabel 10525 15350 0    60   Input ~ 0
GND
Text GLabel 10525 15250 0    60   Input ~ 0
CLK1B
Text GLabel 10525 13175 0    60   Input ~ 0
CLK1B
Text GLabel 10525 11100 0    60   Input ~ 0
CLK1B
Text GLabel 10525 9900 0    60   Input ~ 0
TA0
Text GLabel 10525 10200 0    60   Input ~ 0
TA0
NoConn ~ 10525 10500
NoConn ~ 10525 10900
NoConn ~ 10525 10800
NoConn ~ 10525 10600
Text Notes 11200 9425 2    157  ~ 31
40/80 JUMPERS
$Comp
L Connector_Generic:Conn_01x04 BA2
U 1 1 61D10A3C
P 9750 10000
F 0 "BA2" H 9750 10200 50  0000 C CNN
F 1 "BA" V 9750 9925 50  0000 C CNN
F 2 "" H 9750 10000 50  0001 C CNN
F 3 "~" H 9750 10000 50  0001 C CNN
	1    9750 10000
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 BA4
U 1 1 61D148E3
P 9725 12275
F 0 "BA4" H 9725 12700 50  0000 C CNN
F 1 "BA" V 9725 12225 50  0000 C CNN
F 2 "" H 9725 12275 50  0001 C CNN
F 3 "~" H 9725 12275 50  0001 C CNN
	1    9725 12275
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 BA6
U 1 1 61D182BB
P 9725 14350
F 0 "BA6" H 9725 14750 50  0000 C CNN
F 1 "BA" V 9750 14275 50  0000 C CNN
F 2 "" H 9725 14350 50  0001 C CNN
F 3 "~" H 9725 14350 50  0001 C CNN
	1    9725 14350
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 BA5
U 1 1 61D1956C
P 9500 14350
F 0 "BA5" H 9450 14750 50  0000 L CNN
F 1 "BA" V 9525 14050 50  0000 L CNN
F 2 "" H 9500 14350 50  0001 C CNN
F 3 "~" H 9500 14350 50  0001 C CNN
	1    9500 14350
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 BA3
U 1 1 61D1A2B6
P 9525 12275
F 0 "BA3" H 9500 12700 50  0000 L CNN
F 1 "BA" V 9525 12000 50  0000 L CNN
F 2 "" H 9525 12275 50  0001 C CNN
F 3 "~" H 9525 12275 50  0001 C CNN
	1    9525 12275
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 BA1
U 1 1 61D1C081
P 9550 10000
F 0 "BA1" H 9550 10200 50  0000 C CNN
F 1 "BA" V 9550 9925 50  0000 C CNN
F 2 "" H 9550 10000 50  0001 C CNN
F 3 "~" H 9550 10000 50  0001 C CNN
	1    9550 10000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10525 10000 9950 10000
Wire Wire Line
	9950 10000 9950 9900
Connection ~ 9950 10000
Wire Wire Line
	9950 10200 9950 10300
Wire Wire Line
	9950 10300 10525 10300
Wire Wire Line
	9950 10100 9950 10200
Connection ~ 9950 10200
Text GLabel 9250 9900 0    60   Input ~ 0
BA0
Wire Wire Line
	9250 9900 9350 9900
Text GLabel 9250 10000 0    60   Input ~ 0
BA1
Wire Wire Line
	9250 10000 9300 10000
Wire Wire Line
	9300 10000 9300 10100
Wire Wire Line
	9300 10100 9350 10100
Connection ~ 9300 10000
Wire Wire Line
	9300 10000 9350 10000
Text GLabel 9250 10200 0    60   Input ~ 0
BA2
Wire Wire Line
	9250 10200 9350 10200
Text GLabel 9225 11975 0    60   Input ~ 0
BA2
Wire Wire Line
	9225 11975 9325 11975
Text GLabel 9225 12075 0    60   Input ~ 0
BA3
Wire Wire Line
	9225 12075 9250 12075
Wire Wire Line
	9250 12075 9250 12175
Wire Wire Line
	9250 12175 9325 12175
Connection ~ 9250 12075
Wire Wire Line
	9250 12075 9325 12075
Text GLabel 9225 12275 0    60   Input ~ 0
BA4
Wire Wire Line
	9225 12275 9250 12275
Wire Wire Line
	9250 12275 9250 12375
Wire Wire Line
	9250 12375 9325 12375
Connection ~ 9250 12275
Wire Wire Line
	9250 12275 9325 12275
Text GLabel 9225 12475 0    60   Input ~ 0
BA5
Wire Wire Line
	9225 12475 9250 12475
Wire Wire Line
	9250 12475 9250 12575
Wire Wire Line
	9250 12575 9325 12575
Connection ~ 9250 12475
Wire Wire Line
	9250 12475 9325 12475
Text GLabel 9225 12675 0    60   Input ~ 0
BA6
Wire Wire Line
	9225 12675 9325 12675
Text GLabel 9200 14050 0    60   Input ~ 0
BA6
Wire Wire Line
	9200 14050 9300 14050
Text GLabel 9200 14150 0    60   Input ~ 0
BA7
Wire Wire Line
	9200 14150 9225 14150
Wire Wire Line
	9225 14150 9225 14250
Wire Wire Line
	9225 14250 9300 14250
Connection ~ 9225 14150
Wire Wire Line
	9225 14150 9300 14150
Text GLabel 9200 14350 0    60   Input ~ 0
BA8
Wire Wire Line
	9200 14350 9225 14350
Wire Wire Line
	9225 14350 9225 14450
Wire Wire Line
	9225 14450 9300 14450
Connection ~ 9225 14350
Wire Wire Line
	9225 14350 9300 14350
Text GLabel 9200 14550 0    60   Input ~ 0
BA9
Wire Wire Line
	9200 14550 9225 14550
Wire Wire Line
	9225 14550 9225 14650
Wire Wire Line
	9225 14650 9300 14650
Connection ~ 9225 14550
Wire Wire Line
	9225 14550 9300 14550
Text GLabel 9200 14750 0    60   Input ~ 0
BA10
Wire Wire Line
	9200 14750 9300 14750
Text GLabel 10525 12575 0    60   Input ~ 0
TA2
Text GLabel 10525 12875 0    60   Input ~ 0
TA3
Text GLabel 10525 12275 0    60   Input ~ 0
TA5
Text GLabel 10525 11975 0    60   Input ~ 0
TA4
Wire Wire Line
	9925 11950 9925 11975
Connection ~ 9925 11975
Wire Wire Line
	9925 11975 9925 12075
Wire Wire Line
	9925 12175 9925 12275
Wire Wire Line
	9925 12375 9925 12475
Wire Wire Line
	9925 12575 9925 12675
Wire Wire Line
	9925 12075 10150 12075
Wire Wire Line
	10150 12075 10150 12675
Wire Wire Line
	10150 12675 10525 12675
Connection ~ 9925 12075
Wire Wire Line
	9925 12275 10075 12275
Wire Wire Line
	10075 12275 10075 12975
Wire Wire Line
	10075 12975 10525 12975
Connection ~ 9925 12275
Wire Wire Line
	9925 12375 10225 12375
Wire Wire Line
	10225 12375 10225 12075
Wire Wire Line
	10225 12075 10525 12075
Connection ~ 9925 12375
Wire Wire Line
	9925 12575 10275 12575
Wire Wire Line
	10275 12575 10275 12375
Wire Wire Line
	10275 12375 10525 12375
Connection ~ 9925 12575
Wire Wire Line
	9925 14050 9925 14150
Wire Wire Line
	9925 14250 9925 14350
Wire Wire Line
	9925 14450 9925 14550
Wire Wire Line
	9925 14650 9925 14750
Text GLabel 10525 14050 0    60   Input ~ 0
TA8
Text GLabel 10525 14350 0    60   Input ~ 0
TA9
Text GLabel 10525 14650 0    60   Input ~ 0
TA6
Text GLabel 10525 14950 0    60   Input ~ 0
TA7
Wire Wire Line
	9925 14150 10100 14150
Wire Wire Line
	10100 14150 10100 14750
Wire Wire Line
	10100 14750 10525 14750
Connection ~ 9925 14150
Wire Wire Line
	9925 14350 10025 14350
Wire Wire Line
	10025 14350 10025 15050
Wire Wire Line
	10025 15050 10525 15050
Connection ~ 9925 14350
Wire Wire Line
	9925 14450 10150 14450
Wire Wire Line
	10150 14450 10150 14150
Wire Wire Line
	10150 14150 10525 14150
Connection ~ 9925 14450
Wire Wire Line
	9925 14650 10250 14650
Wire Wire Line
	10250 14650 10250 14450
Wire Wire Line
	10250 14450 10525 14450
Connection ~ 9925 14650
Text GLabel 13900 10725 2    60   BiDi ~ 0
ESD7
Text GLabel 13900 10625 2    60   BiDi ~ 0
ESD6
Text GLabel 13900 10525 2    60   BiDi ~ 0
ESD5
Text GLabel 13900 10425 2    60   BiDi ~ 0
ESD4
Text GLabel 13900 10325 2    60   BiDi ~ 0
ESD3
Text GLabel 13900 10225 2    60   BiDi ~ 0
ESD2
Text GLabel 13900 10125 2    60   BiDi ~ 0
ESD1
Text GLabel 13900 10025 2    60   BiDi ~ 0
ESD0
Text GLabel 12500 10025 0    60   Input ~ 0
SA0
Text GLabel 12500 10125 0    60   Input ~ 0
SA1
Text GLabel 12500 10225 0    60   Input ~ 0
SA2
Text GLabel 12500 10325 0    60   Input ~ 0
SA3
Text GLabel 12500 10425 0    60   Input ~ 0
SA4
Text GLabel 12500 10525 0    60   Input ~ 0
SA5
Text GLabel 12500 10625 0    60   Input ~ 0
SA6
Text GLabel 12500 10725 0    60   Input ~ 0
SA7
Text GLabel 12500 10825 0    60   Input ~ 0
SA8
Text GLabel 12500 10925 0    60   Input ~ 0
SA9
Text GLabel 12500 11425 0    60   Input ~ 0
GND
$Comp
L 74xx:74LS373 UD17
U 1 1 62949D68
P 15725 10475
F 0 "UD17" H 15725 10525 50  0000 C CNN
F 1 "74LS373" H 15700 10425 50  0000 C CNN
F 2 "" H 15725 10475 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS373" H 15725 10475 50  0001 C CNN
	1    15725 10475
	1    0    0    -1  
$EndComp
Text GLabel 15225 10275 0    60   BiDi ~ 0
ESD3
Text GLabel 15225 10175 0    60   BiDi ~ 0
ESD2
Text GLabel 15225 10075 0    60   BiDi ~ 0
ESD1
Text GLabel 15225 9975 0    60   BiDi ~ 0
ESD0
Text GLabel 15225 10675 0    60   BiDi ~ 0
ESD7
Text GLabel 15225 10575 0    60   BiDi ~ 0
ESD6
Text GLabel 15225 10475 0    60   BiDi ~ 0
ESD5
Text GLabel 15225 10375 0    60   BiDi ~ 0
ESD4
Text GLabel 15225 10875 0    60   Input ~ 0
VIDEOLATCH
Text GLabel 16225 10275 2    60   BiDi ~ 0
LSD3
Text GLabel 16225 10175 2    60   BiDi ~ 0
LSD2
Text GLabel 16225 10075 2    60   BiDi ~ 0
LSD1
Text GLabel 16225 9975 2    60   BiDi ~ 0
LSD0
Text GLabel 16300 10675 2    60   BiDi ~ 0
LSD7
Text GLabel 16225 10575 2    60   BiDi ~ 0
LSD6
Text GLabel 16225 10475 2    60   BiDi ~ 0
LSD5
Text GLabel 16225 10375 2    60   BiDi ~ 0
LSD4
$Comp
L 74xx:74LS373 UE16
U 1 1 62A5019F
P 15700 12325
F 0 "UE16" H 15700 12375 50  0000 C CNN
F 1 "74LS373" H 15675 12275 50  0000 C CNN
F 2 "" H 15700 12325 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS373" H 15700 12325 50  0001 C CNN
	1    15700 12325
	1    0    0    -1  
$EndComp
Text GLabel 15200 12125 0    60   BiDi ~ 0
OSD3
Text GLabel 15200 12025 0    60   BiDi ~ 0
OSD2
Text GLabel 15200 11925 0    60   BiDi ~ 0
OSD1
Text GLabel 15200 11825 0    60   BiDi ~ 0
OSD0
Text GLabel 15200 12525 0    60   BiDi ~ 0
OSD7
Text GLabel 15200 12425 0    60   BiDi ~ 0
OSD6
Text GLabel 15200 12325 0    60   BiDi ~ 0
OSD5
Text GLabel 15200 12225 0    60   BiDi ~ 0
OSD4
Text GLabel 15200 12725 0    60   Input ~ 0
VIDEOLATCH
Text GLabel 16200 12125 2    60   BiDi ~ 0
LSD3
Text GLabel 16200 12025 2    60   BiDi ~ 0
LSD2
Text GLabel 16200 11925 2    60   BiDi ~ 0
LSD1
Text GLabel 16200 11825 2    60   BiDi ~ 0
LSD0
Text GLabel 16200 12525 2    60   BiDi ~ 0
LSD7
Text GLabel 16200 12425 2    60   BiDi ~ 0
LSD6
Text GLabel 16200 12325 2    60   BiDi ~ 0
LSD5
Text GLabel 16200 12225 2    60   BiDi ~ 0
LSD4
$Comp
L cbm:2332 UD17
U 1 1 62A94FE4
P 18100 11175
F 0 "UD17" H 18125 11000 50  0000 C CNN
F 1 "2332" H 18175 10875 50  0000 C CNN
F 2 "" H 18150 11125 50  0000 C CNN
F 3 "" H 18150 11125 50  0000 C CNN
	1    18100 11175
	1    0    0    -1  
$EndComp
Text GLabel 17550 11125 0    60   BiDi ~ 0
LSD3
Text GLabel 17550 11025 0    60   BiDi ~ 0
LSD2
Text GLabel 17550 10925 0    60   BiDi ~ 0
LSD1
Text GLabel 17550 10825 0    60   BiDi ~ 0
LSD0
Text GLabel 17550 11425 0    60   BiDi ~ 0
LSD6
Text GLabel 17550 11325 0    60   BiDi ~ 0
LSD5
Text GLabel 17550 11225 0    60   BiDi ~ 0
LSD4
Text GLabel 17550 10725 0    60   BiDi ~ 0
RRA2
Text GLabel 17550 10625 0    60   BiDi ~ 0
RRA1
Text GLabel 17550 10525 0    60   BiDi ~ 0
RRA0
Text GLabel 17550 11525 0    60   Input ~ 0
GRAPHIC
Text GLabel 17550 11625 0    60   Input ~ 0
CHROPTION
Text GLabel 17550 11825 0    60   Input ~ 0
GND
$Comp
L 74xx_IEEE:74166 UD16
U 1 1 62B1E0BC
P 19200 10425
F 0 "UD16" H 19325 10825 50  0000 C CNN
F 1 "74166" H 19325 10575 50  0000 C CNN
F 2 "" H 19200 10425 50  0001 C CNN
F 3 "" H 19200 10425 50  0001 C CNN
	1    19200 10425
	1    0    0    -1  
$EndComp
Text Notes 18925 11675 0    118  ~ 0
SHIFT\nREGISTER
Text GLabel 18525 10125 0    60   Input ~ 0
GND
Wire Wire Line
	18550 10125 18550 10425
Wire Wire Line
	18550 10425 18650 10425
Text GLabel 18650 9975 0    60   Input ~ 0
~LOADSR
NoConn ~ 18750 9875
Text GLabel 18025 13400 0    60   BiDi ~ 0
ESD3
Text GLabel 18025 13300 0    60   BiDi ~ 0
ESD2
Text GLabel 18025 13200 0    60   BiDi ~ 0
ESD1
Text GLabel 18025 13100 0    60   BiDi ~ 0
ESD0
$Comp
L PET-BB-rescue:74LS244-74xx1-PET-Reloaded-rescue-PET-CR-rescue UF15
U 1 1 62C3809C
P 18725 13600
F 0 "UF15" H 18775 13400 50  0000 C CNN
F 1 "74LS244" H 18825 13200 50  0000 C CNN
F 2 "" H 18725 13600 50  0000 C CNN
F 3 "" H 18725 13600 50  0000 C CNN
	1    18725 13600
	1    0    0    -1  
$EndComp
$Comp
L PET-BB-rescue:74LS244-74xx1-PET-Reloaded-rescue-PET-CR-rescue UE15
U 1 1 62C380A6
P 18725 14725
F 0 "UE15" H 18775 14525 50  0000 C CNN
F 1 "74LS244" H 18825 14325 50  0000 C CNN
F 2 "" H 18725 14725 50  0000 C CNN
F 3 "" H 18725 14725 50  0000 C CNN
	1    18725 14725
	1    0    0    -1  
$EndComp
Text GLabel 19425 13800 2    60   BiDi ~ 0
ESD0
Text GLabel 19425 13700 2    60   BiDi ~ 0
ESD1
Text GLabel 19425 13600 2    60   BiDi ~ 0
ESD2
Text GLabel 19425 13500 2    60   BiDi ~ 0
ESD3
Text GLabel 19425 13400 2    60   BiDi ~ 0
BD3
Text GLabel 19425 13300 2    60   BiDi ~ 0
BD2
Text GLabel 19425 13200 2    60   BiDi ~ 0
BD1
Text GLabel 19425 13100 2    60   BiDi ~ 0
BD0
Text GLabel 18025 13500 0    60   BiDi ~ 0
BD3
Text GLabel 18025 13600 0    60   BiDi ~ 0
BD2
Text GLabel 18025 13700 0    60   BiDi ~ 0
BD1
Text GLabel 18025 13800 0    60   BiDi ~ 0
BD0
Text GLabel 18025 14525 0    60   BiDi ~ 0
ESD7
Text GLabel 18025 14425 0    60   BiDi ~ 0
ESD6
Text GLabel 18025 14325 0    60   BiDi ~ 0
ESD5
Text GLabel 18025 14225 0    60   BiDi ~ 0
ESD4
Text GLabel 18025 14625 0    60   BiDi ~ 0
BD7
Text GLabel 18025 14725 0    60   BiDi ~ 0
BD6
Text GLabel 18025 14825 0    60   BiDi ~ 0
BD5
Text GLabel 18025 14925 0    60   BiDi ~ 0
BD4
Text GLabel 19425 14925 2    60   BiDi ~ 0
ESD4
Text GLabel 19425 14825 2    60   BiDi ~ 0
ESD5
Text GLabel 19425 14725 2    60   BiDi ~ 0
ESD6
Text GLabel 19425 14625 2    60   BiDi ~ 0
ESD7
Text GLabel 19425 14525 2    60   BiDi ~ 0
BD7
Text GLabel 19425 14425 2    60   BiDi ~ 0
BD6
Text GLabel 19425 14325 2    60   BiDi ~ 0
BD5
Text GLabel 19425 14225 2    60   BiDi ~ 0
BD4
Wire Wire Line
	17650 15225 18025 15225
Wire Wire Line
	17550 14000 18025 14000
Wire Wire Line
	18025 14100 17650 14100
Wire Wire Line
	18025 15125 17550 15125
Wire Wire Line
	17550 14000 17550 15125
Wire Wire Line
	17650 14100 17650 15225
Text GLabel 18000 15900 0    60   BiDi ~ 0
OSD3
Text GLabel 18000 15800 0    60   BiDi ~ 0
OSD2
Text GLabel 18000 15700 0    60   BiDi ~ 0
OSD1
Text GLabel 18000 15600 0    60   BiDi ~ 0
OSD0
Text Notes 19200 12850 2    118  ~ 0
DATA BUFFER
$Comp
L PET-BB-rescue:74LS244-74xx1-PET-Reloaded-rescue-PET-CR-rescue UF14
U 1 1 62C89FD6
P 18700 16100
F 0 "UF14" H 18750 15900 50  0000 C CNN
F 1 "74LS244" H 18800 15700 50  0000 C CNN
F 2 "" H 18700 16100 50  0000 C CNN
F 3 "" H 18700 16100 50  0000 C CNN
	1    18700 16100
	1    0    0    -1  
$EndComp
$Comp
L PET-BB-rescue:74LS244-74xx1-PET-Reloaded-rescue-PET-CR-rescue UE14
U 1 1 62C89FE0
P 18700 17225
F 0 "UE14" H 18750 17025 50  0000 C CNN
F 1 "74LS244" H 18800 16825 50  0000 C CNN
F 2 "" H 18700 17225 50  0000 C CNN
F 3 "" H 18700 17225 50  0000 C CNN
	1    18700 17225
	1    0    0    -1  
$EndComp
Text GLabel 19400 16300 2    60   BiDi ~ 0
OSD0
Text GLabel 19400 16200 2    60   BiDi ~ 0
OSD1
Text GLabel 19400 16100 2    60   BiDi ~ 0
OSD2
Text GLabel 19400 16000 2    60   BiDi ~ 0
OSD3
Text GLabel 19400 15900 2    60   BiDi ~ 0
BD3
Text GLabel 19400 15800 2    60   BiDi ~ 0
BD2
Text GLabel 19400 15700 2    60   BiDi ~ 0
BD1
Text GLabel 19400 15600 2    60   BiDi ~ 0
BD0
Text GLabel 18000 16000 0    60   BiDi ~ 0
BD3
Text GLabel 18000 16100 0    60   BiDi ~ 0
BD2
Text GLabel 18000 16200 0    60   BiDi ~ 0
BD1
Text GLabel 18000 16300 0    60   BiDi ~ 0
BD0
Text GLabel 18000 17025 0    60   BiDi ~ 0
OSD7
Text GLabel 18000 16925 0    60   BiDi ~ 0
OSD6
Text GLabel 18000 16825 0    60   BiDi ~ 0
OSD5
Text GLabel 18000 16725 0    60   BiDi ~ 0
OSD4
Text GLabel 18000 17125 0    60   BiDi ~ 0
BD7
Text GLabel 18000 17225 0    60   BiDi ~ 0
BD6
Text GLabel 18000 17325 0    60   BiDi ~ 0
BD5
Text GLabel 18000 17425 0    60   BiDi ~ 0
BD4
Text GLabel 19400 17425 2    60   BiDi ~ 0
OSD4
Text GLabel 19400 17325 2    60   BiDi ~ 0
OSD5
Text GLabel 19400 17225 2    60   BiDi ~ 0
OSD6
Text GLabel 19400 17125 2    60   BiDi ~ 0
OSD7
Text GLabel 19400 17025 2    60   BiDi ~ 0
BD7
Text GLabel 19400 16925 2    60   BiDi ~ 0
BD6
Text GLabel 19400 16825 2    60   BiDi ~ 0
BD5
Text GLabel 19400 16725 2    60   BiDi ~ 0
BD4
Wire Wire Line
	17600 17725 18000 17725
Wire Wire Line
	17525 16500 18000 16500
Wire Wire Line
	18000 16600 17600 16600
Wire Wire Line
	18000 17625 17525 17625
Wire Wire Line
	17525 16500 17525 17625
Wire Wire Line
	17600 16600 17600 17725
Text Notes 14350 9425 2    157  ~ 31
DISPLAY RAM
Text Notes 16200 9425 2    157  ~ 31
LATCHES
Wire Wire Line
	18525 10125 18550 10125
Connection ~ 18550 10125
Wire Wire Line
	18550 10125 18650 10125
Text Notes 17450 9650 0    157  ~ 31
CHARACTER ROM\n+ SHIFT REGISTER
$Comp
L 65xx:6545 UD11
U 1 1 62F4BEA0
P 6350 16000
F 0 "UD11" H 6350 16525 50  0000 C CNN
F 1 "6545" H 6350 16425 50  0000 C CIB
F 2 "" H 6350 16400 50  0001 C CNN
F 3 "http://www.6502.org/documents/datasheets/mos/mos_6545-1_crtc.pdf" H 6350 16400 50  0001 C CNN
	1    6350 16000
	1    0    0    -1  
$EndComp
Text GLabel 5750 16850 0    60   BiDi ~ 0
D7
Text GLabel 5750 16750 0    60   BiDi ~ 0
D6
Text GLabel 5750 16650 0    60   BiDi ~ 0
D5
Text GLabel 5750 16550 0    60   BiDi ~ 0
D4
Text GLabel 5750 16450 0    60   BiDi ~ 0
D3
Text GLabel 5750 16350 0    60   BiDi ~ 0
D2
Text GLabel 5750 16250 0    60   BiDi ~ 0
D1
Text GLabel 5750 16150 0    60   BiDi ~ 0
D0
Text GLabel 5750 14650 0    60   Input ~ 0
~RES
Text Notes 5425 13975 0    157  ~ 31
CRT CONTROLLER
Text GLabel 5750 14850 0    60   Input ~ 0
~CLK1
Text GLabel 5750 14750 0    60   Input ~ 0
B02
Text GLabel 6425 11050 2    60   Output ~ 0
CRTC-CS
Text GLabel 5150 11150 0    60   Input ~ 0
BA6
Wire Wire Line
	5150 11150 5825 11150
Text GLabel 5150 11050 0    60   Input ~ 0
X8XX
Wire Wire Line
	5150 11050 5825 11050
Wire Wire Line
	5750 10825 5750 10950
Wire Wire Line
	5750 10950 5825 10950
Text GLabel 5150 10825 0    60   Input ~ 0
~IO
Text GLabel 5750 15250 0    60   Input ~ 0
CRTC-CS
Text GLabel 5750 15450 0    60   Input ~ 0
BA0
Text GLabel 5750 15950 0    60   Input ~ 0
BRW
Text GLabel 6950 17150 2    60   BiDi ~ 0
RRA2
Text GLabel 6950 17050 2    60   BiDi ~ 0
RRA1
Text GLabel 6950 16950 2    60   BiDi ~ 0
RRA0
Wire Wire Line
	6950 17250 7250 17250
Wire Wire Line
	6950 17350 7150 17350
Wire Wire Line
	7150 17350 7150 17450
Wire Wire Line
	7150 17450 7250 17450
Text GLabel 7850 17350 2    60   Output ~ 0
NOROW
Text GLabel 6950 15450 2    60   Output ~ 0
TA0
Text GLabel 6950 15550 2    60   Output ~ 0
TA1
Text GLabel 6950 15650 2    60   Output ~ 0
TA2
Text GLabel 6950 15750 2    60   Output ~ 0
TA3
Text GLabel 6950 15850 2    60   Output ~ 0
TA4
Text GLabel 6950 15950 2    60   Output ~ 0
TA5
Text GLabel 6950 16050 2    60   Output ~ 0
TA6
Text GLabel 6950 16150 2    60   Output ~ 0
TA7
Text GLabel 6950 16250 2    60   Output ~ 0
TA8
Text GLabel 6950 16350 2    60   Output ~ 0
TA9
Text GLabel 6950 16650 2    60   Output ~ 0
INVERT
Text GLabel 6950 16750 2    60   Output ~ 0
CHROPTION
NoConn ~ 6950 16450
NoConn ~ 6950 16550
NoConn ~ 6950 15150
Text GLabel 6950 15250 2    60   Output ~ 0
DISPENA
Text GLabel 7875 14650 2    60   Input ~ 0
PENSTROBE
Wire Wire Line
	7550 14650 7625 14650
Wire Wire Line
	7625 14650 7625 14350
Connection ~ 7625 14650
Wire Wire Line
	7625 14650 7875 14650
Text GLabel 7325 14250 0    60   Input ~ 0
5V
Wire Wire Line
	7625 14350 7775 14350
Connection ~ 7625 14350
Wire Wire Line
	7625 14350 7625 14250
$Comp
L Connector:Conn_01x02_Male BJ
U 1 1 6347BF52
P 7875 14150
F 0 "BJ" V 7850 14075 50  0000 L CNN
F 1 "BUBBLE JUMPER" V 7750 13850 50  0000 L CNN
F 2 "" H 7875 14150 50  0001 C CNN
F 3 "~" H 7875 14150 50  0001 C CNN
	1    7875 14150
	0    1    1    0   
$EndComp
Wire Wire Line
	7875 14350 8000 14350
Text GLabel 8000 14350 2    60   Input ~ 0
GRAPHIC
$Comp
L Device:R R22
U 1 1 6351000B
P 7475 14250
F 0 "R22" V 7400 14250 50  0000 C CNN
F 1 "1K" V 7550 14250 50  0000 C CNN
F 2 "" V 7405 14250 50  0001 C CNN
F 3 "~" H 7475 14250 50  0001 C CNN
	1    7475 14250
	0    1    1    0   
$EndComp
Text GLabel 6950 14850 2    60   Output ~ 0
HSYNC
Text GLabel 6950 14950 2    60   Output ~ 0
VSYNC
Text GLabel 19750 11225 2    60   Output ~ 0
DOT
$Comp
L 74xx:74LS138 UD15
U 1 1 5E9ECF52
P 10475 16950
F 0 "UD15" H 10475 16950 50  0000 C CNN
F 1 "74LS138" H 10450 16850 50  0000 C CNN
F 2 "" H 10475 16950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS138" H 10475 16950 50  0001 C CNN
	1    10475 16950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9975 16750 9875 16750
Text GLabel 9375 16375 0    60   Input ~ 0
BA0
$Comp
L PET-BB-rescue:CONN_02X02-conn1-PET-Reloaded-rescue-PET-CR-rescue W3
U 1 1 5EA4254B
P 9625 16325
F 0 "W3" H 9625 16475 50  0000 C CNN
F 1 "W3/W4" H 9625 16175 50  0000 C CNN
F 2 "" H 9625 15125 50  0001 C CNN
F 3 "" H 9625 15125 50  0001 C CNN
	1    9625 16325
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9875 16375 9900 16375
Wire Wire Line
	9900 16375 9900 16650
Text GLabel 9275 16650 0    60   Input ~ 0
~BRW
Text GLabel 9275 16750 0    60   Input ~ 0
RWG
Text GLabel 9225 17150 0    60   Input ~ 0
CLK1B
Text GLabel 9375 16275 0    60   Input ~ 0
GND
Wire Wire Line
	9875 16275 9900 16275
Wire Wire Line
	9900 16275 9900 16375
Connection ~ 9900 16375
Text GLabel 9975 16850 0    60   Input ~ 0
5V
Wire Wire Line
	9225 17150 9275 17150
Wire Wire Line
	9275 16850 9275 17150
Wire Wire Line
	9275 17150 9975 17150
Text GLabel 9975 17350 0    60   Input ~ 0
BA11
Text GLabel 9975 17250 0    60   Input ~ 0
~SEL8
Text GLabel 10975 16850 2    60   Input ~ 0
5V
Text GLabel 10975 17150 2    60   Output ~ 0
~WRITEODD
Text GLabel 10975 17350 2    60   Output ~ 0
~READODD
Text GLabel 10975 17250 2    60   Output ~ 0
~READEVEN
Text GLabel 10975 17050 2    60   Output ~ 0
~WRITEEVEN
Text Notes 11250 16075 2    118  ~ 0
VIDEO MEMORY CONTROL\n
Text Notes 9925 16400 0    50   ~ 0
80C\n40C
Text GLabel 14675 11250 0    60   Input ~ 0
GND
$Comp
L PET-BB-rescue:CONN_02X02-conn1-PET-Reloaded-rescue-PET-CR-rescue W5
U 1 1 5ECAAD66
P 14925 11200
F 0 "W5" H 14925 11350 50  0000 C CNN
F 1 "J5/J6" H 14925 11050 50  0000 C CNN
F 2 "" H 14925 10000 50  0001 C CNN
F 3 "" H 14925 10000 50  0001 C CNN
	1    14925 11200
	-1   0    0    -1  
$EndComp
Text GLabel 14675 11150 0    60   Input ~ 0
~CLK1
Wire Wire Line
	15175 11150 15175 10975
Wire Wire Line
	15175 10975 15225 10975
Wire Wire Line
	15175 11250 15175 11150
Connection ~ 15175 11150
Text Notes 15225 11250 0    50   ~ 0
80C\n40C
Text GLabel 15200 12825 0    60   Input ~ 0
CLK1B
Text GLabel 12475 12975 0    60   Input ~ 0
~WRITEODD
Text GLabel 12500 11175 0    60   Input ~ 0
~WRITEEVEN
Text GLabel 17450 16500 0    60   Input ~ 0
~WRITEODD
Text GLabel 17475 17725 0    60   Input ~ 0
~READODD
Text GLabel 17500 14000 0    60   Input ~ 0
~WRITEEVEN
Text GLabel 17525 15225 0    60   Input ~ 0
~READEVEN
NoConn ~ 10975 16950
NoConn ~ 10975 16750
NoConn ~ 10975 16650
$Comp
L 74xx_IEEE:7486 UC18
U 2 1 601B0603
P 11025 19750
F 0 "UC18" H 10875 19450 50  0000 C CNN
F 1 "7486" H 11175 19450 50  0000 C CNN
F 2 "" H 11025 19750 50  0001 C CNN
F 3 "" H 11025 19750 50  0001 C CNN
	2    11025 19750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 16650 9975 16650
Connection ~ 9275 17150
Connection ~ 8525 19250
Wire Wire Line
	8525 19050 8525 19250
$Comp
L Device:R R29
U 1 1 61217303
P 8525 18900
F 0 "R29" V 8450 18900 50  0000 C CNN
F 1 "1K" V 8600 18900 50  0000 C CNN
F 2 "" V 8455 18900 50  0001 C CNN
F 3 "~" H 8525 18900 50  0001 C CNN
	1    8525 18900
	-1   0    0    1   
$EndComp
Text GLabel 8525 18750 1    60   Input ~ 0
5V
Wire Wire Line
	8525 19250 8625 19250
Text Notes 7025 18675 0    50   ~ 0
Inverts the entire\nscreen.
Wire Wire Line
	7525 18750 7425 18750
Wire Wire Line
	7525 19150 7525 18750
Text GLabel 7425 18750 0    60   Input ~ 0
INVERT
Text GLabel 8625 19250 2    60   Output ~ 0
VIDEO
Text GLabel 6925 19350 0    60   Input ~ 0
NOROW
Wire Wire Line
	6075 19450 6925 19450
Wire Wire Line
	6075 18675 6075 19450
Wire Wire Line
	6025 18675 6075 18675
Wire Wire Line
	6850 19250 6925 19250
Wire Wire Line
	6850 18675 6850 19250
Wire Wire Line
	6800 18675 6850 18675
Wire Wire Line
	4275 18000 4000 18000
Connection ~ 4275 18000
Wire Wire Line
	4275 18775 4275 18000
Wire Wire Line
	4350 18775 4275 18775
NoConn ~ 6800 18875
NoConn ~ 6025 18875
Connection ~ 5325 18000
Wire Wire Line
	6125 18775 6200 18775
Wire Wire Line
	6125 18000 6125 18775
Wire Wire Line
	5325 18000 6125 18000
Text GLabel 4000 18000 0    60   Input ~ 0
CLK16-8
Wire Wire Line
	5325 18000 4275 18000
Wire Wire Line
	5325 18775 5325 18000
Wire Wire Line
	5425 18775 5325 18775
Wire Wire Line
	5225 18675 5425 18675
Wire Wire Line
	5225 19300 5225 18675
Wire Wire Line
	5675 19300 5225 19300
Wire Wire Line
	5675 19600 5675 19300
NoConn ~ 4175 18875
NoConn ~ 4950 18875
Text Notes 3725 19950 0    50   ~ 0
Pixel DOT from Character\nROM and Shift Register.
Text GLabel 4675 19700 0    60   Input ~ 0
DOT
Wire Wire Line
	5125 18675 4950 18675
Wire Wire Line
	5125 19300 5125 18675
Wire Wire Line
	4675 19300 5125 19300
Wire Wire Line
	4675 19500 4675 19300
Text Notes 3100 18050 2    118  ~ 0
VIDEO TIMING\n
Connection ~ 5725 19175
Wire Wire Line
	6500 19175 6500 19075
Wire Wire Line
	5725 19175 6500 19175
Connection ~ 4650 19175
Wire Wire Line
	5725 19175 5725 19075
Wire Wire Line
	4650 19175 5725 19175
Connection ~ 5725 18175
Wire Wire Line
	6500 18175 6500 18475
Wire Wire Line
	5725 18175 6500 18175
Connection ~ 4650 18175
Wire Wire Line
	5725 18175 5725 18475
Wire Wire Line
	4650 18175 5725 18175
$Comp
L 74xx:74LS74 UC15
U 2 1 60275402
P 5725 18775
F 0 "UC15" H 5775 18800 50  0000 C CNN
F 1 "74LS74" H 5900 18525 50  0000 C CNN
F 2 "" H 5725 18775 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 5725 18775 50  0001 C CNN
	2    5725 18775
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS74 UC15
U 1 1 602753F8
P 6500 18775
F 0 "UC15" H 6525 18800 50  0000 C CNN
F 1 "74LS74" H 6675 18525 50  0000 C CNN
F 2 "" H 6500 18775 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 6500 18775 50  0001 C CNN
	1    6500 18775
	1    0    0    -1  
$EndComp
Connection ~ 3875 18175
Wire Wire Line
	4650 18175 4650 18475
Wire Wire Line
	3875 18175 4650 18175
Connection ~ 2850 18175
Wire Wire Line
	3875 18175 3875 18475
Wire Wire Line
	2850 18175 3875 18175
$Comp
L 74xx_IEEE:7486 UC18
U 4 1 601B9E43
P 5175 19600
F 0 "UC18" H 5000 19300 50  0000 C CNN
F 1 "7486" H 5325 19300 50  0000 C CNN
F 2 "" H 5175 19600 50  0001 C CNN
F 3 "" H 5175 19600 50  0001 C CNN
	4    5175 19600
	1    0    0    -1  
$EndComp
$Comp
L 74xx_IEEE:7486 UC18
U 1 1 601ABC9B
P 8025 19250
F 0 "UC18" H 7875 18950 50  0000 C CNN
F 1 "7486" H 8150 18950 50  0000 C CNN
F 2 "" H 8025 19250 50  0001 C CNN
F 3 "" H 8025 19250 50  0001 C CNN
	1    8025 19250
	1    0    0    1   
$EndComp
Wire Wire Line
	1275 19875 1600 19875
Text GLabel 1275 19875 0    60   Input ~ 0
CLK1B
NoConn ~ 3150 18875
NoConn ~ 2300 18875
Text GLabel 3500 18425 0    60   BiDi ~ 0
REVERSE
Connection ~ 3875 19175
Wire Wire Line
	4650 19175 4650 19075
Wire Wire Line
	3875 19175 4650 19175
Connection ~ 2850 19175
Wire Wire Line
	3875 19175 3875 19075
Wire Wire Line
	2850 19175 3875 19175
Wire Wire Line
	4175 18675 4350 18675
Wire Wire Line
	3425 18775 3575 18775
Wire Wire Line
	3425 19375 3425 18775
Text GLabel 1250 19175 0    60   Input ~ 0
~INIT
Wire Wire Line
	2000 19175 1250 19175
Connection ~ 2000 19175
Wire Wire Line
	2000 19075 2000 19175
Wire Wire Line
	2850 19175 2000 19175
Wire Wire Line
	2850 19075 2850 19175
Wire Wire Line
	1275 18675 1700 18675
Wire Wire Line
	2450 19375 2825 19375
Connection ~ 2450 19375
$Comp
L 74xx:74LS74 UC17
U 2 1 5F763F74
P 4650 18775
F 0 "UC17" H 4700 18800 50  0000 C CNN
F 1 "74LS74" H 4825 18525 50  0000 C CNN
F 2 "" H 4650 18775 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 4650 18775 50  0001 C CNN
	2    4650 18775
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS74 UC17
U 1 1 5F7632A0
P 3875 18775
F 0 "UC17" H 3900 18800 50  0000 C CNN
F 1 "74LS74" H 4050 18525 50  0000 C CNN
F 2 "" H 3875 18775 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 3875 18775 50  0001 C CNN
	1    3875 18775
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 18175 2850 18175
Connection ~ 2000 18175
Wire Wire Line
	2000 18475 2000 18175
Wire Wire Line
	2850 18175 2850 18475
Wire Wire Line
	1275 18175 2000 18175
Text GLabel 1275 18175 0    60   Input ~ 0
PULLUP
Wire Wire Line
	2300 18675 2550 18675
Wire Wire Line
	2025 19675 2150 19675
Connection ~ 2025 19675
Wire Wire Line
	1275 19675 2025 19675
Wire Wire Line
	2450 18775 2550 18775
Wire Wire Line
	2450 19375 2450 18775
Wire Wire Line
	2025 19375 2450 19375
Wire Wire Line
	2025 19675 2025 19375
Connection ~ 1600 19875
Wire Wire Line
	1600 18775 1600 19875
Wire Wire Line
	1700 18775 1600 18775
Text GLabel 1275 18675 0    60   Input ~ 0
DISPENA
Wire Wire Line
	2150 19875 1600 19875
$Comp
L 74xx:74LS74 UC16
U 2 1 5F148813
P 2850 18775
F 0 "UC16" H 2900 18800 50  0000 C CNN
F 1 "74LS74" H 3025 18525 50  0000 C CNN
F 2 "" H 2850 18775 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 2850 18775 50  0001 C CNN
	2    2850 18775
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS74 UC16
U 1 1 5F14819D
P 2000 18775
F 0 "UC16" H 2025 18800 50  0000 C CNN
F 1 "74LS74" H 2175 18525 50  0000 C CNN
F 2 "" H 2000 18775 50  0001 C CNN
F 3 "74xx/74hc_hct74.pdf" H 2000 18775 50  0001 C CNN
	1    2000 18775
	1    0    0    -1  
$EndComp
Text GLabel 2750 19775 2    60   Output ~ 0
VIDEOLATCH
Text GLabel 1275 19675 0    60   Input ~ 0
~LOADSR
$Comp
L 74xx1:74LS02 UD14
U 4 1 5EC56975
P 2450 19775
F 0 "UD14" H 2475 19775 50  0000 C CNN
F 1 "74LS02" H 2550 19975 50  0000 C CNN
F 2 "" H 2450 19775 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 2450 19775 50  0001 C CNN
	4    2450 19775
	1    0    0    1   
$EndComp
$Comp
L 74xx:74LS10 UC14
U 3 1 61173C93
P 7225 19350
F 0 "UC14" H 7225 19350 50  0000 C CNN
F 1 "74LS10" H 7200 19150 50  0000 C CNN
F 2 "" H 7225 19350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS10" H 7225 19350 50  0001 C CNN
	3    7225 19350
	1    0    0    1   
$EndComp
$Comp
L 74xx:74LS04 UD13
U 6 1 5EAE0978
P 3125 19375
F 0 "UD13" H 3100 19375 50  0000 C CNN
F 1 "74LS04" H 3250 19250 50  0000 C CNN
F 2 "" H 3125 19375 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 3125 19375 50  0001 C CNN
	6    3125 19375
	1    0    0    -1  
$EndComp
Text Notes 7825 17650 0    50   ~ 0
Blanks the video when\ncharacter height is\nmore than 8 pixels.
Text Notes 7275 16975 0    50   ~ 0
Raster Row Counter
Text Notes 7350 16675 0    50   ~ 0
Inverts the entire screen.
Text Notes 7525 16850 0    50   ~ 0
Activates alternate\ncharacter sets.
Text Notes 7400 15450 0    50   ~ 0
Enables the display\narea (as opposed\nto the border)
Text Notes 7325 15000 0    50   ~ 0
Horizontal and Vertical\nsync.
Text Notes 7200 15900 0    50   ~ 0
Screen  Address\n(Max 16K, of which\n2K is used on the PET)
Text Notes 9075 10775 0    50   ~ 0
For 40 Column:\n    jumper all ODD pairs.\n\nFor 80 Column:\n   jumper all EVEN pairs.
$Comp
L Connector_Generic:Conn_01x07 J7
U 1 1 620CC0CA
P 31500 13850
F 0 "J7" H 31580 13892 50  0000 L CNN
F 1 "VIDEO OUT" H 31580 13801 50  0000 L CNN
F 2 "" H 31500 13850 50  0001 C CNN
F 3 "~" H 31500 13850 50  0001 C CNN
	1    31500 13850
	1    0    0    -1  
$EndComp
Text Notes 30750 13325 0    118  ~ 0
VIDEO PORT
Text GLabel 17550 11925 0    60   Input ~ 0
INIT
Text GLabel 18500 10275 0    60   Input ~ 0
CLK16-8
Wire Wire Line
	18500 10275 18650 10275
Wire Wire Line
	18650 10275 18650 10225
Text GLabel 10525 19650 0    60   Input ~ 0
HSYNC
Text GLabel 10525 18800 0    60   Input ~ 0
VSYNC
$Comp
L Connector_Generic:Conn_01x03 W2
U 1 1 628EF45F
P 10125 20225
F 0 "W2" V 9997 20405 50  0000 L CNN
F 1 "H-POLARITY" V 10088 20405 50  0000 L CNN
F 2 "" H 10125 20225 50  0001 C CNN
F 3 "~" H 10125 20225 50  0001 C CNN
	1    10125 20225
	0    1    1    0   
$EndComp
Wire Wire Line
	10125 20025 10125 19850
Wire Wire Line
	10125 19850 10525 19850
Wire Wire Line
	10225 20025 10225 19775
Wire Wire Line
	10225 19775 9925 19775
Wire Wire Line
	10025 20025 10025 19900
Wire Wire Line
	10025 19900 9925 19900
Text GLabel 9925 19900 0    60   Input ~ 0
GND
Text GLabel 9925 19775 0    60   Input ~ 0
PULLUP
$Comp
L Connector_Generic:Conn_01x03 W1
U 1 1 62B05AE9
P 10125 19375
F 0 "W1" V 9997 19555 50  0000 L CNN
F 1 "V-POLARITY" V 10088 19555 50  0000 L CNN
F 2 "" H 10125 19375 50  0001 C CNN
F 3 "~" H 10125 19375 50  0001 C CNN
	1    10125 19375
	0    1    1    0   
$EndComp
Wire Wire Line
	10125 19175 10125 19000
Wire Wire Line
	10125 19000 10525 19000
Wire Wire Line
	10225 19175 10225 18925
Wire Wire Line
	10225 18925 9925 18925
Wire Wire Line
	10025 19175 10025 19050
Wire Wire Line
	10025 19050 9925 19050
Text GLabel 9925 19050 0    60   Input ~ 0
GND
Text GLabel 9925 18925 0    60   Input ~ 0
PULLUP
Text GLabel 11650 19750 2    60   Output ~ 0
HORIZ-DRIVE
$Comp
L 74xx_IEEE:7486 UC18
U 3 1 601B3D61
P 11025 18900
F 0 "UC18" H 10850 18600 50  0000 C CNN
F 1 "7486" H 11200 18600 50  0000 C CNN
F 2 "" H 11025 18900 50  0001 C CNN
F 3 "" H 11025 18900 50  0001 C CNN
	3    11025 18900
	1    0    0    -1  
$EndComp
Text GLabel 11650 18900 2    60   Output ~ 0
VERT-DRIVE
Wire Wire Line
	11525 19750 11600 19750
Connection ~ 11600 19750
Wire Wire Line
	11600 19750 11650 19750
$Comp
L device1:R R31
U 1 1 62FA268A
P 11600 19450
F 0 "R31" V 11500 19450 50  0000 C CNN
F 1 "1K" V 11675 19450 50  0000 C CNN
F 2 "" V 11530 19450 50  0001 C CNN
F 3 "" H 11600 19450 50  0001 C CNN
	1    11600 19450
	-1   0    0    1   
$EndComp
Text GLabel 11600 19300 1    60   Input ~ 0
5V
Wire Wire Line
	11525 18900 11600 18900
Wire Wire Line
	11600 19600 11600 19750
$Comp
L device1:R R30
U 1 1 630175DF
P 11600 18600
F 0 "R30" V 11500 18600 50  0000 C CNN
F 1 "1K" V 11675 18600 50  0000 C CNN
F 2 "" V 11530 18600 50  0001 C CNN
F 3 "" H 11600 18600 50  0001 C CNN
	1    11600 18600
	-1   0    0    1   
$EndComp
Text GLabel 11600 18450 1    60   Input ~ 0
5V
Wire Wire Line
	11600 18750 11600 18900
Connection ~ 11600 18900
Wire Wire Line
	11600 18900 11650 18900
Text Notes 11200 18450 2    118  ~ 0
VIDEO POLARITY\n
Text GLabel 31300 13950 0    60   Input ~ 0
HORIZ-DRIVE
Text GLabel 31300 13750 0    60   Input ~ 0
VERT-DRIVE
Text GLabel 31300 13650 0    60   Input ~ 0
GND
Text GLabel 31300 13850 0    60   Input ~ 0
GND
Text GLabel 31300 14150 0    60   Input ~ 0
GND
NoConn ~ 31300 14050
Text GLabel 31300 13550 0    60   Input ~ 0
VIDEO
Wire Wire Line
	5350 9250 5650 9250
Wire Wire Line
	4850 3450 5000 3450
Connection ~ 5000 3450
Wire Wire Line
	4875 2225 4925 2225
Connection ~ 4925 2225
Wire Wire Line
	17475 17725 17600 17725
Connection ~ 17600 17725
Wire Wire Line
	17450 16500 17525 16500
Connection ~ 17525 16500
Wire Wire Line
	17525 15225 17650 15225
Connection ~ 17650 15225
Wire Wire Line
	17500 14000 17550 14000
Connection ~ 17550 14000
Wire Wire Line
	3625 11975 3775 11975
Wire Wire Line
	16250 10850 16300 10850
Text GLabel 16300 10850 2    60   BiDi ~ 0
REVERSE
Wire Wire Line
	16225 10675 16250 10675
Wire Wire Line
	16250 10850 16250 10675
Connection ~ 16250 10675
Wire Wire Line
	16250 10675 16300 10675
Wire Wire Line
	3500 18425 3575 18425
Wire Wire Line
	3575 18425 3575 18675
$Comp
L cbm:RESISTORPAK8 UC9
U 1 1 643D7CAC
P 24975 13125
F 0 "UC9" V 24975 13200 50  0000 R CNN
F 1 "RESISTORPAK8" V 25075 13325 50  0000 R CNN
F 2 "" H 24975 12775 50  0000 C CNN
F 3 "" H 24975 12775 50  0000 C CNN
	1    24975 13125
	0    -1   1    0   
$EndComp
Wire Wire Line
	24625 12625 24625 11850
Wire Wire Line
	23975 11850 24625 11850
Connection ~ 24625 11850
Wire Wire Line
	24625 11850 25400 11850
Wire Wire Line
	24725 12625 24725 11950
Connection ~ 24725 11950
Wire Wire Line
	24725 11950 25400 11950
Wire Wire Line
	24825 12625 24825 12050
Connection ~ 24825 12050
Wire Wire Line
	24825 12050 25400 12050
Wire Wire Line
	24925 12625 24925 12150
Connection ~ 24925 12150
Wire Wire Line
	24925 12150 25400 12150
Wire Wire Line
	25025 12625 25025 12250
Connection ~ 25025 12250
Wire Wire Line
	25025 12250 25400 12250
Wire Wire Line
	25125 12625 25125 12350
Connection ~ 25125 12350
Wire Wire Line
	25125 12350 25400 12350
Wire Wire Line
	25225 12625 25225 12450
Wire Wire Line
	23975 12450 25225 12450
Connection ~ 25225 12450
Wire Wire Line
	25225 12450 25400 12450
Wire Wire Line
	25325 12625 25325 12550
Connection ~ 25325 12550
Wire Wire Line
	25325 12550 25400 12550
Text GLabel 24625 13575 3    60   Input ~ 0
5V
Text Notes 17300 12200 0    118  ~ 0
CHARACTER ROM
$Comp
L Connector_Generic:Conn_01x09 J8
U 1 1 653B402C
P 31450 15600
F 0 "J8" H 31530 15642 50  0000 L CNN
F 1 "MAIN POWER" H 31530 15551 50  0000 L CNN
F 2 "" H 31450 15600 50  0001 C CNN
F 3 "~" H 31450 15600 50  0001 C CNN
	1    31450 15600
	1    0    0    -1  
$EndComp
Text Notes 30950 14800 0    118  ~ 0
MAIN POWER\nCONNECTOR
Text Notes 31075 15825 0    50   ~ 0
KEY
NoConn ~ 31250 15800
NoConn ~ 31250 15900
NoConn ~ 31250 16000
Text GLabel 31075 16325 3    60   Input ~ 0
GND
Wire Wire Line
	31250 15300 30950 15300
$Comp
L Device:CP1 C52
U 1 1 65B72119
P 30800 15650
F 0 "C52" H 30550 15725 50  0000 L CNN
F 1 ".022 50V" H 30600 15550 50  0000 L CNN
F 2 "" H 30800 15650 50  0001 C CNN
F 3 "~" H 30800 15650 50  0001 C CNN
	1    30800 15650
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C53
U 1 1 65C5B472
P 30800 15350
F 0 "C53" H 30700 15450 50  0000 R CNN
F 1 ".022 50V" H 30950 15250 50  0000 R CNN
F 2 "" H 30800 15350 50  0001 C CNN
F 3 "~" H 30800 15350 50  0001 C CNN
	1    30800 15350
	1    0    0    1   
$EndComp
Wire Wire Line
	31250 15500 30800 15500
Connection ~ 30800 15500
Wire Wire Line
	31250 15600 31025 15600
Wire Wire Line
	31025 15600 31025 15800
Wire Wire Line
	31025 15800 30800 15800
Wire Wire Line
	30800 15800 30450 15800
Connection ~ 30800 15800
$Comp
L Device:D VR4
U 1 1 65E355E8
P 30450 15650
F 0 "VR4" V 30375 15450 50  0000 L CNN
F 1 "1N5402" V 30475 15300 50  0000 L CNN
F 2 "" H 30450 15650 50  0001 C CNN
F 3 "~" H 30450 15650 50  0001 C CNN
	1    30450 15650
	0    1    1    0   
$EndComp
Wire Wire Line
	30450 15500 30800 15500
Wire Wire Line
	30950 15300 30950 15925
Wire Wire Line
	30800 15200 30450 15200
Connection ~ 30800 15200
$Comp
L Device:D VR5
U 1 1 6616FDCA
P 30450 15350
F 0 "VR5" V 30350 15550 50  0000 R CNN
F 1 "1N5402" V 30475 15700 50  0000 R CNN
F 2 "" H 30450 15350 50  0001 C CNN
F 3 "~" H 30450 15350 50  0001 C CNN
	1    30450 15350
	0    -1   -1   0   
$EndComp
Connection ~ 30450 15500
$Comp
L Device:D VR6
U 1 1 66349154
P 30950 16100
F 0 "VR6" V 30900 15900 50  0000 L CNN
F 1 "1N5402" V 31000 15750 50  0000 L CNN
F 2 "" H 30950 16100 50  0001 C CNN
F 3 "~" H 30950 16100 50  0001 C CNN
	1    30950 16100
	0    1    1    0   
$EndComp
Wire Wire Line
	30950 16250 30950 16275
Wire Wire Line
	31250 15700 31075 15700
Wire Wire Line
	31075 15700 31075 16275
Wire Wire Line
	31075 16275 30950 16275
Wire Wire Line
	31075 16275 31075 16325
Wire Wire Line
	31075 15700 31075 15400
Wire Wire Line
	31075 15400 31250 15400
Connection ~ 31075 15700
Connection ~ 31075 16275
Wire Wire Line
	2075 2850 2100 2850
Wire Wire Line
	2100 2850 2100 3000
Wire Wire Line
	2100 3000 2175 3000
Connection ~ 2100 2850
Wire Wire Line
	2100 2850 2175 2850
Text GLabel 2175 3000 2    60   Output ~ 0
CRW
Text Notes 2425 3125 0    50   ~ 0
CMOS RAM R/W\n(Battery Circuit Removed)
Text Notes 3700 16125 0    61   ~ 0
Resets chips on power-up.
Wire Wire Line
	30800 15200 31250 15200
Wire Wire Line
	30950 15925 30125 15925
Wire Wire Line
	30125 15925 30125 16125
Wire Wire Line
	30125 16125 29825 16125
Connection ~ 30950 15925
Wire Wire Line
	30950 15925 30950 15950
$Comp
L Device:CP1 C51
U 1 1 67A16D60
P 30125 16275
F 0 "C51" H 29875 16350 50  0000 L CNN
F 1 "1.0  25V" H 29975 16175 50  0000 L CNN
F 2 "" H 30125 16275 50  0001 C CNN
F 3 "~" H 30125 16275 50  0001 C CNN
	1    30125 16275
	1    0    0    -1  
$EndComp
Connection ~ 30125 16125
Wire Wire Line
	30125 16425 30125 16500
Wire Wire Line
	30125 16500 29525 16500
Wire Wire Line
	29525 16500 29525 16425
$Comp
L Device:CP1 C50
U 1 1 67A97185
P 29100 16275
F 0 "C50" H 28850 16350 50  0000 L CNN
F 1 "47  16V" H 28950 16175 50  0000 L CNN
F 2 "" H 29100 16275 50  0001 C CNN
F 3 "~" H 29100 16275 50  0001 C CNN
	1    29100 16275
	1    0    0    -1  
$EndComp
Wire Wire Line
	29225 16125 29100 16125
Wire Wire Line
	29525 16500 29100 16500
Wire Wire Line
	29100 16500 29100 16425
Connection ~ 29525 16500
$Comp
L Device:D VR?
U 1 1 67B97BC4
P 29525 15925
F 0 "VR?" V 29450 15725 50  0000 L CNN
F 1 "1N5402" V 29550 15575 50  0000 L CNN
F 2 "" H 29525 15925 50  0001 C CNN
F 3 "~" H 29525 15925 50  0001 C CNN
	1    29525 15925
	-1   0    0    1   
$EndComp
Wire Wire Line
	29100 16125 29100 15925
Wire Wire Line
	29100 15925 29375 15925
Connection ~ 29100 16125
Wire Wire Line
	29675 15925 30125 15925
Connection ~ 30125 15925
Wire Wire Line
	29525 16500 29525 16575
Text GLabel 29525 16575 3    60   Input ~ 0
GND
$Comp
L device1:C_Small C6
U 1 1 67E194C9
P 29975 20750
F 0 "C6" H 29925 20900 50  0000 L CNN
F 1 "0.1" H 29900 20600 50  0000 L CNN
F 2 "" H 29975 20750 50  0001 C CNN
F 3 "" H 29975 20750 50  0001 C CNN
	1    29975 20750
	1    0    0    -1  
$EndComp
Wire Wire Line
	29975 20650 30150 20650
Wire Wire Line
	29775 20850 29975 20850
$Comp
L device1:C_Small C23
U 1 1 67F209FF
P 30150 20750
F 0 "C23" H 30100 20900 50  0000 L CNN
F 1 "0.1" H 30075 20600 50  0000 L CNN
F 2 "" H 30150 20750 50  0001 C CNN
F 3 "" H 30150 20750 50  0001 C CNN
	1    30150 20750
	1    0    0    -1  
$EndComp
Connection ~ 30150 20650
Wire Wire Line
	30150 20650 30325 20650
Connection ~ 30150 20850
Wire Wire Line
	30150 20850 30325 20850
$Comp
L device1:C_Small C24
U 1 1 67F20CFB
P 30325 20750
F 0 "C24" H 30275 20900 50  0000 L CNN
F 1 "0.1" H 30250 20600 50  0000 L CNN
F 2 "" H 30325 20750 50  0001 C CNN
F 3 "" H 30325 20750 50  0001 C CNN
	1    30325 20750
	1    0    0    -1  
$EndComp
Connection ~ 30325 20650
Wire Wire Line
	30325 20650 30500 20650
Connection ~ 30325 20850
Wire Wire Line
	30325 20850 30500 20850
$Comp
L device1:C_Small C25
U 1 1 67F21053
P 30500 20750
F 0 "C25" H 30450 20900 50  0000 L CNN
F 1 "0.1" H 30425 20600 50  0000 L CNN
F 2 "" H 30500 20750 50  0001 C CNN
F 3 "" H 30500 20750 50  0001 C CNN
	1    30500 20750
	1    0    0    -1  
$EndComp
Connection ~ 30500 20650
Wire Wire Line
	30500 20650 30675 20650
Connection ~ 30500 20850
Wire Wire Line
	30500 20850 30675 20850
$Comp
L device1:C_Small C26
U 1 1 67F21358
P 30675 20750
F 0 "C26" H 30625 20900 50  0000 L CNN
F 1 "0.1" H 30600 20600 50  0000 L CNN
F 2 "" H 30675 20750 50  0001 C CNN
F 3 "" H 30675 20750 50  0001 C CNN
	1    30675 20750
	1    0    0    -1  
$EndComp
$Comp
L device1:C_Small C27
U 1 1 67F21362
P 30850 20750
F 0 "C27" H 30800 20900 50  0000 L CNN
F 1 "0.1" H 30775 20600 50  0000 L CNN
F 2 "" H 30850 20750 50  0001 C CNN
F 3 "" H 30850 20750 50  0001 C CNN
	1    30850 20750
	1    0    0    -1  
$EndComp
$Comp
L device1:C_Small C28
U 1 1 67F2136C
P 31025 20750
F 0 "C28" H 30975 20900 50  0000 L CNN
F 1 "0.1" H 30950 20600 50  0000 L CNN
F 2 "" H 31025 20750 50  0001 C CNN
F 3 "" H 31025 20750 50  0001 C CNN
	1    31025 20750
	1    0    0    -1  
$EndComp
$Comp
L device1:C_Small C29
U 1 1 67F21376
P 31200 20750
F 0 "C29" H 31150 20900 50  0000 L CNN
F 1 "0.1" H 31125 20600 50  0000 L CNN
F 2 "" H 31200 20750 50  0001 C CNN
F 3 "" H 31200 20750 50  0001 C CNN
	1    31200 20750
	1    0    0    -1  
$EndComp
Connection ~ 30675 20650
Wire Wire Line
	30675 20650 30850 20650
Connection ~ 30675 20850
Wire Wire Line
	30675 20850 30850 20850
Connection ~ 30850 20650
Wire Wire Line
	30850 20650 31025 20650
Connection ~ 30850 20850
Wire Wire Line
	30850 20850 31025 20850
Connection ~ 31025 20650
Wire Wire Line
	31025 20650 31200 20650
Connection ~ 31025 20850
Wire Wire Line
	31025 20850 31200 20850
Connection ~ 31200 20650
Wire Wire Line
	31200 20650 31375 20650
Connection ~ 31200 20850
Wire Wire Line
	31200 20850 31375 20850
$Comp
L device1:C_Small C30
U 1 1 67FAA3BA
P 31375 20750
F 0 "C30" H 31325 20900 50  0000 L CNN
F 1 "0.1" H 31300 20600 50  0000 L CNN
F 2 "" H 31375 20750 50  0001 C CNN
F 3 "" H 31375 20750 50  0001 C CNN
	1    31375 20750
	1    0    0    -1  
$EndComp
$Comp
L device1:C_Small C31
U 1 1 67FAA3C4
P 31550 20750
F 0 "C31" H 31500 20900 50  0000 L CNN
F 1 "0.1" H 31475 20600 50  0000 L CNN
F 2 "" H 31550 20750 50  0001 C CNN
F 3 "" H 31550 20750 50  0001 C CNN
	1    31550 20750
	1    0    0    -1  
$EndComp
$Comp
L device1:C_Small C32
U 1 1 67FAA3CE
P 31725 20750
F 0 "C32" H 31675 20900 50  0000 L CNN
F 1 "0.1" H 31650 20600 50  0000 L CNN
F 2 "" H 31725 20750 50  0001 C CNN
F 3 "" H 31725 20750 50  0001 C CNN
	1    31725 20750
	1    0    0    -1  
$EndComp
$Comp
L device1:C_Small C33
U 1 1 67FAA3D8
P 31900 20750
F 0 "C33" H 31850 20900 50  0000 L CNN
F 1 "0.1" H 31825 20600 50  0000 L CNN
F 2 "" H 31900 20750 50  0001 C CNN
F 3 "" H 31900 20750 50  0001 C CNN
	1    31900 20750
	1    0    0    -1  
$EndComp
$Comp
L device1:C_Small C34
U 1 1 67FAA3E2
P 32075 20750
F 0 "C34" H 32025 20900 50  0000 L CNN
F 1 "0.1" H 32000 20600 50  0000 L CNN
F 2 "" H 32075 20750 50  0001 C CNN
F 3 "" H 32075 20750 50  0001 C CNN
	1    32075 20750
	1    0    0    -1  
$EndComp
$Comp
L device1:C_Small C36
U 1 1 67FAA3EC
P 29975 21200
F 0 "C36" H 29925 21350 50  0000 L CNN
F 1 "0.1" H 29900 21050 50  0000 L CNN
F 2 "" H 29975 21200 50  0001 C CNN
F 3 "" H 29975 21200 50  0001 C CNN
	1    29975 21200
	1    0    0    -1  
$EndComp
$Comp
L device1:C_Small C37
U 1 1 67FAA3F6
P 30150 21200
F 0 "C37" H 30100 21350 50  0000 L CNN
F 1 "0.1" H 30075 21050 50  0000 L CNN
F 2 "" H 30150 21200 50  0001 C CNN
F 3 "" H 30150 21200 50  0001 C CNN
	1    30150 21200
	1    0    0    -1  
$EndComp
$Comp
L device1:C_Small C38
U 1 1 67FAA400
P 30325 21200
F 0 "C38" H 30275 21350 50  0000 L CNN
F 1 "0.1" H 30250 21050 50  0000 L CNN
F 2 "" H 30325 21200 50  0001 C CNN
F 3 "" H 30325 21200 50  0001 C CNN
	1    30325 21200
	1    0    0    -1  
$EndComp
Connection ~ 31375 20650
Wire Wire Line
	31375 20650 31550 20650
Connection ~ 31375 20850
Wire Wire Line
	31375 20850 31550 20850
Connection ~ 31550 20650
Wire Wire Line
	31550 20650 31725 20650
Connection ~ 31550 20850
Wire Wire Line
	31550 20850 31725 20850
Connection ~ 31725 20650
Wire Wire Line
	31725 20650 31900 20650
Connection ~ 31725 20850
Wire Wire Line
	31725 20850 31900 20850
Connection ~ 31900 20650
Wire Wire Line
	31900 20650 32075 20650
Connection ~ 31900 20850
Wire Wire Line
	31900 20850 32075 20850
Wire Wire Line
	29800 21300 29975 21300
Connection ~ 29975 21300
Wire Wire Line
	29975 21300 30150 21300
Connection ~ 30150 21300
Wire Wire Line
	30150 21300 30325 21300
Connection ~ 30325 21300
Wire Wire Line
	30325 21300 30500 21300
Wire Wire Line
	29800 21100 29975 21100
Connection ~ 29975 21100
Wire Wire Line
	29975 21100 30150 21100
Connection ~ 30150 21100
Wire Wire Line
	30150 21100 30325 21100
Connection ~ 30325 21100
Wire Wire Line
	30325 21100 30500 21100
$Comp
L device1:C_Small C39
U 1 1 6814F134
P 30500 21200
F 0 "C39" H 30450 21350 50  0000 L CNN
F 1 "0.1" H 30425 21050 50  0000 L CNN
F 2 "" H 30500 21200 50  0001 C CNN
F 3 "" H 30500 21200 50  0001 C CNN
	1    30500 21200
	1    0    0    -1  
$EndComp
$Comp
L device1:C_Small C40
U 1 1 6814F13E
P 30675 21200
F 0 "C40" H 30625 21350 50  0000 L CNN
F 1 "0.1" H 30600 21050 50  0000 L CNN
F 2 "" H 30675 21200 50  0001 C CNN
F 3 "" H 30675 21200 50  0001 C CNN
	1    30675 21200
	1    0    0    -1  
$EndComp
$Comp
L device1:C_Small C41
U 1 1 6814F148
P 30850 21200
F 0 "C41" H 30800 21350 50  0000 L CNN
F 1 "0.1" H 30775 21050 50  0000 L CNN
F 2 "" H 30850 21200 50  0001 C CNN
F 3 "" H 30850 21200 50  0001 C CNN
	1    30850 21200
	1    0    0    -1  
$EndComp
$Comp
L device1:C_Small C42
U 1 1 6814F152
P 31025 21200
F 0 "C42" H 30975 21350 50  0000 L CNN
F 1 "0.1" H 30950 21050 50  0000 L CNN
F 2 "" H 31025 21200 50  0001 C CNN
F 3 "" H 31025 21200 50  0001 C CNN
	1    31025 21200
	1    0    0    -1  
$EndComp
$Comp
L device1:C_Small C43
U 1 1 6814F15C
P 31200 21200
F 0 "C43" H 31150 21350 50  0000 L CNN
F 1 "0.1" H 31125 21050 50  0000 L CNN
F 2 "" H 31200 21200 50  0001 C CNN
F 3 "" H 31200 21200 50  0001 C CNN
	1    31200 21200
	1    0    0    -1  
$EndComp
$Comp
L device1:C_Small C44
U 1 1 6814F166
P 31375 21200
F 0 "C44" H 31325 21350 50  0000 L CNN
F 1 "0.1" H 31300 21050 50  0000 L CNN
F 2 "" H 31375 21200 50  0001 C CNN
F 3 "" H 31375 21200 50  0001 C CNN
	1    31375 21200
	1    0    0    -1  
$EndComp
$Comp
L device1:C_Small C45
U 1 1 6814F170
P 31550 21200
F 0 "C45" H 31500 21350 50  0000 L CNN
F 1 "0.1" H 31475 21050 50  0000 L CNN
F 2 "" H 31550 21200 50  0001 C CNN
F 3 "" H 31550 21200 50  0001 C CNN
	1    31550 21200
	1    0    0    -1  
$EndComp
$Comp
L device1:C_Small C46
U 1 1 6814F17A
P 31725 21200
F 0 "C46" H 31675 21350 50  0000 L CNN
F 1 "0.1" H 31650 21050 50  0000 L CNN
F 2 "" H 31725 21200 50  0001 C CNN
F 3 "" H 31725 21200 50  0001 C CNN
	1    31725 21200
	1    0    0    -1  
$EndComp
$Comp
L device1:C_Small C47
U 1 1 6814F184
P 31900 21200
F 0 "C47" H 31850 21350 50  0000 L CNN
F 1 "0.1" H 31825 21050 50  0000 L CNN
F 2 "" H 31900 21200 50  0001 C CNN
F 3 "" H 31900 21200 50  0001 C CNN
	1    31900 21200
	1    0    0    -1  
$EndComp
$Comp
L device1:C_Small C48
U 1 1 6814F18E
P 32075 21200
F 0 "C48" H 32025 21350 50  0000 L CNN
F 1 "0.1" H 32000 21050 50  0000 L CNN
F 2 "" H 32075 21200 50  0001 C CNN
F 3 "" H 32075 21200 50  0001 C CNN
	1    32075 21200
	1    0    0    -1  
$EndComp
$Comp
L device1:C_Small C49
U 1 1 6814F198
P 32250 21200
F 0 "C49" H 32200 21350 50  0000 L CNN
F 1 "0.1" H 32175 21050 50  0000 L CNN
F 2 "" H 32250 21200 50  0001 C CNN
F 3 "" H 32250 21200 50  0001 C CNN
	1    32250 21200
	1    0    0    -1  
$EndComp
Connection ~ 30500 21100
Wire Wire Line
	30500 21100 30675 21100
Connection ~ 30500 21300
Wire Wire Line
	30500 21300 30675 21300
Connection ~ 30675 21100
Wire Wire Line
	30675 21100 30850 21100
Connection ~ 30675 21300
Wire Wire Line
	30675 21300 30850 21300
Connection ~ 30850 21100
Wire Wire Line
	30850 21100 31025 21100
Connection ~ 30850 21300
Wire Wire Line
	30850 21300 31025 21300
Connection ~ 31025 21100
Wire Wire Line
	31025 21100 31200 21100
Connection ~ 31025 21300
Wire Wire Line
	31025 21300 31200 21300
Connection ~ 31200 21100
Wire Wire Line
	31200 21100 31375 21100
Connection ~ 31200 21300
Wire Wire Line
	31200 21300 31375 21300
Connection ~ 31375 21100
Wire Wire Line
	31375 21100 31550 21100
Connection ~ 31375 21300
Wire Wire Line
	31375 21300 31550 21300
Connection ~ 31550 21100
Wire Wire Line
	31550 21100 31725 21100
Connection ~ 31550 21300
Wire Wire Line
	31550 21300 31725 21300
Connection ~ 31725 21100
Wire Wire Line
	31725 21100 31900 21100
Connection ~ 31725 21300
Wire Wire Line
	31725 21300 31900 21300
Connection ~ 31900 21100
Wire Wire Line
	31900 21100 32075 21100
Connection ~ 31900 21300
Wire Wire Line
	31900 21300 32075 21300
Connection ~ 32075 21100
Wire Wire Line
	32075 21100 32250 21100
Connection ~ 32075 21300
Wire Wire Line
	32075 21300 32250 21300
Connection ~ 29975 20850
Wire Wire Line
	29975 20850 30150 20850
Text GLabel 29775 20650 0    60   Input ~ 0
5V
Wire Wire Line
	29775 20650 29975 20650
Connection ~ 29975 20650
Text GLabel 29775 20850 0    60   Input ~ 0
GND
Text GLabel 29800 21100 0    60   Input ~ 0
5V
Text GLabel 29800 21300 0    60   Input ~ 0
GND
Wire Wire Line
	29100 15925 28800 15925
Connection ~ 29100 15925
Text GLabel 28800 15925 0    60   Output ~ 0
5V
Text Notes 28650 15825 0    50   ~ 0
Main 5V Output
Wire Wire Line
	21075 22600 21500 22600
Connection ~ 21500 22600
Wire Wire Line
	21500 22600 21925 22600
Connection ~ 21925 22600
Wire Wire Line
	21925 22600 22350 22600
Connection ~ 22350 22600
Wire Wire Line
	22350 22600 22775 22600
Connection ~ 22775 22600
Wire Wire Line
	22775 22600 23200 22600
Connection ~ 23200 22600
Wire Wire Line
	23200 22600 23650 22600
Connection ~ 23650 22600
Wire Wire Line
	23650 22600 24100 22600
Connection ~ 24100 22600
Wire Wire Line
	24100 22600 24575 22600
Connection ~ 24575 22600
Wire Wire Line
	24575 22600 25050 22600
Connection ~ 25050 22600
Wire Wire Line
	25050 22600 25500 22600
Connection ~ 25500 22600
Wire Wire Line
	25500 22600 25975 22600
Wire Wire Line
	21075 21600 21500 21600
Connection ~ 21500 21600
Wire Wire Line
	21500 21600 21925 21600
Connection ~ 21925 21600
Wire Wire Line
	21925 21600 22350 21600
Connection ~ 22350 21600
Wire Wire Line
	22350 21600 22775 21600
Connection ~ 22775 21600
Wire Wire Line
	22775 21600 23200 21600
Connection ~ 23200 21600
Wire Wire Line
	23200 21600 23650 21600
Connection ~ 23650 21600
Wire Wire Line
	23650 21600 24100 21600
Connection ~ 24100 21600
Wire Wire Line
	24100 21600 24575 21600
Connection ~ 24575 21600
Wire Wire Line
	24575 21600 25050 21600
Connection ~ 25050 21600
Wire Wire Line
	25050 21600 25500 21600
Connection ~ 25500 21600
Wire Wire Line
	25500 21600 25975 21600
Wire Wire Line
	27000 22600 27425 22600
Connection ~ 27000 22600
Wire Wire Line
	26675 21600 26675 21750
Wire Wire Line
	26675 21950 26675 22600
Wire Wire Line
	26675 22600 27000 22600
Text GLabel 20750 21600 0    60   Input ~ 0
5V
Wire Wire Line
	20750 21600 21075 21600
Connection ~ 21075 21600
Text GLabel 20750 22600 0    60   Input ~ 0
GND
Wire Wire Line
	21075 22600 20750 22600
Connection ~ 21075 22600
Text Notes 24125 20400 0    157  ~ 31
SPARES
Text GLabel 12525 3600 0    60   Input ~ 0
BA8
Text GLabel 12525 3700 0    60   Input ~ 0
BA9
Text GLabel 12525 3800 0    60   Input ~ 0
BA10
Text GLabel 12525 3900 0    60   Input ~ 0
BA11
Text GLabel 12525 2800 0    60   Input ~ 0
BA0
Text GLabel 12525 2900 0    60   Input ~ 0
BA1
Text GLabel 12525 3000 0    60   Input ~ 0
BA2
Text GLabel 12525 3100 0    60   Input ~ 0
BA3
Text GLabel 12525 3200 0    60   Input ~ 0
BA4
Text GLabel 12525 3300 0    60   Input ~ 0
BA5
Text GLabel 12525 3400 0    60   Input ~ 0
BA6
Text GLabel 12525 3500 0    60   Input ~ 0
BA7
Text GLabel 13325 3500 2    60   BiDi ~ 0
BD7
Text GLabel 13325 3400 2    60   BiDi ~ 0
BD6
Text GLabel 13325 3300 2    60   BiDi ~ 0
BD5
Text GLabel 13325 3200 2    60   BiDi ~ 0
BD4
Text GLabel 13325 3100 2    60   BiDi ~ 0
BD3
Text GLabel 13325 3000 2    60   BiDi ~ 0
BD2
Text GLabel 13325 2900 2    60   BiDi ~ 0
BD1
Text GLabel 13325 2800 2    60   BiDi ~ 0
BD0
Text GLabel 12300 4975 0    60   Input ~ 0
~NOROM
Text GLabel 12300 4875 0    60   Input ~ 0
~SELD
$Comp
L Memory_EPROM:27C040 UB3
U 1 1 5ED3F52D
P 12925 3900
F 0 "UB3" H 12925 5381 50  0000 C CNN
F 1 "27C040" H 12925 5290 50  0000 C CNN
F 2 "" H 12925 3900 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/devicedoc/doc0189.pdf" H 12925 3900 50  0001 C CNN
	1    12925 3900
	1    0    0    -1  
$EndComp
Text Notes 13225 2300 2    157  ~ 31
ROM
$Comp
L cbm-steve:UM61512A UA3
U 1 1 5F0C6335
P 14925 3700
F 0 "UA3" H 14925 4831 50  0000 C CNN
F 1 "UM61512A" H 14925 4740 50  0000 C CNN
F 2 "" H 15025 3700 50  0000 C CNN
F 3 "" H 15025 3700 50  0000 C CNN
	1    14925 3700
	1    0    0    -1  
$EndComp
Text Notes 15150 2325 2    157  ~ 31
RAM
Text GLabel 14325 3600 0    60   Input ~ 0
BA8
Text GLabel 14325 3700 0    60   Input ~ 0
BA9
Text GLabel 14325 3800 0    60   Input ~ 0
BA10
Text GLabel 14325 3900 0    60   Input ~ 0
BA11
Text GLabel 14325 2800 0    60   Input ~ 0
BA0
Text GLabel 14325 2900 0    60   Input ~ 0
BA1
Text GLabel 14325 3000 0    60   Input ~ 0
BA2
Text GLabel 14325 3100 0    60   Input ~ 0
BA3
Text GLabel 14325 3200 0    60   Input ~ 0
BA4
Text GLabel 14325 3300 0    60   Input ~ 0
BA5
Text GLabel 14325 3400 0    60   Input ~ 0
BA6
Text GLabel 14325 3500 0    60   Input ~ 0
BA7
Text GLabel 14325 4000 0    60   Input ~ 0
BA12
Text GLabel 14325 4100 0    60   Input ~ 0
BA13
Text GLabel 14325 4200 0    60   Input ~ 0
BA14
Text GLabel 14325 4300 0    60   Input ~ 0
BA15
Wire Notes Line
	8200 1175 21150 1175
Wire Notes Line
	21150 1175 21150 8175
Wire Notes Line
	21150 8175 8200 8175
Wire Notes Line
	8200 8175 8200 1175
NoConn ~ 20900 20650
NoConn ~ 20900 20975
NoConn ~ 20900 21300
NoConn ~ 21500 21300
NoConn ~ 21500 20975
NoConn ~ 21500 20650
NoConn ~ 21600 20775
NoConn ~ 21600 20975
NoConn ~ 21600 21200
NoConn ~ 21600 21300
NoConn ~ 21600 21400
NoConn ~ 22200 21300
NoConn ~ 22200 20875
NoConn ~ 22350 20775
NoConn ~ 22350 20975
NoConn ~ 22950 20875
NoConn ~ 22950 21300
NoConn ~ 23075 21300
NoConn ~ 23075 20975
NoConn ~ 23075 20650
NoConn ~ 23075 20325
NoConn ~ 23675 20325
NoConn ~ 23675 20650
NoConn ~ 23675 20975
NoConn ~ 23675 21300
NoConn ~ 24425 21300
NoConn ~ 24425 20875
NoConn ~ 24650 21025
NoConn ~ 24650 21325
NoConn ~ 25650 21025
NoConn ~ 25650 21125
NoConn ~ 25650 21225
NoConn ~ 25650 21325
Text Notes 6850 17600 0    118  ~ 0
!MOD!
Text Notes 11375 10700 0    118  ~ 0
!MOD!
Text Notes 11925 4400 0    118  ~ 0
!MOD!
Text Notes 9100 11725 0    118  ~ 0
!MOD!
Text Notes 8975 13825 0    118  ~ 0
!MOD!
Text Notes 14700 5125 0    118  ~ 0
!MOD!
Text Notes 31675 13675 0    118  ~ 0
!MOD!
Text Notes 31675 15325 0    118  ~ 0
!MOD!
$Comp
L cbm:2016 UF12
U 1 1 6069900A
P 13200 10725
F 0 "UF12" H 13200 10800 50  0000 C CNN
F 1 "2016" H 13200 10675 50  0000 C CNN
F 2 "" H 13200 10725 50  0000 C CNN
F 3 "" H 13200 10725 50  0000 C CNN
	1    13200 10725
	1    0    0    -1  
$EndComp
Text GLabel 12500 11025 0    60   Input ~ 0
SA10
Text GLabel 12500 11275 0    60   Input ~ 0
GND
Text GLabel 13875 12525 2    60   BiDi ~ 0
ESD7
Text GLabel 13875 12425 2    60   BiDi ~ 0
ESD6
Text GLabel 13875 12325 2    60   BiDi ~ 0
ESD5
Text GLabel 13875 12225 2    60   BiDi ~ 0
ESD4
Text GLabel 13875 12125 2    60   BiDi ~ 0
ESD3
Text GLabel 13875 12025 2    60   BiDi ~ 0
ESD2
Text GLabel 13875 11925 2    60   BiDi ~ 0
ESD1
Text GLabel 13875 11825 2    60   BiDi ~ 0
ESD0
Text GLabel 12475 11825 0    60   Input ~ 0
SA0
Text GLabel 12475 11925 0    60   Input ~ 0
SA1
Text GLabel 12475 12025 0    60   Input ~ 0
SA2
Text GLabel 12475 12125 0    60   Input ~ 0
SA3
Text GLabel 12475 12225 0    60   Input ~ 0
SA4
Text GLabel 12475 12325 0    60   Input ~ 0
SA5
Text GLabel 12475 12425 0    60   Input ~ 0
SA6
Text GLabel 12475 12525 0    60   Input ~ 0
SA7
Text GLabel 12475 12625 0    60   Input ~ 0
SA8
Text GLabel 12475 12725 0    60   Input ~ 0
SA9
Text GLabel 12475 13225 0    60   Input ~ 0
GND
$Comp
L cbm:2016 UF?
U 1 1 60932B2E
P 13175 12525
F 0 "UF?" H 13175 12600 50  0000 C CNN
F 1 "2016" H 13175 12475 50  0000 C CNN
F 2 "" H 13175 12525 50  0000 C CNN
F 3 "" H 13175 12525 50  0000 C CNN
	1    13175 12525
	1    0    0    -1  
$EndComp
Text GLabel 12475 12825 0    60   Input ~ 0
SA10
Text GLabel 12475 13075 0    60   Input ~ 0
GND
Text Notes 12350 13500 0    50   ~ 0
* MOD: replace two 2114 with one  2016.
$EndSCHEMATC