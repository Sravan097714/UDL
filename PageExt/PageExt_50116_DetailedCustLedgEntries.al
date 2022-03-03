pageextension 50116 DetailedCustLedgerEntriesExt extends "Detailed Cust. Ledg. Entries"
{
    layout
    {
        modify("Cust. Ledger Entry No.")
        {
            Visible = true;
        }
        modify("User ID")
        {
            Visible = true;
        }
        modify(Unapplied)
        {
            Visible = true;
        }

        addlast(Control1)
        {
            field("Applied Cust. Ledger Entry No."; "Applied Cust. Ledger Entry No.") { ApplicationArea = All; }
            field("Initial Document Type"; "Initial Document Type") { ApplicationArea = All; }
            field("Journal Batch Name"; "Journal Batch Name") { ApplicationArea = All; }
        }
    }
}