;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
; This file was generated Wed Jan 18 21:26:05 2023
;--------------------------------------------------------
	.module ZegarekDSM51
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _WZOR
	.globl _t0_int
	.globl _main
	.globl _obslugaKlaw
	.globl _aktCzas
	.globl _wyswietl
	.globl _aktWys
	.globl _timerInit
	.globl _seg7Init
	.globl _TESTLED
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _flagSecondPassed
	.globl _flagPrzerwT0
	.globl _SEG_OFF
	.globl _licznikT0
	.globl _led_led
	.globl _led_wyb
	.globl _kbrd
	.globl _wybranyWys
	.globl _iteratorWys
	.globl _daneWys
	.globl _wybierak
	.globl _godziny
	.globl _minuty
	.globl _sekundy
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (DATA)
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (DATA)
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_TESTLED	=	0x0097
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_sekundy::
	.ds 1
_minuty::
	.ds 1
_godziny::
	.ds 1
_wybierak::
	.ds 1
_daneWys::
	.ds 6
_iteratorWys::
	.ds 1
_wybranyWys::
	.ds 1
_kbrd::
	.ds 4
_led_wyb::
	.ds 2
_led_led::
	.ds 2
_licznikT0::
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG	(DATA)
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
_SEG_OFF	=	0x0096
_flagPrzerwT0::
	.ds 1
_flagSecondPassed::
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_t0_int
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	ZegarekDSM51.c:17: unsigned char sekundy = 0; //zmienna przechowuj ca sekundy
	mov	_sekundy,#0x00
;	ZegarekDSM51.c:18: unsigned char minuty = 0; //zmienna przechowuj ca minuty
	mov	_minuty,#0x00
;	ZegarekDSM51.c:19: unsigned char godziny = 23; //zmienna przechowuj ca godziny
	mov	_godziny,#0x17
;	ZegarekDSM51.c:21: unsigned char wybierak = 0; //zmienna przechowuj ca wybrana jednostke czasu do zmienienia
	mov	_wybierak,#0x00
;	ZegarekDSM51.c:23: unsigned char iteratorWys = 0; //iterator do tablicy daneWys
	mov	_iteratorWys,#0x00
;	ZegarekDSM51.c:24: unsigned char wybranyWys = 0; //wybrany wy wietlacz 7-segmentowy
	mov	_wybranyWys,#0x00
;	ZegarekDSM51.c:27: unsigned char kbrd[4] = {0,0,0,0}; //tablica na stany klawiatury z 0
	mov	_kbrd,#0x00
	mov	(_kbrd + 0x0001),#0x00
	mov	(_kbrd + 0x0002),#0x00
	mov	(_kbrd + 0x0003),#0x00
;	ZegarekDSM51.c:29: __xdata unsigned char* led_wyb = (__xdata unsigned char *) 0xFF30; //rejestr wyboru bitowo wy wietlacza 7-segmentowego
	mov	_led_wyb,#0x30
	mov	(_led_wyb + 1),#0xFF
;	ZegarekDSM51.c:30: __xdata unsigned char* led_led = (__xdata unsigned char *) 0xFF38; //rejestr wyboru cyfry do wy wietlenia
	mov	_led_led,#0x38
	mov	(_led_led + 1),#0xFF
;	ZegarekDSM51.c:36: int licznikT0 = 0; //licznik przerwania T0
	clr	a
	mov	_licznikT0,a
	mov	(_licznikT0 + 1),a
;	ZegarekDSM51.c:33: __bit flagPrzerwT0 = FALSE; //flaga przerwania timera 0
	clr	_flagPrzerwT0
;	ZegarekDSM51.c:34: __bit flagSecondPassed = FALSE; //flaga przerwania sekund
	clr	_flagSecondPassed
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	lcall	_main
;	return from main will lock up
	sjmp .
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'seg7Init'
;------------------------------------------------------------
;i                         Allocated to registers r2 
;------------------------------------------------------------
;	ZegarekDSM51.c:38: void seg7Init(){
;	-----------------------------------------
;	 function seg7Init
;	-----------------------------------------
_seg7Init:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	ZegarekDSM51.c:40: wybranyWys = 0b00000001;
	mov	_wybranyWys,#0x01
;	ZegarekDSM51.c:41: iteratorWys = 0;
	mov	_iteratorWys,#0x00
;	ZegarekDSM51.c:42: for(i = 0; i < 6; i++){
	mov	r2,#0x00
00101$:
	cjne	r2,#0x06,00110$
00110$:
	jnc	00105$
;	ZegarekDSM51.c:43: daneWys[i] = 0; // ustawianie czasu na 00:00:00
	mov	a,r2
	add	a,#_daneWys
	mov	r0,a
	mov	@r0,#0x00
;	ZegarekDSM51.c:42: for(i = 0; i < 6; i++){
	inc	r2
	sjmp	00101$
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timerInit'
;------------------------------------------------------------
;------------------------------------------------------------
;	ZegarekDSM51.c:46: void timerInit(){
;	-----------------------------------------
;	 function timerInit
;	-----------------------------------------
_timerInit:
;	ZegarekDSM51.c:47: TMOD = 0b01110000; //ustawienie trybu pracy timera 0 w tryb 0
	mov	_TMOD,#0x70
;	ZegarekDSM51.c:48: TH0 = TH_0; //Do prze adowania T0 4 razy aby otrzyma  900 przerwa  co sekund  dla trybu 0
	mov	_TH0,#0xFD
;	ZegarekDSM51.c:49: TL0 = TL_0; //Zeby policzyc do 132 dla trybu 1
	mov	_TL0,#0x67
;	ZegarekDSM51.c:50: TR0 = TRUE; //uruchomienie timera 0
	setb	_TR0
;	ZegarekDSM51.c:51: ET0 = TRUE; //aktywowanie przerwania od T0
	setb	_ET0
;	ZegarekDSM51.c:52: ES = TRUE; //Aktywuj przerwanie od UART
	setb	_ES
;	ZegarekDSM51.c:53: EA = TRUE; //Aktywuj WSZYTSKIE przerwania
	setb	_EA
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'aktWys'
;------------------------------------------------------------
;------------------------------------------------------------
;	ZegarekDSM51.c:55: void aktWys(){  // aktualizacja wy wietlacza 7-segmentowego
;	-----------------------------------------
;	 function aktWys
;	-----------------------------------------
_aktWys:
;	ZegarekDSM51.c:57: daneWys[0] = sekundy % 10;
	mov	b,#0x0A
	mov	a,_sekundy
	div	ab
	mov	a,b
	mov	_daneWys,a
;	ZegarekDSM51.c:59: daneWys[1] = sekundy / 10;
	mov	b,#0x0A
	mov	a,_sekundy
	div	ab
	mov	(_daneWys + 0x0001),a
;	ZegarekDSM51.c:61: daneWys[2] = minuty % 10;
	mov	b,#0x0A
	mov	a,_minuty
	div	ab
	mov	a,b
	mov	(_daneWys + 0x0002),a
;	ZegarekDSM51.c:63: daneWys[3] = minuty / 10;
	mov	b,#0x0A
	mov	a,_minuty
	div	ab
	mov	(_daneWys + 0x0003),a
;	ZegarekDSM51.c:65: daneWys[4] = godziny % 10;
	mov	b,#0x0A
	mov	a,_godziny
	div	ab
	mov	a,b
	mov	(_daneWys + 0x0004),a
;	ZegarekDSM51.c:67: daneWys[5] = godziny / 10;
	mov	b,#0x0A
	mov	a,_godziny
	div	ab
	mov	(_daneWys + 0x0005),a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'wyswietl'
;------------------------------------------------------------
;------------------------------------------------------------
;	ZegarekDSM51.c:70: void wyswietl(){
;	-----------------------------------------
;	 function wyswietl
;	-----------------------------------------
_wyswietl:
;	ZegarekDSM51.c:71: SEG_OFF = TRUE; //wyl wyswietlacza 7-segmentowego aby nie bylo efektu "ghostingu"
	setb	_SEG_OFF
;	ZegarekDSM51.c:72: *led_wyb = wybranyWys; //wybranie wy wietlacza 7-segmentowego
	mov	dpl,_led_wyb
	mov	dph,(_led_wyb + 1)
	mov	a,_wybranyWys
	movx	@dptr,a
;	ZegarekDSM51.c:73: *led_led = WZOR[daneWys[iteratorWys]]; //wybranie cyfry do wy wietlenia
	mov	r2,_led_led
	mov	r3,(_led_led + 1)
	mov	a,_iteratorWys
	add	a,#_daneWys
	mov	r0,a
	mov	a,@r0
	mov	dptr,#_WZOR
	movc	a,@a+dptr
	mov	dpl,r2
	mov	dph,r3
	movx	@dptr,a
;	ZegarekDSM51.c:74: SEG_OFF = FALSE; //włączenie wy wietlacza 7-segmentowego
	clr	_SEG_OFF
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'aktCzas'
;------------------------------------------------------------
;------------------------------------------------------------
;	ZegarekDSM51.c:77: void aktCzas(){
;	-----------------------------------------
;	 function aktCzas
;	-----------------------------------------
_aktCzas:
;	ZegarekDSM51.c:78: if(flagSecondPassed){
;	ZegarekDSM51.c:79: flagSecondPassed = FALSE;
	jbc	_flagSecondPassed,00115$
	ret
00115$:
;	ZegarekDSM51.c:80: sekundy++;
	inc	_sekundy
;	ZegarekDSM51.c:81: licznikT0 = 0;
	clr	a
	mov	_licznikT0,a
	mov	(_licznikT0 + 1),a
;	ZegarekDSM51.c:82: if(sekundy == 60){
	mov	a,#0x3C
	cjne	a,_sekundy,00109$
;	ZegarekDSM51.c:83: sekundy = 0;
	mov	_sekundy,#0x00
;	ZegarekDSM51.c:84: minuty++;
	inc	_minuty
;	ZegarekDSM51.c:85: if(minuty == 60){
	mov	a,#0x3C
	cjne	a,_minuty,00109$
;	ZegarekDSM51.c:86: minuty = 0;
	mov	_minuty,#0x00
;	ZegarekDSM51.c:87: godziny++;
	inc	_godziny
;	ZegarekDSM51.c:88: if(godziny == 24){
	mov	a,#0x18
	cjne	a,_godziny,00109$
;	ZegarekDSM51.c:89: godziny = 0;
	mov	_godziny,#0x00
00109$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'obslugaKlaw'
;------------------------------------------------------------
;------------------------------------------------------------
;	ZegarekDSM51.c:95: void obslugaKlaw(){
;	-----------------------------------------
;	 function obslugaKlaw
;	-----------------------------------------
_obslugaKlaw:
;	ZegarekDSM51.c:96: if(kbrd[0] != kbrd[1] && kbrd[0] != kbrd[2] && kbrd[3] != kbrd[0]){
	mov	a,_kbrd
	mov	r2,a
	cjne	a,(_kbrd + 0x0001),00152$
	ljmp	00132$
00152$:
	mov	a,r2
	cjne	a,(_kbrd + 0x0002),00153$
	ljmp	00132$
00153$:
	mov	a,r2
	cjne	a,(_kbrd + 0x0003),00154$
	ljmp	00132$
00154$:
;	ZegarekDSM51.c:98: if(kbrd[0] == (0b000001 | 0b100000)){
	cjne	r2,#0x21,00105$
;	ZegarekDSM51.c:99: if(godziny != 23){
	mov	a,#0x17
	cjne	a,_godziny,00157$
	sjmp	00102$
00157$:
;	ZegarekDSM51.c:100: godziny++;
	inc	_godziny
	sjmp	00105$
00102$:
;	ZegarekDSM51.c:102: godziny = 0;
	mov	_godziny,#0x00
;	ZegarekDSM51.c:103: aktWys();
	lcall	_aktWys
00105$:
;	ZegarekDSM51.c:107: if(kbrd[0] == (0b000010 | 0b100000)){
	mov	a,#0x22
	cjne	a,_kbrd,00110$
;	ZegarekDSM51.c:108: if(godziny != 0){
	mov	a,_godziny
	jz	00107$
;	ZegarekDSM51.c:109: godziny--;
	dec	_godziny
	sjmp	00108$
00107$:
;	ZegarekDSM51.c:111: godziny = 23;
	mov	_godziny,#0x17
00108$:
;	ZegarekDSM51.c:113: aktWys();
	lcall	_aktWys
00110$:
;	ZegarekDSM51.c:116: if(kbrd[0] == (0b000001 | 0b010000)){
	mov	a,#0x11
	cjne	a,_kbrd,00115$
;	ZegarekDSM51.c:117: if (minuty != 59){
	mov	a,#0x3B
	cjne	a,_minuty,00163$
	sjmp	00112$
00163$:
;	ZegarekDSM51.c:118: minuty++;
	inc	_minuty
	sjmp	00113$
00112$:
;	ZegarekDSM51.c:120: minuty = 0;
	mov	_minuty,#0x00
00113$:
;	ZegarekDSM51.c:122: aktWys();
	lcall	_aktWys
00115$:
;	ZegarekDSM51.c:125: if(kbrd[0] == (0b000010 | 0b010000)){
	mov	a,#0x12
	cjne	a,_kbrd,00120$
;	ZegarekDSM51.c:126: if(minuty != 0){
	mov	a,_minuty
	jz	00117$
;	ZegarekDSM51.c:127: minuty--;
	dec	_minuty
	sjmp	00118$
00117$:
;	ZegarekDSM51.c:129: minuty = 59;
	mov	_minuty,#0x3B
00118$:
;	ZegarekDSM51.c:131: aktWys();
	lcall	_aktWys
00120$:
;	ZegarekDSM51.c:134: if(kbrd[0] == (0b000001 | 0b000100)){
	mov	a,#0x05
	cjne	a,_kbrd,00125$
;	ZegarekDSM51.c:135: if(sekundy != 59){
	mov	a,#0x3B
	cjne	a,_sekundy,00169$
	sjmp	00122$
00169$:
;	ZegarekDSM51.c:136: sekundy++;
	inc	_sekundy
	sjmp	00123$
00122$:
;	ZegarekDSM51.c:138: sekundy = 0;
	mov	_sekundy,#0x00
00123$:
;	ZegarekDSM51.c:140: aktWys();
	lcall	_aktWys
00125$:
;	ZegarekDSM51.c:143: if(kbrd[0] == (0b000010 | 0b000100)){
	mov	a,#0x06
	cjne	a,_kbrd,00132$
;	ZegarekDSM51.c:144: if(sekundy != 0){
	mov	a,_sekundy
	jz	00127$
;	ZegarekDSM51.c:145: sekundy--;
	dec	_sekundy
	sjmp	00132$
00127$:
;	ZegarekDSM51.c:147: sekundy = 59;
	mov	_sekundy,#0x3B
00132$:
;	ZegarekDSM51.c:152: kbrd[3] = kbrd[2];
	mov	r2,(_kbrd + 0x0002)
	mov	(_kbrd + 0x0003),r2
;	ZegarekDSM51.c:153: kbrd[2] = kbrd[1];
	mov	r2,(_kbrd + 0x0001)
	mov	(_kbrd + 0x0002),r2
;	ZegarekDSM51.c:154: kbrd[1] = kbrd[0];
	mov	r2,_kbrd
	mov	(_kbrd + 0x0001),r2
;	ZegarekDSM51.c:155: kbrd[0] = 0;
	mov	_kbrd,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;------------------------------------------------------------
;	ZegarekDSM51.c:157: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	ZegarekDSM51.c:159: seg7Init(); //inicjalizacja wy wietlacza 7-segmentowego
	lcall	_seg7Init
;	ZegarekDSM51.c:160: timerInit(); //inicjalizacja timera
	lcall	_timerInit
;	ZegarekDSM51.c:161: while(TRUE){
00110$:
;	ZegarekDSM51.c:162: if(flagPrzerwT0 == TRUE){
;	ZegarekDSM51.c:163: flagPrzerwT0 = FALSE;
	jbc	_flagPrzerwT0,00119$
	sjmp	00110$
00119$:
;	ZegarekDSM51.c:164: wyswietl(); //wyswietlenie danych na wyswietlaczu 7-segmentowym
	lcall	_wyswietl
;	ZegarekDSM51.c:165: iteratorWys++;
	inc	_iteratorWys
;	ZegarekDSM51.c:166: if(P3_5){ //sprawdzenie czy klaiwatura byla wcisnieta
	jnb	_P3_5,00102$
;	ZegarekDSM51.c:167: kbrd[0] = (kbrd[0] | wybranyWys);
	mov	a,_wybranyWys
	orl	a,_kbrd
	mov	_kbrd,a
00102$:
;	ZegarekDSM51.c:169: wybranyWys += wybranyWys; //zmienienie wyswietlacza na nast.
	mov	a,_wybranyWys
	add	a,_wybranyWys
	mov	_wybranyWys,a
;	ZegarekDSM51.c:170: if(wybranyWys == 64){ //jesli dojdziemy do ostatniego wyswietlacza
	mov	a,#0x40
	cjne	a,_wybranyWys,00106$
;	ZegarekDSM51.c:171: wybranyWys = 1;
	mov	_wybranyWys,#0x01
;	ZegarekDSM51.c:172: iteratorWys = 0;
	mov	_iteratorWys,#0x00
;	ZegarekDSM51.c:173: if(kbrd[0] != 0){
	mov	a,_kbrd
	jz	00106$
;	ZegarekDSM51.c:174: obslugaKlaw();
	lcall	_obslugaKlaw
00106$:
;	ZegarekDSM51.c:177: aktCzas(); //aktualizacja czasu
	lcall	_aktCzas
;	ZegarekDSM51.c:178: aktWys(); //aktualizacja wyswietlacza 7-segmentowego
	lcall	_aktWys
	sjmp	00110$
;------------------------------------------------------------
;Allocation info for local variables in function 't0_int'
;------------------------------------------------------------
;------------------------------------------------------------
;	ZegarekDSM51.c:183: void t0_int(void) __interrupt(1){
;	-----------------------------------------
;	 function t0_int
;	-----------------------------------------
_t0_int:
	push	acc
	push	psw
	mov	psw,#0x00
;	ZegarekDSM51.c:184: TL0 = 252;
	mov	_TL0,#0xFC
;	ZegarekDSM51.c:185: TH0 = 227;
	mov	_TH0,#0xE3
;	ZegarekDSM51.c:186: flagPrzerwT0 = TRUE;  
	setb	_flagPrzerwT0
;	ZegarekDSM51.c:187: licznikT0++;
	inc	_licznikT0
	clr	a
	cjne	a,_licznikT0,00106$
	inc	(_licznikT0 + 1)
00106$:
;	ZegarekDSM51.c:188: if(licznikT0 >= 1024){
	clr	c
	mov	a,(_licznikT0 + 1)
	xrl	a,#0x80
	subb	a,#0x84
	jc	00103$
;	ZegarekDSM51.c:189: flagSecondPassed = TRUE;
	setb	_flagSecondPassed
00103$:
	pop	psw
	pop	acc
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
	.area CSEG    (CODE)
	.area CONST   (CODE)
_WZOR:
	.db #0x3F
	.db #0x06
	.db #0x5B
	.db #0x4F
	.db #0x66
	.db #0x6D
	.db #0x7D
	.db #0x07
	.db #0x7F
	.db #0x6F
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
