/*Zadatak 7:
Na stranici Customer Card potrebno je implementirati sledeće pravilo:
Ako je korisnik u polju Customer Type izabrao vrednost Company, onda mora da unese i vrednost u polju PIB (ako nije uneo, ne sme da sačuva).
Za ostale tipove kupaca (Private i Government), polje PIB nije obavezno.*/

/*Zadatak 8:
Potrebno je da se na stranici Customer Card (detaljna forma kupca) doda sledeće pravilo:
Polje PIB mora imati tačno 9 karaktera ako je popunjeno.
Ako je uneseno manje ili više od 9 karaktera, korisniku treba prikazati poruku o grešci i sprečiti čuvanje podataka.
Ako je polje prazno, ne treba prikazivati grešku*/
tableextension 50117 PIBAndCustomerTypeExt extends Customer
{

    trigger OnBeforeInsert()

    begin
        //zadatak 7
        if (rec.CustomerType = CustomerType::Company) and (rec.PIB = '') then
            Error('Ukoliko ste odabrali tip kupca Company, morate popuniti i PIB');

        //zadatak 8
        if (StrLen(rec.PIB) <> 9) and (rec.PIB <> '') then
            Error('PIB mora biti dugacak tacno 9 karaktera');

    end;

    trigger OnBeforeModify()
    begin
        //zadatak 7
        if (rec.CustomerType = CustomerType::Company) and (rec.PIB = '') then
            Error('Ukoliko ste odabrali tip kupca Company, morate popuniti i PIB');

        //zadatak 8
        if (StrLen(rec.PIB) <> 9) and (rec.PIB <> '') then
            Error('PIB mora biti dugacak tacno 9 karaktera');

    end;

}