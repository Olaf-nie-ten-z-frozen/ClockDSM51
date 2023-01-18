                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
                              4 ; This file was generated Wed Jan 18 21:26:05 2023
                              5 ;--------------------------------------------------------
                              6 	.module ZegarekDSM51
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _WZOR
                             13 	.globl _t0_int
                             14 	.globl _main
                             15 	.globl _obslugaKlaw
                             16 	.globl _aktCzas
                             17 	.globl _wyswietl
                             18 	.globl _aktWys
                             19 	.globl _timerInit
                             20 	.globl _seg7Init
                             21 	.globl _TESTLED
                             22 	.globl _CY
                             23 	.globl _AC
                             24 	.globl _F0
                             25 	.globl _RS1
                             26 	.globl _RS0
                             27 	.globl _OV
                             28 	.globl _F1
                             29 	.globl _P
                             30 	.globl _PS
                             31 	.globl _PT1
                             32 	.globl _PX1
                             33 	.globl _PT0
                             34 	.globl _PX0
                             35 	.globl _RD
                             36 	.globl _WR
                             37 	.globl _T1
                             38 	.globl _T0
                             39 	.globl _INT1
                             40 	.globl _INT0
                             41 	.globl _TXD
                             42 	.globl _RXD
                             43 	.globl _P3_7
                             44 	.globl _P3_6
                             45 	.globl _P3_5
                             46 	.globl _P3_4
                             47 	.globl _P3_3
                             48 	.globl _P3_2
                             49 	.globl _P3_1
                             50 	.globl _P3_0
                             51 	.globl _EA
                             52 	.globl _ES
                             53 	.globl _ET1
                             54 	.globl _EX1
                             55 	.globl _ET0
                             56 	.globl _EX0
                             57 	.globl _P2_7
                             58 	.globl _P2_6
                             59 	.globl _P2_5
                             60 	.globl _P2_4
                             61 	.globl _P2_3
                             62 	.globl _P2_2
                             63 	.globl _P2_1
                             64 	.globl _P2_0
                             65 	.globl _SM0
                             66 	.globl _SM1
                             67 	.globl _SM2
                             68 	.globl _REN
                             69 	.globl _TB8
                             70 	.globl _RB8
                             71 	.globl _TI
                             72 	.globl _RI
                             73 	.globl _P1_7
                             74 	.globl _P1_6
                             75 	.globl _P1_5
                             76 	.globl _P1_4
                             77 	.globl _P1_3
                             78 	.globl _P1_2
                             79 	.globl _P1_1
                             80 	.globl _P1_0
                             81 	.globl _TF1
                             82 	.globl _TR1
                             83 	.globl _TF0
                             84 	.globl _TR0
                             85 	.globl _IE1
                             86 	.globl _IT1
                             87 	.globl _IE0
                             88 	.globl _IT0
                             89 	.globl _P0_7
                             90 	.globl _P0_6
                             91 	.globl _P0_5
                             92 	.globl _P0_4
                             93 	.globl _P0_3
                             94 	.globl _P0_2
                             95 	.globl _P0_1
                             96 	.globl _P0_0
                             97 	.globl _B
                             98 	.globl _ACC
                             99 	.globl _PSW
                            100 	.globl _IP
                            101 	.globl _P3
                            102 	.globl _IE
                            103 	.globl _P2
                            104 	.globl _SBUF
                            105 	.globl _SCON
                            106 	.globl _P1
                            107 	.globl _TH1
                            108 	.globl _TH0
                            109 	.globl _TL1
                            110 	.globl _TL0
                            111 	.globl _TMOD
                            112 	.globl _TCON
                            113 	.globl _PCON
                            114 	.globl _DPH
                            115 	.globl _DPL
                            116 	.globl _SP
                            117 	.globl _P0
                            118 	.globl _flagSecondPassed
                            119 	.globl _flagPrzerwT0
                            120 	.globl _SEG_OFF
                            121 	.globl _licznikT0
                            122 	.globl _led_led
                            123 	.globl _led_wyb
                            124 	.globl _kbrd
                            125 	.globl _wybranyWys
                            126 	.globl _iteratorWys
                            127 	.globl _daneWys
                            128 	.globl _wybierak
                            129 	.globl _godziny
                            130 	.globl _minuty
                            131 	.globl _sekundy
                            132 ;--------------------------------------------------------
                            133 ; special function registers
                            134 ;--------------------------------------------------------
                            135 	.area RSEG    (DATA)
                    0080    136 _P0	=	0x0080
                    0081    137 _SP	=	0x0081
                    0082    138 _DPL	=	0x0082
                    0083    139 _DPH	=	0x0083
                    0087    140 _PCON	=	0x0087
                    0088    141 _TCON	=	0x0088
                    0089    142 _TMOD	=	0x0089
                    008A    143 _TL0	=	0x008a
                    008B    144 _TL1	=	0x008b
                    008C    145 _TH0	=	0x008c
                    008D    146 _TH1	=	0x008d
                    0090    147 _P1	=	0x0090
                    0098    148 _SCON	=	0x0098
                    0099    149 _SBUF	=	0x0099
                    00A0    150 _P2	=	0x00a0
                    00A8    151 _IE	=	0x00a8
                    00B0    152 _P3	=	0x00b0
                    00B8    153 _IP	=	0x00b8
                    00D0    154 _PSW	=	0x00d0
                    00E0    155 _ACC	=	0x00e0
                    00F0    156 _B	=	0x00f0
                            157 ;--------------------------------------------------------
                            158 ; special function bits
                            159 ;--------------------------------------------------------
                            160 	.area RSEG    (DATA)
                    0080    161 _P0_0	=	0x0080
                    0081    162 _P0_1	=	0x0081
                    0082    163 _P0_2	=	0x0082
                    0083    164 _P0_3	=	0x0083
                    0084    165 _P0_4	=	0x0084
                    0085    166 _P0_5	=	0x0085
                    0086    167 _P0_6	=	0x0086
                    0087    168 _P0_7	=	0x0087
                    0088    169 _IT0	=	0x0088
                    0089    170 _IE0	=	0x0089
                    008A    171 _IT1	=	0x008a
                    008B    172 _IE1	=	0x008b
                    008C    173 _TR0	=	0x008c
                    008D    174 _TF0	=	0x008d
                    008E    175 _TR1	=	0x008e
                    008F    176 _TF1	=	0x008f
                    0090    177 _P1_0	=	0x0090
                    0091    178 _P1_1	=	0x0091
                    0092    179 _P1_2	=	0x0092
                    0093    180 _P1_3	=	0x0093
                    0094    181 _P1_4	=	0x0094
                    0095    182 _P1_5	=	0x0095
                    0096    183 _P1_6	=	0x0096
                    0097    184 _P1_7	=	0x0097
                    0098    185 _RI	=	0x0098
                    0099    186 _TI	=	0x0099
                    009A    187 _RB8	=	0x009a
                    009B    188 _TB8	=	0x009b
                    009C    189 _REN	=	0x009c
                    009D    190 _SM2	=	0x009d
                    009E    191 _SM1	=	0x009e
                    009F    192 _SM0	=	0x009f
                    00A0    193 _P2_0	=	0x00a0
                    00A1    194 _P2_1	=	0x00a1
                    00A2    195 _P2_2	=	0x00a2
                    00A3    196 _P2_3	=	0x00a3
                    00A4    197 _P2_4	=	0x00a4
                    00A5    198 _P2_5	=	0x00a5
                    00A6    199 _P2_6	=	0x00a6
                    00A7    200 _P2_7	=	0x00a7
                    00A8    201 _EX0	=	0x00a8
                    00A9    202 _ET0	=	0x00a9
                    00AA    203 _EX1	=	0x00aa
                    00AB    204 _ET1	=	0x00ab
                    00AC    205 _ES	=	0x00ac
                    00AF    206 _EA	=	0x00af
                    00B0    207 _P3_0	=	0x00b0
                    00B1    208 _P3_1	=	0x00b1
                    00B2    209 _P3_2	=	0x00b2
                    00B3    210 _P3_3	=	0x00b3
                    00B4    211 _P3_4	=	0x00b4
                    00B5    212 _P3_5	=	0x00b5
                    00B6    213 _P3_6	=	0x00b6
                    00B7    214 _P3_7	=	0x00b7
                    00B0    215 _RXD	=	0x00b0
                    00B1    216 _TXD	=	0x00b1
                    00B2    217 _INT0	=	0x00b2
                    00B3    218 _INT1	=	0x00b3
                    00B4    219 _T0	=	0x00b4
                    00B5    220 _T1	=	0x00b5
                    00B6    221 _WR	=	0x00b6
                    00B7    222 _RD	=	0x00b7
                    00B8    223 _PX0	=	0x00b8
                    00B9    224 _PT0	=	0x00b9
                    00BA    225 _PX1	=	0x00ba
                    00BB    226 _PT1	=	0x00bb
                    00BC    227 _PS	=	0x00bc
                    00D0    228 _P	=	0x00d0
                    00D1    229 _F1	=	0x00d1
                    00D2    230 _OV	=	0x00d2
                    00D3    231 _RS0	=	0x00d3
                    00D4    232 _RS1	=	0x00d4
                    00D5    233 _F0	=	0x00d5
                    00D6    234 _AC	=	0x00d6
                    00D7    235 _CY	=	0x00d7
                    0097    236 _TESTLED	=	0x0097
                            237 ;--------------------------------------------------------
                            238 ; overlayable register banks
                            239 ;--------------------------------------------------------
                            240 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     241 	.ds 8
                            242 ;--------------------------------------------------------
                            243 ; internal ram data
                            244 ;--------------------------------------------------------
                            245 	.area DSEG    (DATA)
   0008                     246 _sekundy::
   0008                     247 	.ds 1
   0009                     248 _minuty::
   0009                     249 	.ds 1
   000A                     250 _godziny::
   000A                     251 	.ds 1
   000B                     252 _wybierak::
   000B                     253 	.ds 1
   000C                     254 _daneWys::
   000C                     255 	.ds 6
   0012                     256 _iteratorWys::
   0012                     257 	.ds 1
   0013                     258 _wybranyWys::
   0013                     259 	.ds 1
   0014                     260 _kbrd::
   0014                     261 	.ds 4
   0018                     262 _led_wyb::
   0018                     263 	.ds 2
   001A                     264 _led_led::
   001A                     265 	.ds 2
   001C                     266 _licznikT0::
   001C                     267 	.ds 2
                            268 ;--------------------------------------------------------
                            269 ; overlayable items in internal ram 
                            270 ;--------------------------------------------------------
                            271 	.area	OSEG    (OVR,DATA)
                            272 ;--------------------------------------------------------
                            273 ; Stack segment in internal ram 
                            274 ;--------------------------------------------------------
                            275 	.area	SSEG	(DATA)
   0021                     276 __start__stack:
   0021                     277 	.ds	1
                            278 
                            279 ;--------------------------------------------------------
                            280 ; indirectly addressable internal ram data
                            281 ;--------------------------------------------------------
                            282 	.area ISEG    (DATA)
                            283 ;--------------------------------------------------------
                            284 ; absolute internal ram data
                            285 ;--------------------------------------------------------
                            286 	.area IABS    (ABS,DATA)
                            287 	.area IABS    (ABS,DATA)
                            288 ;--------------------------------------------------------
                            289 ; bit data
                            290 ;--------------------------------------------------------
                            291 	.area BSEG    (BIT)
                    0096    292 _SEG_OFF	=	0x0096
   0000                     293 _flagPrzerwT0::
   0000                     294 	.ds 1
   0001                     295 _flagSecondPassed::
   0001                     296 	.ds 1
                            297 ;--------------------------------------------------------
                            298 ; paged external ram data
                            299 ;--------------------------------------------------------
                            300 	.area PSEG    (PAG,XDATA)
                            301 ;--------------------------------------------------------
                            302 ; external ram data
                            303 ;--------------------------------------------------------
                            304 	.area XSEG    (XDATA)
                            305 ;--------------------------------------------------------
                            306 ; absolute external ram data
                            307 ;--------------------------------------------------------
                            308 	.area XABS    (ABS,XDATA)
                            309 ;--------------------------------------------------------
                            310 ; external initialized ram data
                            311 ;--------------------------------------------------------
                            312 	.area XISEG   (XDATA)
                            313 	.area HOME    (CODE)
                            314 	.area GSINIT0 (CODE)
                            315 	.area GSINIT1 (CODE)
                            316 	.area GSINIT2 (CODE)
                            317 	.area GSINIT3 (CODE)
                            318 	.area GSINIT4 (CODE)
                            319 	.area GSINIT5 (CODE)
                            320 	.area GSINIT  (CODE)
                            321 	.area GSFINAL (CODE)
                            322 	.area CSEG    (CODE)
                            323 ;--------------------------------------------------------
                            324 ; interrupt vector 
                            325 ;--------------------------------------------------------
                            326 	.area HOME    (CODE)
   0000                     327 __interrupt_vect:
   0000 02 00 13            328 	ljmp	__sdcc_gsinit_startup
   0003 32                  329 	reti
   0004                     330 	.ds	7
   000B 02 02 21            331 	ljmp	_t0_int
                            332 ;--------------------------------------------------------
                            333 ; global & static initialisations
                            334 ;--------------------------------------------------------
                            335 	.area HOME    (CODE)
                            336 	.area GSINIT  (CODE)
                            337 	.area GSFINAL (CODE)
                            338 	.area GSINIT  (CODE)
                            339 	.globl __sdcc_gsinit_startup
                            340 	.globl __sdcc_program_startup
                            341 	.globl __start__stack
                            342 	.globl __mcs51_genXINIT
                            343 	.globl __mcs51_genXRAMCLEAR
                            344 	.globl __mcs51_genRAMCLEAR
                            345 ;	ZegarekDSM51.c:17: unsigned char sekundy = 0; //zmienna przechowuj ca sekundy
   006C 75 08 00            346 	mov	_sekundy,#0x00
                            347 ;	ZegarekDSM51.c:18: unsigned char minuty = 0; //zmienna przechowuj ca minuty
   006F 75 09 00            348 	mov	_minuty,#0x00
                            349 ;	ZegarekDSM51.c:19: unsigned char godziny = 23; //zmienna przechowuj ca godziny
   0072 75 0A 17            350 	mov	_godziny,#0x17
                            351 ;	ZegarekDSM51.c:21: unsigned char wybierak = 0; //zmienna przechowuj ca wybrana jednostke czasu do zmienienia
   0075 75 0B 00            352 	mov	_wybierak,#0x00
                            353 ;	ZegarekDSM51.c:23: unsigned char iteratorWys = 0; //iterator do tablicy daneWys
   0078 75 12 00            354 	mov	_iteratorWys,#0x00
                            355 ;	ZegarekDSM51.c:24: unsigned char wybranyWys = 0; //wybrany wy wietlacz 7-segmentowy
   007B 75 13 00            356 	mov	_wybranyWys,#0x00
                            357 ;	ZegarekDSM51.c:27: unsigned char kbrd[4] = {0,0,0,0}; //tablica na stany klawiatury z 0
   007E 75 14 00            358 	mov	_kbrd,#0x00
   0081 75 15 00            359 	mov	(_kbrd + 0x0001),#0x00
   0084 75 16 00            360 	mov	(_kbrd + 0x0002),#0x00
   0087 75 17 00            361 	mov	(_kbrd + 0x0003),#0x00
                            362 ;	ZegarekDSM51.c:29: __xdata unsigned char* led_wyb = (__xdata unsigned char *) 0xFF30; //rejestr wyboru bitowo wy wietlacza 7-segmentowego
   008A 75 18 30            363 	mov	_led_wyb,#0x30
   008D 75 19 FF            364 	mov	(_led_wyb + 1),#0xFF
                            365 ;	ZegarekDSM51.c:30: __xdata unsigned char* led_led = (__xdata unsigned char *) 0xFF38; //rejestr wyboru cyfry do wy wietlenia
   0090 75 1A 38            366 	mov	_led_led,#0x38
   0093 75 1B FF            367 	mov	(_led_led + 1),#0xFF
                            368 ;	ZegarekDSM51.c:36: int licznikT0 = 0; //licznik przerwania T0
   0096 E4                  369 	clr	a
   0097 F5 1C               370 	mov	_licznikT0,a
   0099 F5 1D               371 	mov	(_licznikT0 + 1),a
                            372 ;	ZegarekDSM51.c:33: __bit flagPrzerwT0 = FALSE; //flaga przerwania timera 0
   009B C2 00               373 	clr	_flagPrzerwT0
                            374 ;	ZegarekDSM51.c:34: __bit flagSecondPassed = FALSE; //flaga przerwania sekund
   009D C2 01               375 	clr	_flagSecondPassed
                            376 	.area GSFINAL (CODE)
   009F 02 00 0E            377 	ljmp	__sdcc_program_startup
                            378 ;--------------------------------------------------------
                            379 ; Home
                            380 ;--------------------------------------------------------
                            381 	.area HOME    (CODE)
                            382 	.area HOME    (CODE)
   000E                     383 __sdcc_program_startup:
   000E 12 01 E8            384 	lcall	_main
                            385 ;	return from main will lock up
   0011 80 FE               386 	sjmp .
                            387 ;--------------------------------------------------------
                            388 ; code
                            389 ;--------------------------------------------------------
                            390 	.area CSEG    (CODE)
                            391 ;------------------------------------------------------------
                            392 ;Allocation info for local variables in function 'seg7Init'
                            393 ;------------------------------------------------------------
                            394 ;i                         Allocated to registers r2 
                            395 ;------------------------------------------------------------
                            396 ;	ZegarekDSM51.c:38: void seg7Init(){
                            397 ;	-----------------------------------------
                            398 ;	 function seg7Init
                            399 ;	-----------------------------------------
   00A2                     400 _seg7Init:
                    0002    401 	ar2 = 0x02
                    0003    402 	ar3 = 0x03
                    0004    403 	ar4 = 0x04
                    0005    404 	ar5 = 0x05
                    0006    405 	ar6 = 0x06
                    0007    406 	ar7 = 0x07
                    0000    407 	ar0 = 0x00
                    0001    408 	ar1 = 0x01
                            409 ;	ZegarekDSM51.c:40: wybranyWys = 0b00000001;
   00A2 75 13 01            410 	mov	_wybranyWys,#0x01
                            411 ;	ZegarekDSM51.c:41: iteratorWys = 0;
   00A5 75 12 00            412 	mov	_iteratorWys,#0x00
                            413 ;	ZegarekDSM51.c:42: for(i = 0; i < 6; i++){
   00A8 7A 00               414 	mov	r2,#0x00
   00AA                     415 00101$:
   00AA BA 06 00            416 	cjne	r2,#0x06,00110$
   00AD                     417 00110$:
   00AD 50 09               418 	jnc	00105$
                            419 ;	ZegarekDSM51.c:43: daneWys[i] = 0; // ustawianie czasu na 00:00:00
   00AF EA                  420 	mov	a,r2
   00B0 24 0C               421 	add	a,#_daneWys
   00B2 F8                  422 	mov	r0,a
   00B3 76 00               423 	mov	@r0,#0x00
                            424 ;	ZegarekDSM51.c:42: for(i = 0; i < 6; i++){
   00B5 0A                  425 	inc	r2
   00B6 80 F2               426 	sjmp	00101$
   00B8                     427 00105$:
   00B8 22                  428 	ret
                            429 ;------------------------------------------------------------
                            430 ;Allocation info for local variables in function 'timerInit'
                            431 ;------------------------------------------------------------
                            432 ;------------------------------------------------------------
                            433 ;	ZegarekDSM51.c:46: void timerInit(){
                            434 ;	-----------------------------------------
                            435 ;	 function timerInit
                            436 ;	-----------------------------------------
   00B9                     437 _timerInit:
                            438 ;	ZegarekDSM51.c:47: TMOD = 0b01110000; //ustawienie trybu pracy timera 0 w tryb 0
   00B9 75 89 70            439 	mov	_TMOD,#0x70
                            440 ;	ZegarekDSM51.c:48: TH0 = TH_0; //Do prze adowania T0 4 razy aby otrzyma  900 przerwa  co sekund  dla trybu 0
   00BC 75 8C FD            441 	mov	_TH0,#0xFD
                            442 ;	ZegarekDSM51.c:49: TL0 = TL_0; //Zeby policzyc do 132 dla trybu 1
   00BF 75 8A 67            443 	mov	_TL0,#0x67
                            444 ;	ZegarekDSM51.c:50: TR0 = TRUE; //uruchomienie timera 0
   00C2 D2 8C               445 	setb	_TR0
                            446 ;	ZegarekDSM51.c:51: ET0 = TRUE; //aktywowanie przerwania od T0
   00C4 D2 A9               447 	setb	_ET0
                            448 ;	ZegarekDSM51.c:52: ES = TRUE; //Aktywuj przerwanie od UART
   00C6 D2 AC               449 	setb	_ES
                            450 ;	ZegarekDSM51.c:53: EA = TRUE; //Aktywuj WSZYTSKIE przerwania
   00C8 D2 AF               451 	setb	_EA
   00CA 22                  452 	ret
                            453 ;------------------------------------------------------------
                            454 ;Allocation info for local variables in function 'aktWys'
                            455 ;------------------------------------------------------------
                            456 ;------------------------------------------------------------
                            457 ;	ZegarekDSM51.c:55: void aktWys(){  // aktualizacja wy wietlacza 7-segmentowego
                            458 ;	-----------------------------------------
                            459 ;	 function aktWys
                            460 ;	-----------------------------------------
   00CB                     461 _aktWys:
                            462 ;	ZegarekDSM51.c:57: daneWys[0] = sekundy % 10;
   00CB 75 F0 0A            463 	mov	b,#0x0A
   00CE E5 08               464 	mov	a,_sekundy
   00D0 84                  465 	div	ab
   00D1 E5 F0               466 	mov	a,b
   00D3 F5 0C               467 	mov	_daneWys,a
                            468 ;	ZegarekDSM51.c:59: daneWys[1] = sekundy / 10;
   00D5 75 F0 0A            469 	mov	b,#0x0A
   00D8 E5 08               470 	mov	a,_sekundy
   00DA 84                  471 	div	ab
   00DB F5 0D               472 	mov	(_daneWys + 0x0001),a
                            473 ;	ZegarekDSM51.c:61: daneWys[2] = minuty % 10;
   00DD 75 F0 0A            474 	mov	b,#0x0A
   00E0 E5 09               475 	mov	a,_minuty
   00E2 84                  476 	div	ab
   00E3 E5 F0               477 	mov	a,b
   00E5 F5 0E               478 	mov	(_daneWys + 0x0002),a
                            479 ;	ZegarekDSM51.c:63: daneWys[3] = minuty / 10;
   00E7 75 F0 0A            480 	mov	b,#0x0A
   00EA E5 09               481 	mov	a,_minuty
   00EC 84                  482 	div	ab
   00ED F5 0F               483 	mov	(_daneWys + 0x0003),a
                            484 ;	ZegarekDSM51.c:65: daneWys[4] = godziny % 10;
   00EF 75 F0 0A            485 	mov	b,#0x0A
   00F2 E5 0A               486 	mov	a,_godziny
   00F4 84                  487 	div	ab
   00F5 E5 F0               488 	mov	a,b
   00F7 F5 10               489 	mov	(_daneWys + 0x0004),a
                            490 ;	ZegarekDSM51.c:67: daneWys[5] = godziny / 10;
   00F9 75 F0 0A            491 	mov	b,#0x0A
   00FC E5 0A               492 	mov	a,_godziny
   00FE 84                  493 	div	ab
   00FF F5 11               494 	mov	(_daneWys + 0x0005),a
   0101 22                  495 	ret
                            496 ;------------------------------------------------------------
                            497 ;Allocation info for local variables in function 'wyswietl'
                            498 ;------------------------------------------------------------
                            499 ;------------------------------------------------------------
                            500 ;	ZegarekDSM51.c:70: void wyswietl(){
                            501 ;	-----------------------------------------
                            502 ;	 function wyswietl
                            503 ;	-----------------------------------------
   0102                     504 _wyswietl:
                            505 ;	ZegarekDSM51.c:71: SEG_OFF = TRUE; //wyl wyswietlacza 7-segmentowego aby nie bylo efektu "ghostingu"
   0102 D2 96               506 	setb	_SEG_OFF
                            507 ;	ZegarekDSM51.c:72: *led_wyb = wybranyWys; //wybranie wy wietlacza 7-segmentowego
   0104 85 18 82            508 	mov	dpl,_led_wyb
   0107 85 19 83            509 	mov	dph,(_led_wyb + 1)
   010A E5 13               510 	mov	a,_wybranyWys
   010C F0                  511 	movx	@dptr,a
                            512 ;	ZegarekDSM51.c:73: *led_led = WZOR[daneWys[iteratorWys]]; //wybranie cyfry do wy wietlenia
   010D AA 1A               513 	mov	r2,_led_led
   010F AB 1B               514 	mov	r3,(_led_led + 1)
   0111 E5 12               515 	mov	a,_iteratorWys
   0113 24 0C               516 	add	a,#_daneWys
   0115 F8                  517 	mov	r0,a
   0116 E6                  518 	mov	a,@r0
   0117 90 02 4C            519 	mov	dptr,#_WZOR
   011A 93                  520 	movc	a,@a+dptr
   011B 8A 82               521 	mov	dpl,r2
   011D 8B 83               522 	mov	dph,r3
   011F F0                  523 	movx	@dptr,a
                            524 ;	ZegarekDSM51.c:74: SEG_OFF = FALSE; //włączenie wy wietlacza 7-segmentowego
   0120 C2 96               525 	clr	_SEG_OFF
   0122 22                  526 	ret
                            527 ;------------------------------------------------------------
                            528 ;Allocation info for local variables in function 'aktCzas'
                            529 ;------------------------------------------------------------
                            530 ;------------------------------------------------------------
                            531 ;	ZegarekDSM51.c:77: void aktCzas(){
                            532 ;	-----------------------------------------
                            533 ;	 function aktCzas
                            534 ;	-----------------------------------------
   0123                     535 _aktCzas:
                            536 ;	ZegarekDSM51.c:78: if(flagSecondPassed){
                            537 ;	ZegarekDSM51.c:79: flagSecondPassed = FALSE;
   0123 10 01 01            538 	jbc	_flagSecondPassed,00115$
   0126 22                  539 	ret
   0127                     540 00115$:
                            541 ;	ZegarekDSM51.c:80: sekundy++;
   0127 05 08               542 	inc	_sekundy
                            543 ;	ZegarekDSM51.c:81: licznikT0 = 0;
   0129 E4                  544 	clr	a
   012A F5 1C               545 	mov	_licznikT0,a
   012C F5 1D               546 	mov	(_licznikT0 + 1),a
                            547 ;	ZegarekDSM51.c:82: if(sekundy == 60){
   012E 74 3C               548 	mov	a,#0x3C
   0130 B5 08 17            549 	cjne	a,_sekundy,00109$
                            550 ;	ZegarekDSM51.c:83: sekundy = 0;
   0133 75 08 00            551 	mov	_sekundy,#0x00
                            552 ;	ZegarekDSM51.c:84: minuty++;
   0136 05 09               553 	inc	_minuty
                            554 ;	ZegarekDSM51.c:85: if(minuty == 60){
   0138 74 3C               555 	mov	a,#0x3C
   013A B5 09 0D            556 	cjne	a,_minuty,00109$
                            557 ;	ZegarekDSM51.c:86: minuty = 0;
   013D 75 09 00            558 	mov	_minuty,#0x00
                            559 ;	ZegarekDSM51.c:87: godziny++;
   0140 05 0A               560 	inc	_godziny
                            561 ;	ZegarekDSM51.c:88: if(godziny == 24){
   0142 74 18               562 	mov	a,#0x18
   0144 B5 0A 03            563 	cjne	a,_godziny,00109$
                            564 ;	ZegarekDSM51.c:89: godziny = 0;
   0147 75 0A 00            565 	mov	_godziny,#0x00
   014A                     566 00109$:
   014A 22                  567 	ret
                            568 ;------------------------------------------------------------
                            569 ;Allocation info for local variables in function 'obslugaKlaw'
                            570 ;------------------------------------------------------------
                            571 ;------------------------------------------------------------
                            572 ;	ZegarekDSM51.c:95: void obslugaKlaw(){
                            573 ;	-----------------------------------------
                            574 ;	 function obslugaKlaw
                            575 ;	-----------------------------------------
   014B                     576 _obslugaKlaw:
                            577 ;	ZegarekDSM51.c:96: if(kbrd[0] != kbrd[1] && kbrd[0] != kbrd[2] && kbrd[3] != kbrd[0]){
   014B E5 14               578 	mov	a,_kbrd
   014D FA                  579 	mov	r2,a
   014E B5 15 03            580 	cjne	a,(_kbrd + 0x0001),00152$
   0151 02 01 D8            581 	ljmp	00132$
   0154                     582 00152$:
   0154 EA                  583 	mov	a,r2
   0155 B5 16 03            584 	cjne	a,(_kbrd + 0x0002),00153$
   0158 02 01 D8            585 	ljmp	00132$
   015B                     586 00153$:
   015B EA                  587 	mov	a,r2
   015C B5 17 03            588 	cjne	a,(_kbrd + 0x0003),00154$
   015F 02 01 D8            589 	ljmp	00132$
   0162                     590 00154$:
                            591 ;	ZegarekDSM51.c:98: if(kbrd[0] == (0b000001 | 0b100000)){
   0162 BA 21 11            592 	cjne	r2,#0x21,00105$
                            593 ;	ZegarekDSM51.c:99: if(godziny != 23){
   0165 74 17               594 	mov	a,#0x17
   0167 B5 0A 02            595 	cjne	a,_godziny,00157$
   016A 80 04               596 	sjmp	00102$
   016C                     597 00157$:
                            598 ;	ZegarekDSM51.c:100: godziny++;
   016C 05 0A               599 	inc	_godziny
   016E 80 06               600 	sjmp	00105$
   0170                     601 00102$:
                            602 ;	ZegarekDSM51.c:102: godziny = 0;
   0170 75 0A 00            603 	mov	_godziny,#0x00
                            604 ;	ZegarekDSM51.c:103: aktWys();
   0173 12 00 CB            605 	lcall	_aktWys
   0176                     606 00105$:
                            607 ;	ZegarekDSM51.c:107: if(kbrd[0] == (0b000010 | 0b100000)){
   0176 74 22               608 	mov	a,#0x22
   0178 B5 14 0E            609 	cjne	a,_kbrd,00110$
                            610 ;	ZegarekDSM51.c:108: if(godziny != 0){
   017B E5 0A               611 	mov	a,_godziny
   017D 60 04               612 	jz	00107$
                            613 ;	ZegarekDSM51.c:109: godziny--;
   017F 15 0A               614 	dec	_godziny
   0181 80 03               615 	sjmp	00108$
   0183                     616 00107$:
                            617 ;	ZegarekDSM51.c:111: godziny = 23;
   0183 75 0A 17            618 	mov	_godziny,#0x17
   0186                     619 00108$:
                            620 ;	ZegarekDSM51.c:113: aktWys();
   0186 12 00 CB            621 	lcall	_aktWys
   0189                     622 00110$:
                            623 ;	ZegarekDSM51.c:116: if(kbrd[0] == (0b000001 | 0b010000)){
   0189 74 11               624 	mov	a,#0x11
   018B B5 14 11            625 	cjne	a,_kbrd,00115$
                            626 ;	ZegarekDSM51.c:117: if (minuty != 59){
   018E 74 3B               627 	mov	a,#0x3B
   0190 B5 09 02            628 	cjne	a,_minuty,00163$
   0193 80 04               629 	sjmp	00112$
   0195                     630 00163$:
                            631 ;	ZegarekDSM51.c:118: minuty++;
   0195 05 09               632 	inc	_minuty
   0197 80 03               633 	sjmp	00113$
   0199                     634 00112$:
                            635 ;	ZegarekDSM51.c:120: minuty = 0;
   0199 75 09 00            636 	mov	_minuty,#0x00
   019C                     637 00113$:
                            638 ;	ZegarekDSM51.c:122: aktWys();
   019C 12 00 CB            639 	lcall	_aktWys
   019F                     640 00115$:
                            641 ;	ZegarekDSM51.c:125: if(kbrd[0] == (0b000010 | 0b010000)){
   019F 74 12               642 	mov	a,#0x12
   01A1 B5 14 0E            643 	cjne	a,_kbrd,00120$
                            644 ;	ZegarekDSM51.c:126: if(minuty != 0){
   01A4 E5 09               645 	mov	a,_minuty
   01A6 60 04               646 	jz	00117$
                            647 ;	ZegarekDSM51.c:127: minuty--;
   01A8 15 09               648 	dec	_minuty
   01AA 80 03               649 	sjmp	00118$
   01AC                     650 00117$:
                            651 ;	ZegarekDSM51.c:129: minuty = 59;
   01AC 75 09 3B            652 	mov	_minuty,#0x3B
   01AF                     653 00118$:
                            654 ;	ZegarekDSM51.c:131: aktWys();
   01AF 12 00 CB            655 	lcall	_aktWys
   01B2                     656 00120$:
                            657 ;	ZegarekDSM51.c:134: if(kbrd[0] == (0b000001 | 0b000100)){
   01B2 74 05               658 	mov	a,#0x05
   01B4 B5 14 11            659 	cjne	a,_kbrd,00125$
                            660 ;	ZegarekDSM51.c:135: if(sekundy != 59){
   01B7 74 3B               661 	mov	a,#0x3B
   01B9 B5 08 02            662 	cjne	a,_sekundy,00169$
   01BC 80 04               663 	sjmp	00122$
   01BE                     664 00169$:
                            665 ;	ZegarekDSM51.c:136: sekundy++;
   01BE 05 08               666 	inc	_sekundy
   01C0 80 03               667 	sjmp	00123$
   01C2                     668 00122$:
                            669 ;	ZegarekDSM51.c:138: sekundy = 0;
   01C2 75 08 00            670 	mov	_sekundy,#0x00
   01C5                     671 00123$:
                            672 ;	ZegarekDSM51.c:140: aktWys();
   01C5 12 00 CB            673 	lcall	_aktWys
   01C8                     674 00125$:
                            675 ;	ZegarekDSM51.c:143: if(kbrd[0] == (0b000010 | 0b000100)){
   01C8 74 06               676 	mov	a,#0x06
   01CA B5 14 0B            677 	cjne	a,_kbrd,00132$
                            678 ;	ZegarekDSM51.c:144: if(sekundy != 0){
   01CD E5 08               679 	mov	a,_sekundy
   01CF 60 04               680 	jz	00127$
                            681 ;	ZegarekDSM51.c:145: sekundy--;
   01D1 15 08               682 	dec	_sekundy
   01D3 80 03               683 	sjmp	00132$
   01D5                     684 00127$:
                            685 ;	ZegarekDSM51.c:147: sekundy = 59;
   01D5 75 08 3B            686 	mov	_sekundy,#0x3B
   01D8                     687 00132$:
                            688 ;	ZegarekDSM51.c:152: kbrd[3] = kbrd[2];
   01D8 AA 16               689 	mov	r2,(_kbrd + 0x0002)
   01DA 8A 17               690 	mov	(_kbrd + 0x0003),r2
                            691 ;	ZegarekDSM51.c:153: kbrd[2] = kbrd[1];
   01DC AA 15               692 	mov	r2,(_kbrd + 0x0001)
   01DE 8A 16               693 	mov	(_kbrd + 0x0002),r2
                            694 ;	ZegarekDSM51.c:154: kbrd[1] = kbrd[0];
   01E0 AA 14               695 	mov	r2,_kbrd
   01E2 8A 15               696 	mov	(_kbrd + 0x0001),r2
                            697 ;	ZegarekDSM51.c:155: kbrd[0] = 0;
   01E4 75 14 00            698 	mov	_kbrd,#0x00
   01E7 22                  699 	ret
                            700 ;------------------------------------------------------------
                            701 ;Allocation info for local variables in function 'main'
                            702 ;------------------------------------------------------------
                            703 ;------------------------------------------------------------
                            704 ;	ZegarekDSM51.c:157: void main()
                            705 ;	-----------------------------------------
                            706 ;	 function main
                            707 ;	-----------------------------------------
   01E8                     708 _main:
                            709 ;	ZegarekDSM51.c:159: seg7Init(); //inicjalizacja wy wietlacza 7-segmentowego
   01E8 12 00 A2            710 	lcall	_seg7Init
                            711 ;	ZegarekDSM51.c:160: timerInit(); //inicjalizacja timera
   01EB 12 00 B9            712 	lcall	_timerInit
                            713 ;	ZegarekDSM51.c:161: while(TRUE){
   01EE                     714 00110$:
                            715 ;	ZegarekDSM51.c:162: if(flagPrzerwT0 == TRUE){
                            716 ;	ZegarekDSM51.c:163: flagPrzerwT0 = FALSE;
   01EE 10 00 02            717 	jbc	_flagPrzerwT0,00119$
   01F1 80 FB               718 	sjmp	00110$
   01F3                     719 00119$:
                            720 ;	ZegarekDSM51.c:164: wyswietl(); //wyswietlenie danych na wyswietlaczu 7-segmentowym
   01F3 12 01 02            721 	lcall	_wyswietl
                            722 ;	ZegarekDSM51.c:165: iteratorWys++;
   01F6 05 12               723 	inc	_iteratorWys
                            724 ;	ZegarekDSM51.c:166: if(P3_5){ //sprawdzenie czy klaiwatura byla wcisnieta
   01F8 30 B5 06            725 	jnb	_P3_5,00102$
                            726 ;	ZegarekDSM51.c:167: kbrd[0] = (kbrd[0] | wybranyWys);
   01FB E5 13               727 	mov	a,_wybranyWys
   01FD 45 14               728 	orl	a,_kbrd
   01FF F5 14               729 	mov	_kbrd,a
   0201                     730 00102$:
                            731 ;	ZegarekDSM51.c:169: wybranyWys += wybranyWys; //zmienienie wyswietlacza na nast.
   0201 E5 13               732 	mov	a,_wybranyWys
   0203 25 13               733 	add	a,_wybranyWys
   0205 F5 13               734 	mov	_wybranyWys,a
                            735 ;	ZegarekDSM51.c:170: if(wybranyWys == 64){ //jesli dojdziemy do ostatniego wyswietlacza
   0207 74 40               736 	mov	a,#0x40
   0209 B5 13 0D            737 	cjne	a,_wybranyWys,00106$
                            738 ;	ZegarekDSM51.c:171: wybranyWys = 1;
   020C 75 13 01            739 	mov	_wybranyWys,#0x01
                            740 ;	ZegarekDSM51.c:172: iteratorWys = 0;
   020F 75 12 00            741 	mov	_iteratorWys,#0x00
                            742 ;	ZegarekDSM51.c:173: if(kbrd[0] != 0){
   0212 E5 14               743 	mov	a,_kbrd
   0214 60 03               744 	jz	00106$
                            745 ;	ZegarekDSM51.c:174: obslugaKlaw();
   0216 12 01 4B            746 	lcall	_obslugaKlaw
   0219                     747 00106$:
                            748 ;	ZegarekDSM51.c:177: aktCzas(); //aktualizacja czasu
   0219 12 01 23            749 	lcall	_aktCzas
                            750 ;	ZegarekDSM51.c:178: aktWys(); //aktualizacja wyswietlacza 7-segmentowego
   021C 12 00 CB            751 	lcall	_aktWys
   021F 80 CD               752 	sjmp	00110$
                            753 ;------------------------------------------------------------
                            754 ;Allocation info for local variables in function 't0_int'
                            755 ;------------------------------------------------------------
                            756 ;------------------------------------------------------------
                            757 ;	ZegarekDSM51.c:183: void t0_int(void) __interrupt(1){
                            758 ;	-----------------------------------------
                            759 ;	 function t0_int
                            760 ;	-----------------------------------------
   0221                     761 _t0_int:
   0221 C0 E0               762 	push	acc
   0223 C0 D0               763 	push	psw
   0225 75 D0 00            764 	mov	psw,#0x00
                            765 ;	ZegarekDSM51.c:184: TL0 = 252;
   0228 75 8A FC            766 	mov	_TL0,#0xFC
                            767 ;	ZegarekDSM51.c:185: TH0 = 227;
   022B 75 8C E3            768 	mov	_TH0,#0xE3
                            769 ;	ZegarekDSM51.c:186: flagPrzerwT0 = TRUE;  
   022E D2 00               770 	setb	_flagPrzerwT0
                            771 ;	ZegarekDSM51.c:187: licznikT0++;
   0230 05 1C               772 	inc	_licznikT0
   0232 E4                  773 	clr	a
   0233 B5 1C 02            774 	cjne	a,_licznikT0,00106$
   0236 05 1D               775 	inc	(_licznikT0 + 1)
   0238                     776 00106$:
                            777 ;	ZegarekDSM51.c:188: if(licznikT0 >= 1024){
   0238 C3                  778 	clr	c
   0239 E5 1D               779 	mov	a,(_licznikT0 + 1)
   023B 64 80               780 	xrl	a,#0x80
   023D 94 84               781 	subb	a,#0x84
   023F 40 02               782 	jc	00103$
                            783 ;	ZegarekDSM51.c:189: flagSecondPassed = TRUE;
   0241 D2 01               784 	setb	_flagSecondPassed
   0243                     785 00103$:
   0243 D0 D0               786 	pop	psw
   0245 D0 E0               787 	pop	acc
   0247 32                  788 	reti
                            789 ;	eliminated unneeded push/pop dpl
                            790 ;	eliminated unneeded push/pop dph
                            791 ;	eliminated unneeded push/pop b
                            792 	.area CSEG    (CODE)
                            793 	.area CONST   (CODE)
   024C                     794 _WZOR:
   024C 3F                  795 	.db #0x3F
   024D 06                  796 	.db #0x06
   024E 5B                  797 	.db #0x5B
   024F 4F                  798 	.db #0x4F
   0250 66                  799 	.db #0x66
   0251 6D                  800 	.db #0x6D
   0252 7D                  801 	.db #0x7D
   0253 07                  802 	.db #0x07
   0254 7F                  803 	.db #0x7F
   0255 6F                  804 	.db #0x6F
                            805 	.area XINIT   (CODE)
                            806 	.area CABS    (ABS,CODE)
