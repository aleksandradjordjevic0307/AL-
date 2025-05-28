pageextension 50116 CustomerListExt6 extends "Customer List"
{
    layout
    {
        addfirst(Control1)
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