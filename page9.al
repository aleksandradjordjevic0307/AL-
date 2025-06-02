/*Na formi Customer Card, potrebno je uvesti validaciju nad poljem Email.
Validacija treba da osigura da korisnik može uneti samo pravilnu email adresu.
Detalji:
Validacija se pokreće prilikom pokušaja unosa (insert) ili izmene (modify) podataka.
Dozvoljeni format mora sadržati:
-tekst pre znaka @
-znak @
-domen nakon znaka @ (npr. gmail.com)
Ako format nije ispravan, prikazati poruku o grešci i zabraniti unos/izmenu.*/

tableextension 50118 EmailCheck extends Customer
{
    trigger OnBeforeInsert()

    begin
        if (rec."E-Mail" <> '') and not isEmailValid(rec."E-Mail") then Error('Uneta e-mail adresa nije ispravna');
    end;

    trigger OnBeforeModify()
    begin
        if (rec."E-Mail" <> '') and not isEmailValid(rec."E-Mail") then Error('Uneta e-mail adresa nije ispravna');
    end;

    local procedure isEmailValid(email: Text): Boolean
    var
        myInt: Integer;

    begin
        exit((StrPos(email, '@') > 1) and (StrPos(email, '.') > StrPos(email, '@') + 1));
    end;

}



