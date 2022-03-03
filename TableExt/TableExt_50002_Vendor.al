tableextension 50002 VendorExt extends Vendor
{
    fields
    {
        field(50000; BRN; Text[30]) { }
        field(50001; NID; Text[25]) { }
        field(50002; "Created By"; Text[50])
        {
            Editable = false;
        }
        field(50003; "Created On"; DateTime)
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