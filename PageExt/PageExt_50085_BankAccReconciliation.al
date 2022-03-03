pageextension 50085 BankAccReconciliation extends "Bank Acc. Reconciliation"
{
    actions
    {
        addlast(Processing)
        {
            group(Line)
            {
                action("Apply Entries")
                {
                    ApplicationArea = All;
                    Image = ApplyEntries;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                    trigger OnAction()
                    begin
                        CurrPage.StmtLine.PAGE.gfuncApplyEntries();
                    end;
                }
            }
        }
    }
}