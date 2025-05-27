//Na stranici Customer Card potrebno je dodati novo polje za unos PIB broja firme.
//Polje treba da bude tekstualnog tipa (maksimalno 9 karaktera).
//Neka se pozicionira ispod postojećeg polja "Name".
//Naziv polja treba da bude „PIB“.
//Podaci iz ovog polja treba da se čuvaju u tabeli Customer.
//Polje za sada ne mora da bude obavezno, niti je potrebna validacija unosa.

tableextension 50108 PIBExt extends Customer
{
    fields
    {
        field(50109; PIB; Text[9])
        {
            Caption = 'PIB';
        }
    }

    /*TASK 5:
    Na formi Customer Card, polje PIB mora biti obavezno za unos samo ako je izabrana vrednost u polju "Customer Posting Group" jednaka "FOREIGN".
    Dodatna pojašnjenja:
    Ako korisnik pokuša da sačuva podatke bez unetog PIB-a dok je "Customer Posting Group" postavljeno na "FOREIGN", treba prikazati poruku o grešci.
    U suprotnom, unos može da prođe i ako PIB nije unet.*/


    trigger OnAfterModify()
    begin
        if (rec."Customer Posting Group" = 'FOREIGN') and (rec.PIB = '') then
            Error('Polje PIB je obavezno kada je Customer Posting Group jednako FOREIGN');
    end;
}