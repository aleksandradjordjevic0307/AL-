/*Na stranici Customer Card potrebno je ograničiti unos u polje "Name" tako da nije moguće uneti više od 50 karaktera.*/

tableextension 50119 NameValidacija extends Customer
{
    trigger OnBeforeInsert()

    begin
        if (StrLen(rec.Name) > 50) then Error('Uneto ime ne sme biti duze od 50 karaktera');
    end;

    trigger OnBeforeModify()

    begin
        if (StrLen(rec.Name) > 50) then Error('Uneto ime ne sme biti duze od 50 karaktera');
    end;

}