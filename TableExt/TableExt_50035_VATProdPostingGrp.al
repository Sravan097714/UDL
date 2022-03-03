tableextension 50035 VATProdPostingGrpExt extends "VAT Product Posting Group"
{
    fields
    {
        field(50000; "TDS %"; Decimal) { }
        field(50001; "TDS Account"; Code[20])
        {
            TableRelation = "G/L Account";
        }
        field(50002; Type; Option)
        {
            OptionMembers = " ",All,Purchase,Sale;
        }
    }
}