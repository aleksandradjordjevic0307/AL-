/*Na stranici Customer Card potrebno je implementirati sledeće pravilo:
Ako je korisnik u polju Customer Type izabrao vrednost Company, onda mora da unese i vrednost u polju PIB (ako nije uneo, ne sme da sačuva).
Za ostale tipove kupaca (Private i Government), polje PIB nije obavezno.*/
tableextension 50117 PIBAndCustomerTypeExt extends Customer
{

    trigger OnBeforeInsert()

    begin
        if (rec.CustomerType = CustomerType::Company) and (rec.PIB = '') then
            Error('Ukoliko ste odabrali tip kupca Company, morate popuniti i PIB');
    end;

    trigger OnBeforeModify()
    begin
        if (rec.CustomerType = CustomerType::Company) and (rec.PIB = '') then
            Error('Ukoliko ste odabrali tip kupca Company, morate popuniti i PIB');
    end;

}