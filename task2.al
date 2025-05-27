//Na formi Customer Card, korisnici više ne žele da vide polje „Fax No.“ jer se više ne koristi.
//Potrebno je ukloniti polje. 

pageextension 50108 CustomerCardExt1 extends "Customer Card"
{
    layout
    {
        modify("Fax No.")
        {
            Visible = false;
        }
    }
}