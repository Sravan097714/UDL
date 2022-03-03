pageextension 50115 DetailedVendLedgerEntriesExt extends "Detailed Vendor Ledg. Entries"
{
    layout
    {
        modify("Vendor Ledger Entry No.")
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
            field("Applied Vend. Ledger Entry No."; "Applied Vend. Ledger Entry No.") { ApplicationArea = All; }
            field("Initial Document Type"; "Initial Document Type") { ApplicationArea = All; }
            field("Journal Batch Name"; "Journal Batch Name") { ApplicationArea = All; }
        }
    }
}