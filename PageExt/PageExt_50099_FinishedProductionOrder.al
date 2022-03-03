pageextension 50099 FinishedProdOrdExt extends "Finished Production Order"
{
    layout
    {
        addlast(General)
        {
            field("Saled Order No."; "Sales Order No.")
            {
                ApplicationArea = all;
            }
        }
    }
}