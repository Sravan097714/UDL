tableextension 50005 PurchHeaderExt extends "Purchase Header"
{
    fields
    {
        field(50000; "BRN"; Code[30])
        {
            Editable = false;
        }
        field(50001; "Created By"; Code[50])
        {
            Editable = false;
        }
        field(50002; "Date Time Released"; DateTime)
        {
            Editable = false;
        }
        field(50003; "Released By"; text[50])
        {
            Editable = false;
        }
        field(50004; "Date Time Reopened"; DateTime)
        {
            Editable = false;
        }
        field(50005; "Reopened By"; text[50])
        {
            Editable = false;
        }
    }

    trigger OnInsert()
    begin
        "Created By" := UserId();
    end;
}