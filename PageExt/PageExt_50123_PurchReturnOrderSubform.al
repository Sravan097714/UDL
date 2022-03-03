pageextension 50123 PurchReturnOrdSubformExt extends "Purchase Return Order Subform"
{
    layout
    {
        modify("VAT Prod. Posting Group")
        {
            Visible = true;
            ApplicationArea = All;
        }
    }
}