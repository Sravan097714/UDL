pageextension 50122 StdCustSalesCodesExt extends "Standard Customer Sales Codes"
{
    layout
    {
        modify("Direct Debit Mandate ID")
        {
            Visible = false;
        }
        addlast(Control1)
        {
            field("Global Dimension 1 Code"; "Global Dimension 1 Code") { ApplicationArea = All; }
            field("Customer Posting Group"; "Customer Posting Group") { ApplicationArea = All; }
        }
    }
}