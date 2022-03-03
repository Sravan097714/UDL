tableextension 50024 VendLedgerEntryExt extends "Vendor Ledger Entry"
{
    fields
    {
        field(50000; "PV Number"; Code[20]) { }
        field(50001; "TDS Code"; Code[50]) { }
        field(50002; "Created By"; Text[50])
        {
            Editable = false;
        }
        field(50003; "Created On"; DateTime)
        {
            Editable = false;
        }
    }
}