tableextension 50009 PurchRcptHeaderExt extends "Purch. Rcpt. Header"
{
    fields
    {
        field(50000; BRN; Code[30])
        {
            Editable = false;
        }
        field(50001; "Created By"; Code[50])
        {
            Editable = false;
        }
    }


    trigger OnBeforeDelete()
    begin
        Error('You cannot delete a Posted Document.');
    end;
}