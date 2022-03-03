tableextension 50008 SalesShipHeader extends "Sales Shipment Header"
{
    fields
    {
        field(50000; "BRN"; code[30])
        {
            Editable = false;
        }
        field(50001; "Delivery Date"; Date) { }
        field(50002; "Created By"; Code[50])
        {
            Editable = false;
        }
    }
}