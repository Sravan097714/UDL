pageextension 50121 StandardSalesCodes extends "Standard Sales Codes"
{
    layout
    {
        addlast(Control1)
        {
            field("Global Dimension 1 Code"; "Global Dimension 1 Code") { ApplicationArea = All; }
            field("Customer Posting Group"; "Customer Posting Group") { ApplicationArea = All; }
            field("Payment Terms"; "Payment Terms") { ApplicationArea = All; }
        }
    }
}