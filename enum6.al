/*Potrebno je da se korisniku omogući unos vrednosti tipa kupca kroz novo polje Customer Type na:
-Customer Card (detaljna forma jednog kupca)
-Customer List (pregled svih kupaca)
Detalji:
Polje treba da bude enumeracija (ENUM) sa sledećim vrednostima:
-Private
-Company
-Government
Polje treba biti vidljivo i dostupno za unos na kartici, i vidljivo u listi.*/

enum 50112 CustomerTypeEnum
{
    Extensible = true;
    Caption = 'Customer Type';

    value(0; Private)
    {
        Caption = 'Private';
    }
    value(1; Company)
    {
        Caption = 'Company';
    }
    value(2; Government)
    {
        Caption = 'Government';
    }
}