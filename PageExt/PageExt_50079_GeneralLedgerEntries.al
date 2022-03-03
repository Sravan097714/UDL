pageextension 50079 GeneralLedgerEntries extends "General Ledger Entries"
{
    layout
    {
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
        modify("Debit Amount")
        {
            Visible = true;
            ApplicationArea = All;
        }
        modify("Credit Amount")
        {
            Visible = true;
            ApplicationArea = All;
        }
        modify("VAT Amount")
        {
            Visible = true;
            ApplicationArea = All;
        }
        modify("User ID")
        {
            Visible = true;
            ApplicationArea = All;
        }
        modify("Source Code")
        {
            Visible = true;
            ApplicationArea = All;
        }
        modify("Dimension Set ID")
        {
            Visible = true;
            ApplicationArea = All;
        }
        modify("G/L Account Name")
        {
            Visible = true;
            ApplicationArea = All;
        }
        modify(Quantity)
        {
            Visible = true;
            ApplicationArea = All;
        }
        moveafter("G/L Account No."; "G/L Account Name")

        addlast(Control1)
        {
            field("Creation Date"; Rec."Creation Date")
            {
                ApplicationArea = All;
            }
            field("PV Number"; Rec."PV Number")
            {
                ApplicationArea = All;
            }
            field("Bank Name for Cheque"; "Bank Name for Cheque")
            {
                ApplicationArea = All;
            }
            field(Payee; Payee) { ApplicationArea = All; }
            field("Created By"; "Created By") { ApplicationArea = All; }
            field("Created On"; "Created On") { ApplicationArea = All; }
            field("Payment Description"; "Payment Description") { ApplicationArea = All; }
        }
    }
}