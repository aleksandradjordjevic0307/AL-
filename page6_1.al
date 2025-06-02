pageextension 50115 CustomerTypePageExt extends "Customer Card"
{
    layout
    {
        addafter(Name)
        {
            field(CustomerType; rec.CustomerType)
            {
                Visible = true;
                Caption = 'Customer Type';
                ApplicationArea = all;

            }
        }
    }

    /*Zadatak 10: Potrebno je automatski postaviti vrednost u polju "Customer Type" na "Private" prilikom kreiranja novog kupca.*/

    trigger OnNewRecord(belowRec: Boolean)
    begin
        rec.CustomerType := CustomerTypeEnum::Private;
    end;
}