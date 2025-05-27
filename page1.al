pageextension 50102 CustomerCardExt2 extends "Customer Card"
{
    layout
    {
        addafter(Name)
        {
            field(ContactPersonName; rec.ContactPersonName)
            {
                ApplicationArea = all;
            }
        }
    }
}