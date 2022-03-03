report 50070 "Posted S.Inv with Payment"
{
    UsageCategory = ReportsAndAnalysis;
    Caption = 'Posted Sales Invoices with Applied Payment';
    DefaultLayout = RDLC;
    RDLCLayout = 'Report\Layout\PostedSalesInvWithPayment.rdl';
    ApplicationArea = All;

    dataset
    {
        dataitem("Sales Invoice Header"; "Sales Invoice Header")
        {
            RequestFilterFields = "Sell-to Customer No.";

            column(Posting_Date; format("Posting Date")) { }
            column(No_; "No.") { }
            column(Sell_to_Customer_No_; "Sell-to Customer No.") { }
            column(Sell_to_Customer_Name; "Sell-to Customer Name") { }
            column(Posting_Description; "Posting Description") { }
            column(Amount; Amount) { }
            column(Amount_Including_VAT; "Amount Including VAT") { }
            column(Currency_Code; "Currency Code") { }
            column(gtextFilter; gtextFilter) { }
            column(gdateStartDate; gdateStartDate) { }
            column(gdateEndDate; gdateEndDate) { }
            column(grecCompanyInfo; grecCompanyInfo.Name) { }

            column(gdecLocalAmt; gdecLocalAmt) { }
            column(gdecLocalAmtLCY; gdecLocalAmtLCY) { }
            column(gdecTranslationRate; gdecTranslationRate) { }


            dataitem("Detailed Cust. Ledg. Entry"; "Detailed Cust. Ledg. Entry")
            {
                DataItemLink = "Document No." = field("No.");
                DataItemTableView = sorting("Entry No.") where("Document Type" = filter('Invoice'), "Entry Type" = filter('Initial Entry'));

                dataitem("Detailed Cust. Ledg. Entry 2"; "Detailed Cust. Ledg. Entry")
                {
                    DataItemLink = "Cust. Ledger Entry No." = field("Cust. Ledger Entry No.");
                    DataItemTableView = sorting("Entry No.") where("Entry Type" = filter('Application'), Unapplied = filter(false));

                    column(Document_No_; "Document No.") { }
                    column(Amount__LCY_; Amount) { }
                    column(gtextBank; gtextBank) { }
                    column(gtextBankName; gtextBankName) { }

                    dataitem("Cust. Ledger Entry"; "Cust. Ledger Entry")
                    {
                        DataItemLink = "Entry No." = field("Applied Cust. Ledger Entry No.");
                        DataItemTableView = sorting("Entry No.");

                        column(Posting_Date2; format("Posting Date")) { }
                        column(Original_Amt___LCY_; "Original Amt. (LCY)") { }
                        column(SettlementRate; "Original Amt. (LCY)" / "Original Amount") { }
                    }

                    trigger OnAfterGetRecord()
                    begin
                        Clear(gtextBank);
                        Clear(gtextBankName);
                        grecBankAccLedgerEntry.Reset();
                        grecBankAccLedgerEntry.SetRange("Document No.", "Document No.");
                        if grecBankAccLedgerEntry.FindFirst() then
                            gtextBank := grecBankAccLedgerEntry."Bank Account No.";

                        if grecBank.get(gtextBank) then
                            gtextBankName := grecBank.Name;
                    end;
                }
            }

            trigger OnPreDataItem()
            begin
                SetRange("Posting Date", gdateStartDate, gdateEndDate);
                //gtextFilter := CaptionManagement.GetRecordFiltersWithCaptions("Sales Invoice Header");
            end;


            trigger OnAfterGetRecord()
            begin
                clear(gdecLocalAmt);
                clear(gdecLocalAmtLCY);
                clear(gdecTranslationRate);
                if "Currency Factor" <> 0 then begin
                    gdecLocalAmt := Amount / "Currency Factor";
                    gdecLocalAmtLCY := "Amount Including VAT" / "Currency Factor";
                    gdecTranslationRate := gdecLocalAmtLCY / gdecLocalAmt;
                end;
            end;
        }


        dataitem("Sales Cr.Memo Header"; "Sales Cr.Memo Header")
        {
            RequestFilterFields = "Sell-to Customer No.";

            column(Posting_Date3; format("Posting Date")) { }
            column(No_3; "No.") { }
            column(Sell_to_Customer_No_3; "Sell-to Customer No.") { }
            column(Sell_to_Customer_Name3; "Sell-to Customer Name") { }
            column(Posting_Description3; "Posting Description") { }
            column(Amount3; Amount) { }
            column(Amount_Including_VAT3; "Amount Including VAT") { }
            column(Currency_Code3; "Currency Code") { }
            column(gtextFilter3; gtextFilter) { }
            column(gdateStartDate3; gdateStartDate) { }
            column(gdateEndDate3; gdateEndDate) { }

            column(gdecLocalAmt3; gdecLocalAmt3) { }
            column(gdecLocalAmtLCY3; gdecLocalAmtLCY3) { }
            column(gdecTranslationRate3; gdecTranslationRate3) { }

            dataitem(DetailedCustLedgEntry3; "Detailed Cust. Ledg. Entry")
            {
                DataItemLink = "Document No." = field("No.");
                DataItemTableView = sorting("Entry No.") where("Document Type" = filter('Credit Memo'), "Entry Type" = filter('Initial Entry'));

                dataitem(DetailedCustLedgEntry4; "Detailed Cust. Ledg. Entry")
                {
                    DataItemLink = "Cust. Ledger Entry No." = field("Cust. Ledger Entry No.");
                    DataItemTableView = sorting("Entry No.") where("Entry Type" = filter('Application'));//, Unapplied = filter (false));

                    column(Document_No_3; "Document No.") { }
                    column(Amount__LCY_3; Amount) { }
                    column(gtextBank3; gtextBank) { }
                    column(gtextBankName3; gtextBankName) { }

                    dataitem(CustLedgerEntry3; "Cust. Ledger Entry")
                    {
                        DataItemLink = "Entry No." = field("Applied Cust. Ledger Entry No.");
                        DataItemTableView = sorting("Entry No.");

                        column(Posting_Date4; format("Posting Date")) { }
                        column(Original_Amt___LCY_4; "Original Amt. (LCY)") { }
                        column(SettlementRate4; "Original Amt. (LCY)" / "Original Amount") { }
                    }

                    trigger OnAfterGetRecord()
                    begin
                        Clear(gtextBank);
                        Clear(gtextBankName);
                        grecBankAccLedgerEntry.Reset();
                        grecBankAccLedgerEntry.SetRange("Document No.", "Document No.");
                        if grecBankAccLedgerEntry.FindFirst() then
                            gtextBank := grecBankAccLedgerEntry."Bank Account No.";

                        if grecBank.get(gtextBank) then
                            gtextBankName := grecBank.Name;
                    end;
                }
            }

            trigger OnPreDataItem()
            begin
                SetRange("Posting Date", gdateStartDate, gdateEndDate);
                //gtextFilter := CaptionManagement.GetRecordFiltersWithCaptions("Sales Invoice Header");
            end;

            trigger OnAfterGetRecord()
            begin
                clear(gdecLocalAmt);
                clear(gdecLocalAmtLCY);
                clear(gdecTranslationRate);
                if "Currency Factor" <> 0 then begin
                    gdecLocalAmt3 := Amount / "Currency Factor";
                    gdecLocalAmtLCY3 := "Amount Including VAT" / "Currency Factor";
                    gdecTranslationRate3 := gdecLocalAmtLCY / gdecLocalAmt;
                end;
            end;
        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    field("Start Date"; gdateStartDate) { }
                    field("End Date"; gdateEndDate) { }
                }
            }
        }
    }

    trigger OnPreReport()
    begin
        if (gdateStartDate = 0D) OR (gdateEndDate = 0D) then
            Error('Please input Starting Date and Ending Date.');

        if gdateEndDate < gdateStartDate then
            Error('Ending Date cannot be less than Starting Date.');

        grecCompanyInfo.get;
    end;


    var
        gdateStartDate: Date;
        gdateEndDate: Date;
        gtextFilter: Text;
        //CaptionManagement: Codeunit CaptionManagement;
        gtextBank: Text;
        gtextBankName: text;
        grecBankAccLedgerEntry: Record "Bank Account Ledger Entry";
        grecBank: Record "Bank Account";

        grecCompanyInfo: Record "Company Information";

        gdecLocalAmt: Decimal;
        gdecLocalAmtLCY: Decimal;
        gdecTranslationRate: Decimal;


        gdecLocalAmt3: Decimal;
        gdecLocalAmtLCY3: Decimal;
        gdecTranslationRate3: Decimal;
}