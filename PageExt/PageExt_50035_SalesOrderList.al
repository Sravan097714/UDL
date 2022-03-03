pageextension 50035 SalesOrderListExt extends "Sales Order List"
{
    layout
    {
        modify("Sell-to Country/Region Code")
        {
            Visible = true;
            ApplicationArea = All;
        }
        modify("Sell-to Post Code")
        {
            Visible = true;
            ApplicationArea = All;
        }
        modify("Sell-to Contact")
        {
            Visible = true;
            ApplicationArea = All;
        }
        modify("Document Date")
        {
            Visible = false;
        }
        modify("Completely Shipped")
        {
            Visible = false;
        }
        modify("Amt. Ship. Not Inv. (LCY)")
        {
            Visible = false;
        }
        modify("Amt. Ship. Not Inv. (LCY) Base")
        {
            Visible = false;
        }
        modify("Posting Date")
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
        modify("Location Code")
        {
            Visible = false;
        }
        addlast(Control1)
        {
            field("Created By"; Rec."Created By")
            {
                ApplicationArea = All;
            }
        }
    }
}