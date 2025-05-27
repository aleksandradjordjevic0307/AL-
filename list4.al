//Korisnici žele da na listi kupaca (Customer List stranica) mogu odmah da vide PIB firme, bez potrebe da ulaze u detalje kupca.

pageextension 50111 PIBPageExt extends "Customer List"
{
    layout
    {
        addlast(Control1)
        {
            field(PIB; Rec.PIB)
            {
                ApplicationArea = all;
                Caption = 'PIB';
                Visible = true;
            }
        }
    }
}