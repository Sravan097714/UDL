tableextension 50000 GLEntryExt extends "G/L Entry"
{
    fields
    {
        field(50000; "Creation Date"; Date)
        {
            Caption = 'Created On';
        }
        field(50001; "PV Number"; Code[20]) { }
        field(50002; "Bank Name for Cheque"; Text[30]) { }
        field(50003; "TDS Code"; Code[50]) { }
        field(50004; Payee; Text[250]) { }
        field(50005; "Created By"; Text[50])
        {
            Editable = false;
        }
        field(50006; "Created On"; DateTime)
        {
            Editable = false;
        }
        field(50007; "Payment Description"; Text[100]) { }
    }
}