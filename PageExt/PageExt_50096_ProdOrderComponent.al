pageextension 50096 ProdOrderComponentExt extends "Prod. Order Components"
{
    layout
    {
        modify("Reserved Quantity")
        {
            Editable = true;
            Visible = true;
        }

        modify("Bin Code")
        {
            Visible = false;
        }

        addlast(Control1)
        {
            field("Act. Consumption (Qty)"; "Act. Consumption (Qty)")
            {
                ApplicationArea = All;
                Caption = 'Issued Qty';
            }
        }
    }
}