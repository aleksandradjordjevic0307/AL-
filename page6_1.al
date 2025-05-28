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
}