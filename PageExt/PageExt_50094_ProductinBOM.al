pageextension 50094 ProductionBOMExt extends "Production BOM"
{
    layout
    {
        addafter("No.")
        {
            field("Item No."; "Item No.")
            {
                ApplicationArea = All;
            }
        }
    }
}