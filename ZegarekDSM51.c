//Zegar w C na 8051
#include <8051.h>

#define TRUE 1
#define FALSE 0

//tablica przechowująca szablon cyfr dla wyświetlacza 7-segmentowego
__code unsigned char WZOR[10] = { 0b0111111, 0b0000110, 0b1011011, 0b1001111, 0b1100110, 0b1101101, 0b1111101, 0b0000111, 0b1111111, 0b1101111 };
__bit __at (0x96) LED; //LED na pin P1.6 (wł/wył)

unsigned char sekundy = 0; //zmienna przechowująca sekundy
unsigned char minuty = 0; //zmienna przechowująca minuty
unsigned char godziny = 0; //zmienna przechowująca godziny
unsigned char wybierak = 0; //zmienna przechowująca wybrana jednostke czasu do zmienienia
unsigned char daneWys[6]; //tablica przechowująca dane do wyświetlacza 7-segmentowego
unsigned char iteratorWys = 0; //iterator do tablicy daneWys
unsigned char wybranyWys = 0; //wybrany wyświetlacz 7-segmentowy

__bit flagInterruptT0 = FALSE; //flaga przerwania timera 0
__bit flagSecoundPassed = FALSE; //flaga przerwania sekundy
int licznikT0 = 0; //licznik przerwania T0

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
void lcdInit(){

}
void seg7Init(){

}
void timerInit(){

}
void aktWys(){
    
}
void main()
{
    lcdInit(); //inicjalizacja wyświetlacza
    seg7Init(); //inicjalizacja wyświetlacza 7-segmentowego
    timerInit(); //inicjalizacja timera
    While(TRUE){
        aktWys(); //aktualizacja wyświetlacza 7-segmentowego
        aktCzas(); //aktualizacja czasu
    }
}