tableextension 50001 CustExt extends Customer
{
    fields
    {
        field(50000; BRN; Text[30]) { }
        field(50001; "Created By"; Text[50])
        {
            Editable = false;
        }
        field(50002; "Created On"; DateTime)
        {
            Editable = false;
        }
    }

    trigger OnInsert()
    begin
        "Created By" := UserId;
        "Created On" := CurrentDateTime;
    end;
}