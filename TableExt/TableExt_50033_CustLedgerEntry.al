tableextension 50033 CustLedgerEntryExt extends "Cust. Ledger Entry"
{
    fields
    {
        field(50000; "Bank Name for Cheque"; Text[30]) { }
        field(50001; "Created By"; Text[50])
        {
            Editable = false;
        }
        field(50002; "Created On"; DateTime)
        {
            Editable = false;
        }
        field(50003; "Payment Description"; Text[100]) { }
    }
}