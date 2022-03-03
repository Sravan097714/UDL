page 50003 "Adminstrative Tasks"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    Permissions = tabledata "Sales Invoice Header" = rim, tabledata "Accounting Period" = rim;


    layout
    {
        area(Content)
        {
            group("Filter")
            {
                field("Document No."; gtextDocNo)
                {
                    ApplicationArea = All;
                }
                field("Entry No"; gtextEntryNo)
                {
                    ApplicationArea = All;
                }

                field("No."; gtextNo)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Update Payment terms Code - Customer")
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;
                Visible = false;

                trigger OnAction()
                var
                    grecCustomer: Record Customer;
                begin
                    grecCustomer.Reset();
                    grecCustomer.SetRange("No.");
                    if grecCustomer.FindSet then begin
                        repeat
                            grecCustomer."Payment Terms Code" := '30D';
                            grecCustomer.Modify();
                        until grecCustomer.Next = 0;
                        Message('Payment Terms Code updated for all customers.');
                    end;
                end;
            }


            action("Update Payment terms Code - Vendor")
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;
                Visible = false;

                trigger OnAction()
                var
                    grecVendor: Record Vendor;
                begin
                    grecVendor.Reset();
                    grecVendor.SetRange("No.");
                    if grecVendor.FindSet then begin
                        repeat
                            grecVendor."Payment Terms Code" := '30D';
                            grecVendor.Modify();
                        until grecVendor.Next = 0;
                        Message('Payment Terms Code updated for all vendors.');
                    end;
                end;
            }


            action("Update Global Dimension - HO")
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;
                Visible = false;

                trigger OnAction()
                var
                    grecGLEntry: Record "G/L Entry";
                    grecCustLedgEntry: Record "Cust. Ledger Entry";
                    grecDetailedCustLedgerEntry: Record "Detailed Cust. Ledg. Entry";
                    grecBankAccLedgEntry: Record "Bank Account Ledger Entry";
                begin
                    grecGLEntry.Reset();
                    grecGLEntry.SetFilter("Document No.", gtextDocNo);
                    grecGLEntry.ModifyAll("Global Dimension 2 Code", 'HO');

                    grecCustLedgEntry.Reset();
                    grecCustLedgEntry.SetFilter("Document No.", gtextDocNo);
                    grecCustLedgEntry.ModifyAll("Global Dimension 2 Code", 'HO');

                    grecDetailedCustLedgerEntry.Reset();
                    grecDetailedCustLedgerEntry.SetFilter("Document No.", gtextDocNo);
                    grecDetailedCustLedgerEntry.ModifyAll("Initial Entry Global Dim. 2", 'HO');

                    grecBankAccLedgEntry.Reset();
                    grecBankAccLedgEntry.SetFilter("Document No.", gtextDocNo);
                    grecBankAccLedgEntry.ModifyAll("Global Dimension 2 Code", 'HO');

                    Message('Global Dimension 2 code has been updated.');
                end;
            }


            action("Update Global Dimension - MEMBER SUBSCRIP")
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;
                Visible = false;

                trigger OnAction()
                var
                    grecGLEntry: Record "G/L Entry";
                    grecCustLedgEntry: Record "Cust. Ledger Entry";
                    grecDetailedCustLedgerEntry: Record "Detailed Cust. Ledg. Entry";
                    grecBankAccLedgEntry: Record "Bank Account Ledger Entry";
                begin
                    grecGLEntry.Reset();
                    grecGLEntry.SetFilter("Document No.", gtextDocNo);
                    grecGLEntry.ModifyAll("Global Dimension 2 Code", 'MEMBER SUBSCRIP');

                    grecCustLedgEntry.Reset();
                    grecCustLedgEntry.SetFilter("Document No.", gtextDocNo);
                    grecCustLedgEntry.ModifyAll("Global Dimension 2 Code", 'MEMBER SUBSCRIP');

                    grecDetailedCustLedgerEntry.Reset();
                    grecDetailedCustLedgerEntry.SetFilter("Document No.", gtextDocNo);
                    grecDetailedCustLedgerEntry.ModifyAll("Initial Entry Global Dim. 2", 'MEMBER SUBSCRIP');

                    grecBankAccLedgEntry.Reset();
                    grecBankAccLedgEntry.SetFilter("Document No.", gtextDocNo);
                    grecBankAccLedgEntry.ModifyAll("Global Dimension 2 Code", 'MEMBER SUBSCRIP');

                    Message('Global Dimension 2 code has been updated.');
                end;
            }


            action("Clear Cancelled Info")
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;
                Visible = false;

                trigger OnAction()
                var
                    grecPurchHdrArchives: Record "Purchase Header Archive";
                begin
                    grecPurchHdrArchives.Reset();
                    grecPurchHdrArchives.SetRange("No.");
                    if grecPurchHdrArchives.FindFirst() then begin
                        grecPurchHdrArchives.ModifyAll("Cancelled By", '');
                        grecPurchHdrArchives.ModifyAll("Date Cancelled", 0D);
                        grecPurchHdrArchives.ModifyAll("Time Cancelled", 0T);
                    end;
                    Message('Done.');
                end;
            }

            action("Accounting Periods Admin")
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;
                Image = AccountingPeriods;

                trigger OnAction()
                var
                    gpageAccPeriodAdmin: Page "Accounting Periods Admin";
                begin
                    gpageAccPeriodAdmin.Run();
                end;
            }

            action("Payment Journal Admin")
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;
                Image = PaymentJournal;

                trigger OnAction()
                var
                    gpagePaymentJnlAdmin: Page "Payment Journal Admin";
                begin
                    gpagePaymentJnlAdmin.Run();
                end;
            }

            action("Clear No. Printed")
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;
                Image = ClearLog;

                trigger OnAction()
                var
                    grecSalesInvHdr: Record "Sales Invoice Header";
                begin
                    grecSalesInvHdr.Reset();
                    grecSalesInvHdr.SetCurrentKey("No.");
                    grecSalesInvHdr.SetFilter("No.", gtextDocNo);
                    if grecSalesInvHdr.FindSet then begin
                        repeat
                            grecSalesInvHdr."No. Printed" := 0;
                            grecSalesInvHdr.Modify;
                        until grecSalesInvHdr.Next = 0;
                        Message('Field "No. Printed" has been cleared on the posted sales invoices.');
                    end;
                end;
            }

            action("Clear Table Item Category")
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;
                Image = ClearLog;

                trigger OnAction()
                var
                    grecItemCategory: Record "Item Category";
                begin
                    if confirm('Do you want to clear table Item Categories', true, false) then begin
                        grecItemCategory.DeleteAll();
                        Message('All data has been cleared.');
                    end;
                end;
            }

            action("Clear Item Table")
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;
                Image = ClearLog;

                trigger OnAction()
                var
                    grecItemCategory: Record Item;
                begin
                    if confirm('Do you want to clear table Item', true, false) then begin
                        grecItemCategory.DeleteAll();
                        Message('All data has been cleared.');
                    end;
                end;
            }

            action("Clear Table Customer")
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;
                Image = ClearLog;

                trigger OnAction()
                var
                    grecItemCategory: Record Customer;
                begin
                    if confirm('Do you want to clear table Customer', true, false) then begin
                        grecItemCategory.DeleteAll();
                        Message('All data has been cleared.');
                    end;
                end;
            }

            action("Clear Table Vendor")
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;
                Image = ClearLog;

                trigger OnAction()
                var
                    grecItemCategory: Record Vendor;
                begin
                    if confirm('Do you want to clear table Vendor', true, false) then begin
                        grecItemCategory.DeleteAll();
                        Message('All data has been cleared.');
                    end;
                end;
            }
            action("Clear Customer Posting Grp")
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;
                Image = ClearLog;

                trigger OnAction()
                var
                    grecCustomer: Record Customer;
                begin
                    if confirm('Do you want to clear customer posting group.', true, false) then begin
                        grecCustomer.Reset();
                        grecCustomer.SetRange("No.");
                        if grecCustomer.FindFirst() then begin
                            grecCustomer.ModifyAll("Global Dimension 1 Code", '');
                            grecCustomer.ModifyAll("Customer Posting Group", '');
                        end;
                        Message('All data has been cleared.');
                    end;
                end;
            }


            action("Clear G/L Entry using Entry No.")
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;
                Image = ClearLog;

                trigger OnAction()
                var
                    grecGLEntries: Record "G/L Entry";
                begin
                    if confirm('Do you want to clear G/L Entries.', true, false) then begin
                        grecGLEntries.Reset();
                        grecGLEntries.SetFilter("Entry No.", gtextEntryNo);
                        if grecGLEntries.FindFirst() then begin
                            grecGLEntries.DeleteAll();
                        end;
                        Message('All data has been cleared.');
                    end;
                end;
            }


            action("Clear Customer Ledger Entry using Entry No.")
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;
                Image = ClearLog;

                trigger OnAction()
                var
                    grecGLEntries: Record "Cust. Ledger Entry";
                begin
                    if confirm('Do you want to clear Customer Ledger Entries.', true, false) then begin
                        grecGLEntries.Reset();
                        grecGLEntries.SetFilter("Entry No.", gtextEntryNo);
                        if grecGLEntries.FindFirst() then begin
                            grecGLEntries.DeleteAll();
                        end;
                        Message('All data has been cleared.');
                    end;
                end;
            }


            action("Clear Detailed Cust. Ledg. Entry using Entry No.")
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;
                Image = ClearLog;

                trigger OnAction()
                var
                    grecGLEntries: Record "Detailed Cust. Ledg. Entry";
                begin
                    if confirm('Do you want to clear Detailed Customer Ledger Entries.', true, false) then begin
                        grecGLEntries.Reset();
                        grecGLEntries.SetFilter("Entry No.", gtextEntryNo);
                        if grecGLEntries.FindFirst() then begin
                            grecGLEntries.DeleteAll();
                        end;
                        Message('All data has been cleared.');
                    end;
                end;
            }


            action("Clear Vendor Ledger Entry using Entry No.")
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;
                Image = ClearLog;

                trigger OnAction()
                var
                    grecGLEntries: Record "Vendor Ledger Entry";
                begin
                    if confirm('Do you want to clear Vendor Ledger Entries.', true, false) then begin
                        grecGLEntries.Reset();
                        grecGLEntries.SetFilter("Entry No.", gtextEntryNo);
                        if grecGLEntries.FindFirst() then begin
                            grecGLEntries.DeleteAll();
                        end;
                        Message('All data has been cleared.');
                    end;
                end;
            }


            action("Clear Detailed Vend. Ledg. Entry using Entry No.")
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;
                Image = ClearLog;

                trigger OnAction()
                var
                    grecGLEntries: Record "Detailed Vendor Ledg. Entry";
                begin
                    if confirm('Do you want to clear Detailed Vendor Ledger Entries.', true, false) then begin
                        grecGLEntries.Reset();
                        grecGLEntries.SetFilter("Entry No.", gtextEntryNo);
                        if grecGLEntries.FindFirst() then begin
                            grecGLEntries.DeleteAll();
                        end;
                        Message('All data has been cleared.');
                    end;
                end;
            }


            action("Clear FA Ledger Entry using Entry No.")
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;
                Image = ClearLog;

                trigger OnAction()
                var
                    grecGLEntries: Record "FA Ledger Entry";
                begin
                    if confirm('Do you want to clear FA Ledger Entries.', true, false) then begin
                        grecGLEntries.Reset();
                        grecGLEntries.SetFilter("Entry No.", gtextEntryNo);
                        if grecGLEntries.FindFirst() then begin
                            grecGLEntries.DeleteAll();
                        end;
                        Message('All data has been cleared.');
                    end;
                end;
            }


            action("Clear G/L Register using No.")
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;
                Image = ClearLog;

                trigger OnAction()
                var
                    grecGLEntries: Record "G/L Register";
                begin
                    if confirm('Do you want to clear G/L Register.', true, false) then begin
                        grecGLEntries.Reset();
                        grecGLEntries.SetFilter("No.", gtextNo);
                        if grecGLEntries.FindFirst() then begin
                            grecGLEntries.DeleteAll();
                        end;
                        Message('All data has been cleared.');
                    end;
                end;
            }
        }
    }

    var
        gtextDocNo: Text[250];
        gtextEntryNo: Text[250];
        gtextNo: Text[250];
}
