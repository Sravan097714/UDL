tableextension 50022 BankAccLedgerEntryExt extends "Bank Account Ledger Entry"
{
    fields
    {
        field(50000; "PV Number"; Code[20]) { }
        field(50001; "Bank Name for Cheque"; Text[30]) { }
        field(50002; "TDS Code"; Code[50]) { }
        field(50003; "OR No. Printed"; Integer) { }
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