pageextension 50071 ItemLedgerEntries extends "Item Ledger Entries"
{
    layout
    {
        modify("Cost Amount (Non-Invtbl.)")
        {
            Visible = false;
        }
        modify("Global Dimension 1 Code")
        {
            Visible = true;
            ApplicationArea = All;
        }
        modify("Global Dimension 2 Code")
        {
            Visible = true;
            ApplicationArea = All;
        }
    }
}