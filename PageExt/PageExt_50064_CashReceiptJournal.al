pageextension 50064 CashReceiptJournal extends "Cash Receipt Journal"
{
    layout
    {
        modify("External Document No.")
        {
            Visible = true;
            ApplicationArea = All;
        }
        modify("Currency Code")
        {
            Visible = true;
            ApplicationArea = All;
        }
        modify("Amount (LCY)")
        {
            Visible = false;
        }
        modify(Correction)
        {
            Visible = false;
        }
        modify("Applies-to Doc. Type")
        {
            Visible = false;
        }
        modify("Applies-to Doc. No.")
        {
            Visible = false;
        }

        modify("Shortcut Dimension 1 Code")
        {
            Visible = true;
            ApplicationArea = All;
        }
        modify("Shortcut Dimension 2 Code")
        {
            Visible = true;
            ApplicationArea = All;

        }

        addfirst(Control1)
        {
            field("Line No."; Rec."Line No.")
            {
                ApplicationArea = all;
                Editable = false;
            }
        }

        addbefore(Amount)
        {
            field("Bank Name for Cheque"; "Bank Name for Cheque") { ApplicationArea = all; }
            field(Payee; Payee) { ApplicationArea = All; }
            field("Posting Group"; "Posting Group") { ApplicationArea = All; Editable = true; }
        }

        moveafter("Bank Name for Cheque"; "External Document No.")

        addafter("Account No.")
        {
            field("Payment Method Code"; Rec."Payment Method Code")
            {
                ApplicationArea = All;
            }
        }
        addlast(Control1)
        {
            field("Payment Description"; "Payment Description")
            {
                ApplicationArea = All;
            }
        }

    }
}