tableextension 50003 SalesHeaderExt extends "Sales Header"
{
    fields
    {
        field(50000; "BRN"; Code[30])
        {
            Editable = false;
        }
        field(50001; "Delivery Date"; Date) { }
        field(50002; "Created By"; Code[50])
        {
            Editable = false;
        }
        field(50003; "Proforma Invoice No."; Code[20]) { }
    }

    trigger OnInsert()
    begin
        "Created By" := UserId();
    end;
}