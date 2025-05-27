pageextension 50102 CustomerCardExt extends "Customer Card"
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