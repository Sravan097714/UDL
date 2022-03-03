pageextension 50110 ProdJnlExt extends "Production Journal"
{

    actions
    {
        modify(Post)
        {
            trigger OnBeforeAction()
            begin
                if grecUserSetup.get(UserId) then begin
                    if grecUserSetup."Can Post on Production Journal" then
                        Error('You do not have access to post this journal.');
                end;
            end;
        }

        modify("Post and &Print")
        {
            trigger OnBeforeAction()
            begin
                if grecUserSetup.get(UserId) then begin
                    if grecUserSetup."Can Post on Production Journal" then
                        Error('You do not have access to post this journal.');
                end;
            end;
        }
    }

    var
        grecUserSetup: Record "User Setup";
}