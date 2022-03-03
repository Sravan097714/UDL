pageextension 50092 RoutingExt extends Routing
{
    layout
    {
        addafter("No.")
        {
            field("Item No."; "Item No.")
            {
                ApplicationArea = All;
            }
        }
    }
}