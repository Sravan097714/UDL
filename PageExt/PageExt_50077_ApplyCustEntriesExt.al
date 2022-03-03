pageextension 50077 ApplyCustEntriesExt extends "Apply Customer Entries"
{
    layout
    {
        modify("Pmt. Discount Date")
        {
            Visible = false;
        }
        modify("Pmt. Disc. Tolerance Date")
        {
            Visible = false;
        }
        modify("Remaining Pmt. Disc. Possible")
        {
            Visible = false;
        }
        modify("Max. Payment Tolerance")
        {
            Visible = false;
        }
        addafter("Currency Code")
        {
            field("Customer Posting Group"; Rec."Customer Posting Group")
            {
                Editable = false;
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        modify("Post Application")
        {
            trigger OnbeforeAction()
            begin
                //greportInpurCertificate.Run();
            end;


            trigger OnAfterAction()
            begin
                //gcuReverseRegister.gfuncClearCertificateNo();
            end;
        }
    }

    var
    //greportInpurCertificate: Report "Input Certificate No.";
    //gcuReverseRegister: Codeunit 50007;
}