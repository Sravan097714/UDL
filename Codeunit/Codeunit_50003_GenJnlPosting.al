codeunit 50003 GenJnlPosting
{
    SingleInstance = true;

    [EventSubscriber(ObjectType::Codeunit, 13, 'OnBeforePostGenJnlLine', '', false, false)]
    local procedure MyProcedureSavePVNumber(VAR GenJournalLine: Record "Gen. Journal Line"; CommitIsSuppressed: Boolean; VAR Posted: Boolean)
    var
        grecGenJnlBatchName: Record "Gen. Journal Batch";
        NoSeriesMgt: Codeunit NoSeriesManagement;
    begin
        grecGenJnlBatchName.Reset;
        grecGenJnlBatchName.SetRange("Journal Template Name", GenJournalLine."Journal Template Name");
        grecGenJnlBatchName.SetRange(Name, GenJournalLine."Journal Batch Name");
        grecGenJnlBatchName.Setfilter(grecGenJnlBatchName."PV No. Series", '<>%1', '');
        if grecGenJnlBatchName.FindFirst then
            gcodePVNumber := NoSeriesMgt.GetNextNo(grecGenJnlBatchName."PV No. Series", Today, TRUE)
        else
            Clear(gcodePVNumber);
    end;


    [EventSubscriber(ObjectType::Codeunit, 12, 'OnAfterInitGLEntry', '', false, false)]
    local procedure InsertinGLEntry(VAR GLEntry: Record "G/L Entry"; GenJournalLine: Record "Gen. Journal Line")
    begin
        GLEntry."PV Number" := gcodePVNumber;
        GLEntry."Creation Date" := Today;
        GLEntry."Bank Name for Cheque" := GenJournalLine."Bank Name for Cheque";
        GLEntry."TDS Code" := GenJournalLine."TDS Code";
        GLEntry.Payee := GenJournalLine.Payee;
        GLEntry."Created By" := UserId;
        GLEntry."Created On" := CurrentDateTime;
        GLEntry."Payment Description" := GenJournalLine."Payment Description";
    end;


    [EventSubscriber(ObjectType::Codeunit, 12, 'OnAfterInitBankAccLedgEntry', '', false, false)]
    local procedure InsertinBankAccLedgerEntry(VAR BankAccountLedgerEntry: Record "Bank Account Ledger Entry"; GenJournalLine: Record "Gen. Journal Line")
    begin
        BankAccountLedgerEntry."PV Number" := gcodePVNumber;
        BankAccountLedgerEntry."Bank Name for Cheque" := GenJournalLine."Bank Name for Cheque";
        BankAccountLedgerEntry."TDS Code" := GenJournalLine."TDS Code";
        BankAccountLedgerEntry.Payee := GenJournalLine.Payee;
        BankAccountLedgerEntry."Created By" := UserId;
        BankAccountLedgerEntry."Created On" := CurrentDateTime;
        BankAccountLedgerEntry."Payment Description" := GenJournalLine."Payment Description";
    end;


    [EventSubscriber(ObjectType::Codeunit, 12, 'OnAfterInitVendLedgEntry', '', false, false)]
    local procedure InsertinVendLedgerEntry(VAR VendorLedgerEntry: Record "Vendor Ledger Entry"; GenJournalLine: Record "Gen. Journal Line")
    begin
        VendorLedgerEntry."PV Number" := gcodePVNumber;
        VendorLedgerEntry."TDS Code" := GenJournalLine."TDS Code";
        VendorLedgerEntry."Created By" := UserId;
        VendorLedgerEntry."Created On" := CurrentDateTime;
    end;

    [EventSubscriber(ObjectType::Codeunit, 12, 'OnAfterInitCustLedgEntry', '', false, false)]
    local procedure InsertinCustLedgerEntry(VAR CustLedgerEntry: Record "Cust. Ledger Entry"; GenJournalLine: Record "Gen. Journal Line")
    begin
        CustLedgerEntry."Bank Name for Cheque" := GenJournalLine."Bank Name for Cheque";
        CustLedgerEntry."Created By" := UserId;
        CustLedgerEntry."Created On" := CurrentDateTime;
        CustLedgerEntry."Payment Description" := GenJournalLine."Payment Description";
    end;


    var
        gcodePVNumber: Code[20];
}