tableextension 50044 StdCustSalesCodeExt extends "Standard Customer Sales Code"
{
    fields
    {
        field(50000; "Global Dimension 1 Code"; Code[20])
        {
            TableRelation = "Dimension Value".Code where("Global Dimension No." = filter(1));
        }
        field(50001; "Customer Posting Group"; Code[20])
        {
            TableRelation = "Customer Posting Group";
        }
        field(50002; "Payment Terms"; Code[10])
        {
            TableRelation = "Payment Terms";
        }
    }
}