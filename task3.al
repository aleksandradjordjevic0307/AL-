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
}