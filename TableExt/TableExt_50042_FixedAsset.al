tableextension 50042 FixedAssetExt extends "Fixed Asset"
{
    fields
    {
        field(50000; "Created By"; Text[50])
        {
            Editable = false;
        }
        field(50001; "Created On"; DateTime)
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