pageextension 50038 SalesInvoiceListExt extends "Sales Invoice List"
{
    layout
    {

        modify("External Document No.")
        {
            Visible = true;
            ApplicationArea = All;

        }
        modify("Posting Description")
        {
            Visible = true;
            ApplicationArea = All;
        }
        modify("Sell-to Country/Region Code")
        {
            Visible = true;
            ApplicationArea = All;
        }
        modify("Currency Code")
        {
            Visible = true;
            ApplicationArea = All;
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
        modify("Assigned User ID")
        {
            Visible = false;
        }
        modify("Due Date")
        {
            Visible = true;
            ApplicationArea = All;
        }
        modify("Location Code")
        {
            Visible = false;
        }
        addafter("Shortcut Dimension 2 Code")
        {
            field("VAT Bus. Posting Group"; Rec."VAT Bus. Posting Group")
            {
                Editable = false;
                ApplicationArea = All;
            }
        }
        addafter("Posting Date")
        {
            field("Order Date"; Rec."Order Date")
            {
                Editable = false;
                ApplicationArea = All;
            }
        }
        movelast(Control1; Amount)

        addlast(Control1)
        {
            field("Amount Including VAT"; Rec."Amount Including VAT")
            {
                Editable = false;
                ApplicationArea = All;
            }
            field("Created By"; Rec."Created By")
            {
                ApplicationArea = All;
            }
        }
    }
}