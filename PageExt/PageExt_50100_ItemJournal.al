pageextension 50100 ItemJnlExt extends "Item Journal"
{
    layout
    {
        modify("Gen. Prod. Posting Group")
        {
            Visible = true;
        }
        modify("Discount Amount")
        {
            Visible = false;
        }
        modify("Unit Amount")
        {
            Visible = false;
        }
        modify("Applies-to Entry")
        {
            Visible = false;
        }
        modify(ShortcutDimCode3)
        {
            Visible = false;
        }
        modify(ShortcutDimCode4)
        {
            Visible = false;
        }
        modify(ShortcutDimCode5)
        {
            Visible = false;
        }
        modify(ShortcutDimCode6)
        {
            Visible = false;
        }
        modify(Amount)
        {
            Editable = gboolEditCost;
        }
        modify("Unit Cost")
        {
            Editable = gboolEditCost;
        }
    }


    trigger OnOpenPage()
    begin
        gboolEditCost := false;
        if grecUserSetup.Get(UserId) then begin
            if grecUserSetup."Edit Cost on Item Journal" then
                gboolEditCost := true;
        end;
    end;

    var
        grecUserSetup: Record "User Setup";
        gboolEditCost: Boolean;

}