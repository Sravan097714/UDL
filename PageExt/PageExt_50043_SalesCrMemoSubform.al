pageextension 50043 SalesCrMemoSubformExt extends "Sales Cr. Memo Subform"
{
    layout
    {
        modify(Type)
        {
            Visible = true;
            ApplicationArea = All;
        }
        modify(FilteredTypeField)
        {
            Visible = false;
        }
        modify("Line Discount Amount")
        {
            Visible = true;
            ApplicationArea = All;
        }
        modify("Qty. Assigned")
        {
            Visible = false;
        }
        modify("Qty. to Assign")
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
        modify("Location Code")
        {
            Visible = false;
        }
        modify("Unit of Measure Code")
        {
            Visible = false;
        }
        modify("Tax Group Code")
        {
            Visible = false;
        }


        addfirst(Control1)
        {
            field("Line No."; Rec."Line No.")
            {
                ApplicationArea = all;
                Editable = false;
            }
        }

        addafter(Quantity)
        {
            field("Gen. Prod. Posting Group"; Rec."Gen. Prod. Posting Group")
            {
                ApplicationArea = all;
            }
        }

        addafter(Description)
        {
            field("Description 2"; Rec."Description 2")
            {
                Editable = true;
                ApplicationArea = All;
            }
        }

        addlast(Control1)
        {
            field(TDS; TDS) { ApplicationArea = All; }
        }

        moveafter("Gen. Prod. Posting Group"; "VAT Prod. Posting Group")

        modify("VAT Prod. Posting Group")
        {
            Visible = true;
            ApplicationArea = All;
        }

    }
}