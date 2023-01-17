//Zegar w C na 8051
#include <8051.h>

#define TRUE 1
#define FALSE 0

//tablica przechowująca szablon cyfr dla wyświetlacza 7-segmentowego
__code unsigned char WZOR[10] = { 0b0111111, 0b0000110, 0b1011011, 0b1001111, 0b1100110, 0b1101101, 0b1111101, 0b0000111, 0b1111111, 0b1101111 };

__sbit __at(0x97) TESTLED //LED TESTOWY P1.7
__bit __at (0x96) SEG_OFF; //wył/wł wyświetlacza 7-segmentowego

unsigned char sekundy = 0; //zmienna przechowująca sekundy
unsigned char minuty = 0; //zmienna przechowująca minuty
unsigned char godziny = 0; //zmienna przechowująca godziny
unsigned char wybierak = 0; //zmienna przechowująca wybrana jednostke czasu do zmienienia
unsigned char daneWys[6]; //tablica przechowująca dane do wyświetlacza 7-segmentowego (hh:mm:ss)
unsigned char iteratorWys = 0; //iterator do tablicy daneWys
unsigned char wybranyWys = 0; //wybrany wyświetlacz 7-segmentowy
__xdata unsigned char* led_wyb = (__xdata unsigned char *) 0xFF30; //rejestr wyboru bitowo wyświetlacza 7-segmentowego
__xdata unsigned char* led_led = (__xdata unsigned char *) 0xFF38; //rejestr wyboru cyfry do wyświetlenia

__bit flagInterruptT0 = FALSE; //flaga przerwania timera 0
__bit flagSecoundPassed = FALSE; //flaga przerwania sekundy

int licznikT0 = 0; //licznik przerwania T0

void seg7Init(){
    unsigned char i;
    wybranyWys = 0b00000001;
    iteratorWys = 0;
    for(i = 0; i < 6; i++){
        daneWys[i] = 0;
    }
}
void timerInit(){
    //SCON = 0b01010000; //ustawienie trybu pracy UART (konfiguracja portu szeregowego)
    TMOD = 0b00100001; //ustawienie trybu pracy timera 0 i 1
    //PCON &= 0b011111111; //ustawienie SMOD na 0 (1 komorka w rejestrze adr. 87H)

    TH0 = 252; //Do przeładowania T0 4 razy aby otrzymać 900 przerwań co sekundę dla trybu 0 
    TL0 = 124; //żeby policzyc do 132 dla trybu 1
    TH1 = 250; //TODO
    TL1 = 250;
    TR0 = 1; //uruchomienie timera 0
    TR1 = 1; //uruchomienie timera 1
    TF1 = 0; //wyzerowanie flagi przerwania timera 1
}
void aktWys(){  // aktualizacja wyświetlacza 7-segmentowego
    if(iteratorWys == 0){ //sekundy sS
        daneWys[0] = sekundy % 10;
    }
    if(iteratorWys == 1){ //sekundy Ss
        daneWys[1] = sekundy / 10;
    }
    if(iteratorWys == 2){ //minuty mM
        daneWys[2] = minuty % 10;
    }
    if(iteratorWys == 3){ //minuty Mm
        daneWys[3] = minuty / 10;
    }
    if(iteratorWys == 4){ //godziny hH
        daneWys[4] = godziny % 10;
    }
    if(iteratorWys == 5){ //godziny Hh
        daneWys[5] = godziny / 10;
    }
}
void aktCzas(){
    if(flagSecoundPassed == TRUE){
        sekundy++;
        flagSecoundPassed = FALSE;
        licznikT0 -= 900; 
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
void wyswietl(){
    SEG_OFF = TRUE; //wyłączenie wyświetlacza 7-segmentowego
    *led_wyb = wybranyWys; //wybranie wyświetlacza 7-segmentowego
    *led_led = WZOR[daneWys[iteratorWys]]; //wybranie cyfry do wyświetlenia
    SEG_OFF = FALSE; //włączenie wyświetlacza 7-segmentowego
}
void main()
{
    seg7Init(); //inicjalizacja wyświetlacza 7-segmentowego
    timerInit(); //inicjalizacja timera
    While(TRUE){
        if(flagInterruptT0 == TRUE){
        flagInterruptT0 = FALSE;
        aktCzas(); //aktualizacja czasu
        aktWys(); //aktualizacja wyświetlacza 7-segmentowego
        Wyswietl(); //wyświetlenie danych na wyświetlaczu 7-segmentowym

        }
        
    }
}