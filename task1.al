//Na formi Customer Card potrebno je dodati polje za unos naziva kontakt osobe.
//Polje treba da:
//bude tekstualno (do 100 karaktera),
//bude vidljivo ispod polja “Name”,
//ne bude obavezno za unos,
//bude vidljivo i u listi kupaca (Customer List), radi lakšeg prepoznavanja kontakta.

tableextension 50101 CustomerExt extends Customer
{
    fields
    {
        field(50101; ContactPersonName; Text[100])
        {
            Caption = 'Contact Person Name (Test)';
            DataClassification = CustomerContent;
        }
        field(50104; ContactPersonTest; Text[100])
        {
            Caption = 'Contact Person (Test)';
            DataClassification = CustomerContent;
        }
    }
}