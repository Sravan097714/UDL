pageextension 50120 StandardSalesCodeCard extends "Standard Sales Code Card"
{
    layout
    {
        addlast(General)
        {
            field("Global Dimension 1 Code"; "Global Dimension 1 Code") { ApplicationArea = All; }
            field("Customer Posting Group"; "Customer Posting Group") { ApplicationArea = All; }
            field("Payment Terms"; "Payment Terms") { ApplicationArea = All; }
        }
    }
}