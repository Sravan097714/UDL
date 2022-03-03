pageextension 50049 PostedPurchInvSubformExt extends "Posted Purch. Invoice Subform"
{
    layout
    {
        // Add changes to page layout here
        modify(FilteredTypeField)
        {
            Visible = false;
        }
        modify("Shortcut Dimension 1 Code")
        {
            Visible = false;
            ApplicationArea = All;
        }
        modify("Shortcut Dimension 2 Code")
        {
            Visible = false;
        }
        modify("Tax Group Code")
        {
            Visible = false;
        }
        modify("Tax Area Code")
        {
            Visible = false;
        }
        modify("Job No.")
        {
            Visible = false;
        }
        modify("Line Discount Amount")
        {
            Visible = true;
            ApplicationArea = All;
        }
        modify("Total Amount Excl. VAT")
        {
            Visible = true;
            ApplicationArea = All;
        }
        modify("Total Amount Incl. VAT")
        {
            Visible = true;
            ApplicationArea = All;
        }
        modify("Deferral Code")
        {
            Visible = false;
        }

        modify("Unit of Measure Code")
        {
            Visible = false;
        }
        modify("Unit Price (LCY)")
        {
            Visible = false;
        }


        addafter(Description)
        {
            field("Description 2"; Rec."Description 2")
            {
                Editable = false;
                ApplicationArea = All;
            }
        }

        addafter(Quantity)
        {
            field("Gen. Prod. Posting Group"; Rec."Gen. Prod. Posting Group")
            {
                ApplicationArea = All;
            }
            field("VAT Prod. Posting Group"; Rec."VAT Prod. Posting Group")
            {
                Editable = false;
                ApplicationArea = All;

            }
            field("VAT Bus. Posting Group"; Rec."VAT Bus. Posting Group")
            {
                Editable = false;
                ApplicationArea = All;
            }
        }

    }
}