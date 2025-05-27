pageextension 50110 CustomerPageExt extends "Customer Card"
{
    layout
    {
        addafter(Name)
        {
            field(PIB; rec.PIB)
            {
                Caption = 'PIB';
                Visible = true;
                ApplicationArea = all;
            }
        }

    }
}