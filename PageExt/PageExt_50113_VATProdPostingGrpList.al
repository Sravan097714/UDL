pageextension 50113 VATProdPostingGrpListExt extends "VAT Product Posting Groups"
{
    layout
    {
        addlast(Control1)
        {
            field("TDS %"; "TDS %") { ApplicationArea = All; }
            field("TDS Account"; "TDS Account") { ApplicationArea = All; }
            field(Type; Type) { ApplicationArea = All; }
        }
    }
}