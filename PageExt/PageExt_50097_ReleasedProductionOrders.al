pageextension 50097 ReleasedProdOrdsExt extends "Released Production Orders"
{
    layout
    {
        addlast(Control1)
        {
            field(Delete; Delete)
            {
                ApplicationArea = All;
            }
            field("Sales Order No."; "Sales Order No.")
            {
                ApplicationArea = all;
            }
        }
    }
}