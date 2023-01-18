//Zegar w C na 8051
#include <8051.h>

#define TRUE 1
#define FALSE 0
//z pdf ale nie wiem za bardzo co robia 
#define T0_DAT 65536 - 921
#define TL_0 T0_DAT % 256
#define TH_0 T0_DAT / 256
//tablica przechowuj ca szablon cyfr dla wy wietlacza 7-segmentowego
__code unsigned char WZOR[10] = { 0b0111111, 0b0000110, 0b1011011, 0b1001111, 0b1100110, 0b1101101, 0b1111101, 0b0000111, 0b1111111, 0b1101111 };

__bit __at (0x96) SEG_OFF; //wy /w  wy wietlacza 7-segmentowego
__sbit __at(0x97) TESTLED; //LED TESTOWY P1.7


unsigned char sekundy = 0; //zmienna przechowuj ca sekundy
unsigned char minuty = 0; //zmienna przechowuj ca minuty
unsigned char godziny = 23; //zmienna przechowuj ca godziny

unsigned char wybierak = 0; //zmienna przechowuj ca wybrana jednostke czasu do zmienienia
unsigned char daneWys[6]; //tablica przechowuj ca dane do wy wietlacza 7-segmentowego (hh:mm:ss)
unsigned char iteratorWys = 0; //iterator do tablicy daneWys
unsigned char wybranyWys = 0; //wybrany wy wietlacz 7-segmentowy

//Zmienne Klawiatury
unsigned char kbrd[4] = {0,0,0,0}; //tablica na stany klawiatury z 0

__xdata unsigned char* led_wyb = (__xdata unsigned char *) 0xFF30; //rejestr wyboru bitowo wy wietlacza 7-segmentowego
__xdata unsigned char* led_led = (__xdata unsigned char *) 0xFF38; //rejestr wyboru cyfry do wy wietlenia

//flagi
__bit flagPrzerwT0 = FALSE; //flaga przerwania timera 0
__bit flagSecondPassed = FALSE; //flaga przerwania sekund

int licznikT0 = 0; //licznik przerwania T0

void seg7Init(){
    unsigned char i;
    wybranyWys = 0b00000001;
    iteratorWys = 0;
    for(i = 0; i < 6; i++){
       daneWys[i] = 0; // ustawianie czasu na 00:00:00
    }
}
void timerInit(){
    TMOD = 0b01110000; //ustawienie trybu pracy timera 0 w tryb 0
    TH0 = TH_0; //Do prze adowania T0 4 razy aby otrzyma  900 przerwa  co sekund  dla trybu 0
    TL0 = TL_0; //Zeby policzyc do 132 dla trybu 1
    TR0 = TRUE; //uruchomienie timera 0
    ET0 = TRUE; //aktywowanie przerwania od T0
    ES = TRUE; //Aktywuj przerwanie od UART
    EA = TRUE; //Aktywuj WSZYTSKIE przerwania
}
void aktWys(){  // aktualizacja wy wietlacza 7-segmentowego
    //sekundy sS
    daneWys[0] = sekundy % 10;
    //sekundy Ss
    daneWys[1] = sekundy / 10;
    //minuty mM
    daneWys[2] = minuty % 10;
    //minuty Mm
    daneWys[3] = minuty / 10;
    //godziny hH
    daneWys[4] = godziny % 10;
    //godziny Hh
    daneWys[5] = godziny / 10;
}
//Wyswietlanie na wys 7 seg
void wyswietl(){
    SEG_OFF = TRUE; //wyl wyswietlacza 7-segmentowego aby nie bylo efektu "ghostingu"
    *led_wyb = wybranyWys; //wybranie wy wietlacza 7-segmentowego
    *led_led = WZOR[daneWys[iteratorWys]]; //wybranie cyfry do wy wietlenia
    SEG_OFF = FALSE; //włączenie wy wietlacza 7-segmentowego
}
//funkcja mierzaca czas
void aktCzas(){
    if(flagSecondPassed){
        flagSecondPassed = FALSE;
        sekundy++;
        licznikT0 = 0;
        if(sekundy == 60){
            sekundy = 0;
            minuty++;
            if(minuty == 60){
                minuty = 0;
                godziny++;
                if(godziny == 24){
                    godziny = 0;
                }
            }
        }
    }
}
void obslugaKlaw(){
    if(kbrd[0] != kbrd[1] && kbrd[0] != kbrd[2] && kbrd[3] != kbrd[0]){
        //enter | LEWO
        if(kbrd[0] == (0b000001 | 0b100000)){
            if(godziny != 23){
                godziny++;
            }else{
                godziny = 0;
                aktWys();
            }
        }
        //esc | LEWO
        if(kbrd[0] == (0b000010 | 0b100000)){
                if(godziny != 0){
                    godziny--;
                }else{
                    godziny = 23;
                }
                aktWys();
            }
        //enter | DOL
        if(kbrd[0] == (0b000001 | 0b010000)){
                if (minuty != 59){
                    minuty++;
                }else{
                    minuty = 0;
                }
                aktWys();
            }
        //esc | DOL
        if(kbrd[0] == (0b000010 | 0b010000)){
                if(minuty != 0){
                    minuty--;
                }else{
                    minuty = 59;
                }
                aktWys();
            }
        //enter | PRAWO
        if(kbrd[0] == (0b000001 | 0b000100)){
                if(sekundy != 59){
                    sekundy++;
                }else{
                    sekundy = 0;
                }
                aktWys();
        }
        //esc | PRAWO
        if(kbrd[0] == (0b000010 | 0b000100)){
            if(sekundy != 0){
                sekundy--;
            }else{
                sekundy = 59;
            }
        }
        }
        //klawiatura niestabilna 
        kbrd[3] = kbrd[2];
        kbrd[2] = kbrd[1];
        kbrd[1] = kbrd[0];
        kbrd[0] = 0;
    }
void main()
{
    seg7Init(); //inicjalizacja wy wietlacza 7-segmentowego
    timerInit(); //inicjalizacja timera
    while(TRUE){
        if(flagPrzerwT0 == TRUE){
        flagPrzerwT0 = FALSE;
        wyswietl(); //wyswietlenie danych na wyswietlaczu 7-segmentowym
        iteratorWys++;
        if(P3_5){ //sprawdzenie czy klaiwatura byla wcisnieta
            kbrd[0] = (kbrd[0] | wybranyWys);
        }
        wybranyWys += wybranyWys; //zmienienie wyswietlacza na nast.
        if(wybranyWys == 64){ //jesli dojdziemy do ostatniego wyswietlacza
            wybranyWys = 1;
            iteratorWys = 0;
            if(kbrd[0] != 0){
            obslugaKlaw();
        }
        }
        aktCzas(); //aktualizacja czasu
        aktWys(); //aktualizacja wyswietlacza 7-segmentowego
        }
    }
}
//Funkcja obslugujaca przerwania
void t0_int(void) __interrupt(1){
    TL0 = 252;
    TH0 = 227;
    flagPrzerwT0 = TRUE;  
    licznikT0++;
    if(licznikT0 >= 1024){
        flagSecondPassed = TRUE;
    }
}