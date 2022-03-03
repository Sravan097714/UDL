report 50001 "Sales Invoice"
{
    DefaultLayout = RDLC;
    RDLCLayout = 'Report\Layout\SalesInvoice.rdl';
    UsageCategory = ReportsAndAnalysis;
    Caption = 'Sales Invoice Document';
    PreviewMode = PrintLayout;

    dataset
    {
        dataitem("Sales Invoice Header"; "Sales Invoice Header")
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.", "Sell-to Customer No.", "No. Printed";
            column(No_SalesInvoiceHeader; "Sales Invoice Header"."No.")
            {
            }
            column(CurrencyCode_SalesInvoiceHeader; "Sales Invoice Header"."Currency Code")
            {
            }
            column(VATText; VATText)
            {
            }
            column(Notes; '') { }
            dataitem(CopyLoop; Integer)
            {
                DataItemTableView = SORTING(Number);
                dataitem(PageLoop; Integer)
                {
                    DataItemTableView = SORTING(Number)
                                        WHERE(Number = CONST(1));

                    column(CompanyInfo_Picture; CompanyInfo.Picture)
                    {
                    }
                    column(CompanyInfo_Name; CompanyInfo.Name)
                    {
                    }
                    column(CODE_Caption; CODE_CaptionLbl)
                    {
                    }
                    column(DESCRIPTION_Caption; DESCRIPTION_CaptionLbl)
                    {
                    }
                    column(UOM_Caption; UOM_CaptionLbl)
                    {
                    }
                    column(QTY_Caption; QTY_CaptionLbl)
                    {
                    }
                    column(UNIT_PRICE_Caption; UNIT_PRICE_CaptionLbl)
                    {
                    }
                    column(DISCOUNT_Caption; DISCOUNT_CaptionLbl)
                    {
                    }
                    column(NET_PRICE_Caption; NET_PRICE_CaptionLbl)
                    {
                    }
                    column(VAT_Caption; VAT_CaptionLbl)
                    {
                    }
                    column(AMOUNT_INV_Caption; AMOUNT_INV_CaptionLbl)
                    {
                    }
                    column(Delivered_By_Caption; Delivered_By_CaptionLbl)
                    {
                    }
                    column(Received_by_Caption; Received_by_CaptionLbl)
                    {
                    }
                    column(Payment_Terms_Caption; Payment_Terms_CaptionLbl)
                    {
                    }
                    column(SUB_TOTAL_Caption; SUB_TOTAL_CaptionLbl)
                    {
                    }
                    column(VAT1_Caption; VAT1_CaptionLbl)
                    {
                    }
                    column(TOTAL_Caption; TOTAL_CaptionLbl)
                    {
                    }
                    column(ShortcutDimension1Code_SalesInvoiceHeader; "Sales Invoice Header"."Shortcut Dimension 1 Code")
                    {
                    }
                    column(DueDate; "Sales Invoice Header"."Due Date")
                    {
                    }
                    column(ExternalDocumentNo_SalesInvoiceHeader; "Sales Invoice Header"."External Document No.")
                    {
                    }
                    column(PostingDate_SalesInvoiceHeader; "Sales Invoice Header"."Posting Date")
                    {
                    }
                    column(BilltoCustomerNo_SalesInvoiceHeader; "Sales Invoice Header"."Bill-to Customer No.")
                    {
                    }
                    column(SalesInvoiceHeader_Pre_Assigned_No_SalesInvoiceHeader_Order_No; "Sales Invoice Header"."Pre-Assigned No." + "Sales Invoice Header"."Order No.")
                    {
                    }
                    column(VATRegistrationNo_SalesInvoiceHeader; CustomerVAT)
                    {
                    }
                    column(CustName; CustomerName)
                    {

                    }
                    column(CurrReport_PAGENO; CurrReport.PAGENO())
                    {
                    }
                    column(CurrCode; CurrCode)
                    {
                    }
                    column(Dept; Dept) { }
                    column(UPPERCASE_CompanyInfo_Name; UPPERCASE(CompanyInfo.Name))
                    {
                    }
                    column(CompanyArr1_CompanyArr2_CompanyArr3_CompanyArr4; CompanyArr[1] + CompanyArr[3] + CompanyArr[4])
                    {
                    }
                    // column(CompanyArr5_CompanyArr6_CompanyArr7_CompanyArr8; CompanyArr[5] + CompanyArr[6] + CompanyArr[7] + CompanyArr[8])
                    // {
                    // }
                    column(CompanyArr5_CompanyArr6_CompanyArr7_CompanyArr8; CompanyArr[7])
                    {
                    }
                    column(CompanyArr9_CompanyArr10; CompanyArr[9] + ' ' + CompanyArr[10])
                    {
                    }
                    column(CompanyArr9; CompanyArr[9])
                    {
                    }
                    column(CompanyArr10; CompanyArr[10])
                    {
                    }
                    column(Title_2_; Title[2])
                    {
                    }
                    column(Title_1_; Title[1])
                    {
                    }
                    column(YourRef; YourRef)
                    {
                    }
                    column(B_UNIT_Caption; B_UNIT_CaptionLbl)
                    {
                    }
                    column(INVOICE_NO_Caption; INVOICE_NO_CaptionLbl)
                    {
                    }
                    column(DATE_Caption; DATE_CaptionLbl)
                    {
                    }
                    column(PAGE_NO_Caption; PAGE_NO_CaptionLbl)
                    {
                    }
                    column(CLIENT_CODE_Caption; CLIENT_CODE_CaptionLbl)
                    {
                    }
                    column(CURRENCY_Caption; CURRENCY_CaptionLbl)
                    {
                    }
                    column(SALES_NO_Caption; SALES_NO_CaptionLbl)
                    {
                    }
                    column(CUSTOMER_DETAILS_Caption; CUSTOMER_DETAILS_CaptionLbl)
                    {
                    }
                    column(DELIVERED_TO_Caption; DELIVERED_TO_CaptionLbl)
                    {
                    }
                    column(Colun_Caption; Colun_CaptionLbl)
                    {
                    }
                    column(CustAddr_1_; CustAddr[1])
                    {
                    }
                    column(CustAddr_2_; CustAddr[2])
                    {
                    }
                    column(CustAddr_3_; CustAddr[3])
                    {
                    }
                    column(CustAddr_4_; CustAddr[4])
                    {
                    }
                    column(CustAddr_5_; CustAddr[5])
                    {
                    }
                    column(CustAddr_6_; CustAddr[6])
                    {
                    }
                    column(CustAddr_7_; CustAddr[7])
                    {
                    }
                    column(ContactName; ContactName)
                    { }
                    column(ShipToAddr_1_; ShipToAddr[1])
                    {
                    }
                    column(ShipToAddr_2_; ShipToAddr[2])
                    {
                    }
                    column(ShipToAddr_3_; ShipToAddr[3])
                    {
                    }
                    column(ShipToAddr_4_; ShipToAddr[4])
                    {
                    }
                    column(ShipToAddr_5_; ShipToAddr[5])
                    {
                    }
                    column(ShipToAddr_6_; ShipToAddr[6])
                    {
                    }
                    column(ShipToAddr_7_; ShipToAddr[7])
                    {
                    }
                    column(BRNText_1_; BRNText[1])
                    {
                    }
                    column(BRNText_2_; BRNText[2])
                    {
                    }
                    column(OutputNo; OutputNo)
                    {
                    }
                    column(VatDisplay; 'Vat Registration No.')
                    {
                    }
                    column(PurchaseOrderNo; "Sales Invoice Header"."External Document No.")
                    {
                    }
                    dataitem(DimensionLoop1; Integer)
                    {
                        DataItemLinkReference = "Sales Invoice Header";
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number = FILTER(1 ..));

                        trigger OnAfterGetRecord();
                        begin
                            IF Number = 1 THEN BEGIN
                                IF NOT DimSetEntry1.FINDSET() THEN
                                    CurrReport.BREAK();
                            END ELSE
                                IF NOT Continue THEN
                                    CurrReport.BREAK();

                            CLEAR(DimText);
                            Continue := FALSE;
                            REPEAT
                                OldDimText := DimText;
                                IF DimText = '' THEN
                                    DimText := STRSUBSTNO('%1 %2', DimSetEntry1."Dimension Code", DimSetEntry1."Dimension Value Code")
                                ELSE
                                    DimText :=
                                      STRSUBSTNO(
                                        '%1, %2 %3', DimText,
                                        DimSetEntry1."Dimension Code", DimSetEntry1."Dimension Value Code");
                                IF STRLEN(DimText) > MAXSTRLEN(OldDimText) THEN BEGIN
                                    DimText := OldDimText;
                                    Continue := TRUE;
                                    EXIT;
                                END;
                            UNTIL DimSetEntry1.NEXT() = 0;
                        end;

                        trigger OnPreDataItem();
                        begin
                            IF NOT ShowInternalInfo THEN
                                CurrReport.BREAK();
                        end;
                    }
                    dataitem("Sales Invoice Line"; "Sales Invoice Line")
                    {
                        DataItemLink = "Document No." = FIELD("No.");
                        DataItemLinkReference = "Sales Invoice Header";
                        DataItemTableView = SORTING("Document No.", "Line No.");
                        column(ZERO_RATED_Z_Caption; ZERO_RATED_Z_CaptionLbl)
                        {
                        }
                        column(EXEMPTED_E_Caption; EXEMPTED_E_CaptionLbl)
                        {
                        }
                        column(TAXABLE_T_Caption; TAXABLE_T_CaptionLbl)
                        {
                        }
                        column(Dot_Caption; Dot_CaptionLbl)
                        {
                        }
                        column(No_SalesInvoiceLine; "Sales Invoice Line"."No.")
                        {
                        }
                        column(LineNo_SalesInvoiceLine; "Sales Invoice Line"."Line No.")
                        {
                        }
                        column(LineDiscountAmount_SalesInvoiceLine; "Sales Invoice Line"."Line Discount Amount")
                        {
                        }
                        column(UnitPrice_SalesInvoiceLine; "Sales Invoice Line"."Unit Price")
                        {
                            AutoFormatExpression = GetCurrencyCode;
                        }
                        column(Description_SalesInvoiceLine; DescriptionTxt)
                        {
                        }
                        column(UnitofMeasureCode_SalesInvoiceLine; "Sales Invoice Line"."Unit of Measure Code")
                        {
                        }
                        column(Quantity_SalesInvoiceLine; "Sales Invoice Line".Quantity)
                        {
                        }
                        column(LineAmount_SalesInvoiceLine; "Sales Invoice Line"."Unit Price" * "Sales Invoice Line".Quantity)
                        {
                        }
                        column(gdecTotalExclVATTDS; gdecTotalExclVATTDS) { }
                        column(AmountExcVAT; "Sales Invoice Line"."Amount Including VAT" - Amount)
                        {

                        }
                        column(CompanyInfoAddr2_BankAdd; CompanyInfoAddr2."Bank Address")// + ' ' + CompanyInfoAddr2."Bank City")
                        {

                        }
                        column(CompanyInfoAddr2_BankName; CompanyInfoAddr2."Bank Name")
                        {

                        }
                        column(CompanyInfoAddr2_AccNo; CompanyInfoAddr2."Account No.")
                        {

                        }
                        column(CompanyInfoAddr2_IBAN; CompanyInfoAddr2.IBAN)
                        {

                        }
                        column(CompanyInfoAddr2_SWIFT_Code; CompanyInfoAddr2."SWIFT Code")
                        {

                        }
                        column(VATStatus; VATStatus)
                        {
                        }
                        column(AmountIncludingVAT_SalesInvoiceLine; "Sales Invoice Line"."Amount Including VAT")
                        {
                        }
                        column(LineAmt; LineAmt)
                        {
                        }
                        column(Amount_Including_VAT_Amount; "Amount Including VAT" - Amount)
                        {
                        }
                        column(VATPerc; VATPerc)
                        {
                        }
                        column(VatAmount; VatAmount)
                        { }
                        column(AmtIncl; AmtIncl)
                        {
                        }
                        column(AmountIncludingVAT; "Amount Including VAT")
                        {
                        }
                        column(NetPrice_1_; NetPrice[1])
                        {
                        }
                        column(NetPrice_2_; NetPrice[2])
                        {
                        }
                        column(NetPrice_3_; NetPrice[3])
                        {
                        }
                        column(AmtInvoiced_1_; AmtInvoiced[1])
                        {
                        }
                        column(AmtInvoiced_2_; AmtInvoiced[2])
                        {
                        }
                        column(AmtInvoiced_3_; AmtInvoiced[3])
                        {
                        }
                        column(PaymentTerms_Description; PaymentTerms.Description)
                        {
                        }
                        column(gdecDiscountAmt; gdecDiscountAmt) { }
                        column(gdecTDSAmount; gdecTDSAmount) { }
                        column(TDS; TDS) { }
                        //Start

                        dataitem("Sales Comment Line"; "Sales Comment Line")
                        {
                            DataItemLinkReference = "Sales Invoice Line";
                            DataItemTableView = SORTING("Document Type", "No.", "Document Line No.", "Line No.") WHERE("Document Type" = CONST("POSTED INVOICE"));
                            DataItemLink = "No." = FIELD("Document No."), "Document Line No." = FIELD("Line No.");
                            column(SalesComment; "Sales Comment Line".Comment) { }
                            column(Document_Type; "Document Type") { }
                            column(No_; "No.") { }
                            column(Document_Line_No_; "Document Line No.") { }
                        }
                        dataitem("Sales Shipment Buffer"; Integer)
                        {
                            DataItemTableView = SORTING(Number);

                            trigger OnAfterGetRecord();
                            begin

                                IF Number = 1 THEN
                                    SalesShipmentBuffer.FIND('-')
                                ELSE
                                    SalesShipmentBuffer.NEXT();
                            end;

                            trigger OnPreDataItem();
                            begin

                                SalesShipmentBuffer.SETRANGE("Document No.", "Sales Invoice Line"."Document No.");
                                SalesShipmentBuffer.SETRANGE("Line No.", "Sales Invoice Line"."Line No.");

                                SETRANGE(Number, 1, SalesShipmentBuffer.COUNT());
                            end;
                        }
                        dataitem("Item Ledger Entry"; "Item Ledger Entry")
                        {
                            DataItemLinkReference = "Sales Invoice Line";
                            DataItemLink = "Item No." = FIELD("No."), "Document No." = FIELD("Document No.");
                            //DataItemTableView = SORTING ("Serial No.") ORDER(Ascending);
                            column(ILE_ItemNo; "Item Ledger Entry"."Serial No.")
                            {

                            }
                            column(ILE_Qty; "Item Ledger Entry".Quantity)
                            {

                            }
                        }
                        dataitem(DimensionLoop2; Integer)
                        {
                            DataItemTableView = SORTING(Number)
                                                WHERE(Number = FILTER(1 ..));

                            trigger OnAfterGetRecord();
                            begin
                                IF Number = 1 THEN BEGIN
                                    IF NOT DimSetEntry2.FINDSET() THEN
                                        CurrReport.BREAK();
                                END ELSE
                                    IF NOT Continue THEN
                                        CurrReport.BREAK();

                                CLEAR(DimText);
                                Continue := FALSE;
                                REPEAT
                                    OldDimText := DimText;
                                    IF DimText = '' THEN
                                        DimText := STRSUBSTNO('%1 %2', DimSetEntry2."Dimension Code", DimSetEntry2."Dimension Value Code")
                                    ELSE
                                        DimText :=
                                          STRSUBSTNO(
                                            '%1, %2 %3', DimText,
                                            DimSetEntry2."Dimension Code", DimSetEntry2."Dimension Value Code");
                                    IF STRLEN(DimText) > MAXSTRLEN(OldDimText) THEN BEGIN
                                        DimText := OldDimText;
                                        Continue := TRUE;
                                        EXIT;
                                    END;
                                UNTIL DimSetEntry2.NEXT() = 0;
                            end;

                            trigger OnPreDataItem();
                            begin
                                IF NOT ShowInternalInfo THEN
                                    CurrReport.BREAK();

                                DimSetEntry2.SETRANGE("Dimension Set ID", "Sales Invoice Line"."Dimension Set ID");
                            end;
                        }

                        trigger OnAfterGetRecord();
                        begin
                            Clear(DescriptionTxt);
                            //RCTS1.0 17/06/2021
                            if not TDS then
                                gdecTotalExclVATTDS += (Quantity * "Unit Price")
                            else
                                gdecTDSAmount += ("Line Amount" * -1);


                            gdecDiscountAmt += "Line Discount Amount" + "Inv. Discount Amount";
                            //RCTS1.0 17/06/2021
                            DescriptionTxt := "Description 2";
                            if DescriptionTxt = '' then
                                DescriptionTxt := COPYSTR("Sales Invoice Line".Description, 1, 100);

                            PostedShipmentDate := 0D;
                            CLEAR(LineAmt);
                            CLEAR(AmtIncl);
                            IF Quantity <> 0 THEN
                                PostedShipmentDate := FindPostedShipmentDate();

                            IF (Type = Type::"G/L Account") AND (NOT ShowInternalInfo) THEN
                                "No." := '';

                            IF VATPostingSetup.GET("Sales Invoice Line"."VAT Bus. Posting Group", "Sales Invoice Line"."VAT Prod. Posting Group") THEN
                                VATStatus := COPYSTR(VATPostingSetup."VAT Identifier", 1, 1)
                            ELSE
                                CLEAR(VATStatus);

                            IF ("Sales Invoice Line"."No." = '') AND
                               ("Sales Invoice Line".Quantity = 0) AND
                               ("Sales Invoice Line"."Unit Price" = 0) THEN
                                CLEAR(VATStatus);


                            //asaad 301007-----------------------------------------------------------------------

                            //SO-002**********************************************************************


                            IF DocNo = "Sales Invoice Line"."Document No." THEN BEGIN
                                CASE VATStatus OF
                                    'Z':
                                        BEGIN
                                            NetPrice[1] += "Sales Invoice Line"."Line Amount";
                                            AmtInvoiced[1] += "Sales Invoice Line"."Amount Including VAT";
                                        END;
                                    'T':
                                        BEGIN
                                            NetPrice[3] += "Sales Invoice Line"."Line Amount";
                                            AmtInvoiced[3] += "Sales Invoice Line"."Amount Including VAT";
                                            IF "VAT %" <> 0 THEN
                                                Taxable := "VAT %";
                                        END;

                                    'E':
                                        BEGIN
                                            NetPrice[2] += "Sales Invoice Line"."Line Amount";
                                            AmtInvoiced[2] += "Sales Invoice Line"."Amount Including VAT";
                                        END;

                                    ELSE BEGIN
                                            NetPrice[4] += "Sales Invoice Line"."Line Amount";
                                            AmtInvoiced[4] += "Sales Invoice Line"."Amount Including VAT";
                                        END;


                                END;
                            END ELSE BEGIN
                                DocNo := "Sales Invoice Line"."Document No.";
                                CLEAR(NetPrice);
                                CLEAR(AmtInvoiced);
                                CASE VATStatus OF
                                    'Z':
                                        BEGIN
                                            NetPrice[1] := "Sales Invoice Line"."Line Amount";
                                            AmtInvoiced[1] := "Sales Invoice Line"."Amount Including VAT";
                                        END;
                                    'T':
                                        BEGIN
                                            NetPrice[3] := "Sales Invoice Line"."Line Amount";
                                            AmtInvoiced[3] += "Sales Invoice Line"."Amount Including VAT";
                                            IF "VAT %" <> 0 THEN
                                                Taxable := "VAT %";
                                        END;

                                    'E':
                                        BEGIN
                                            NetPrice[2] := "Sales Invoice Line"."Line Amount";
                                            AmtInvoiced[2] := "Sales Invoice Line"."Amount Including VAT";
                                        END;

                                    ELSE BEGIN
                                            NetPrice[4] := "Sales Invoice Line"."Line Amount";
                                            AmtInvoiced[4] := "Sales Invoice Line"."Amount Including VAT";
                                        END;


                                END;

                            END;

                            //SO-001**********************************************************************
                            //asaad 301007-------------------------------------------------------------------------

                            /*
                                                        IF "Sales Invoice Line"."Ref Line No." = 0 THEN BEGIN
                                                            LineAmt := "Sales Invoice Line"."Line Amount";
                                                            AmtIncl := "Amount Including VAT";
                                                        END;
                            */
                            VATAmountLine.INIT();
                            //VATAmountLine."VAT Identifier" := "VAT Identifier";
                            //VATAmountLine."VAT Calculation Type" := "VAT Calculation Type";
                            //VATAmountLine."Tax Group Code" := "Tax Group Code";
                            VATAmountLine."VAT %" := "VAT %";
                            //VATAmountLine."VAT Base" := Amount;
                            //VATAmountLine."Amount Including VAT" := "Amount Including VAT";
                            //VATAmountLine."Line Amount" := "Line Amount";
                            //IF "Allow Invoice Disc." THEN
                            //  VATAmountLine."Inv. Disc. Base Amount" := "Line Amount";
                            //VATAmountLine."Invoice Discount Amount" := "Inv. Discount Amount";
                            VATAmountLine.InsertLine();

                            // 110416
                            IF "VAT %" <> 0 THEN
                                VATPerc := "VAT %";
                        end;

                        trigger OnPreDataItem();
                        var
                            grecSalesInvLine: Record "Sales Invoice Line";
                        begin
                            clear(gdecTDSAmount);
                            clear(gdecDiscountAmt);
                            Clear(gdecTotalExclVATTDS);
                            VATAmountLine.DELETEALL();
                            SalesShipmentBuffer.RESET();
                            SalesShipmentBuffer.DELETEALL();
                            FirstValueEntryNo := 0;
                            MoreLines := FIND('+');
                            WHILE MoreLines AND (Description = '') AND ("No." = '') AND (Quantity = 0) AND (Amount = 0) DO
                                MoreLines := NEXT(-1) <> 0;
                            IF NOT MoreLines THEN
                                CurrReport.BREAK();
                            SETRANGE("Line No.", 0, "Line No.");
                            CurrReport.CREATETOTALS("Line Amount", Amount, "Amount Including VAT", "Inv. Discount Amount", LineAmt, AmtIncl);



                            CLEAR(NetPrice);       //asaad 30/10/07
                            CLEAR(AmtInvoiced);    //asaad 30/10/07


                            /* clear(gdecTDSAmount);
                            grecSalesInvLine.Reset();
                            grecSalesInvLine.SetRange("Document No.", "Document No.");
                            grecSalesInvLine.SetRange(TDS, true);
                            if grecSalesInvLine.FindFirst() then begin
                                repeat
                                    gdecTDSAmount += (grecSalesInvLine."Line Amount" * -1);
                                until grecSalesInvLine.Next = 0;
                            end; */
                        end;
                    }
                    dataitem(VATCounter; Integer)
                    {
                        DataItemTableView = SORTING(Number);

                        trigger OnAfterGetRecord();
                        begin
                            VATAmountLine.GetLine(Number);
                        end;

                        trigger OnPreDataItem();
                        begin

                            IF VATAmountLine.GetTotalVATAmount() = 0 THEN
                                CurrReport.BREAK();
                            SETRANGE(Number, 1, VATAmountLine.COUNT());
                            CurrReport.CREATETOTALS(
                              VATAmountLine."Line Amount", VATAmountLine."Inv. Disc. Base Amount",
                              VATAmountLine."Invoice Discount Amount", VATAmountLine."VAT Base", VATAmountLine."VAT Amount");
                        end;
                    }
                    dataitem(Total; Integer)
                    {
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number = CONST(1));
                    }
                    dataitem(Total2; Integer)
                    {
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number = CONST(1));

                        trigger OnAfterGetRecord();
                        begin
                            IF NOT ShowShippingAddr THEN
                                CurrReport.BREAK();
                        end;
                    }

                    trigger OnAfterGetRecord();

                    begin
                        //IF ARPayTerms.GET THEN;
                    end;

                }

                trigger OnAfterGetRecord();
                begin

                    IF Number > 1 THEN BEGIN
                        //CopyText := Text003;
                        Title[2] := Text003;
                        OutputNo += 1;
                    END;
                    CurrReport.PAGENO := 1;
                end;

                trigger OnPostDataItem();
                begin

                    IF NOT CurrReport.PREVIEW() THEN
                        SalesInvCountPrinted.RUN("Sales Invoice Header");
                end;

                trigger OnPreDataItem();
                begin

                    NoOfLoops := ABS(NoOfCopies) + Cust."Invoice Copies" + 1;
                    IF NoOfLoops <= 0 THEN
                        NoOfLoops := 1;
                    CopyText := '';
                    SETRANGE(Number, 1, NoOfLoops);
                    OutputNo := 1;
                end;
            }

            trigger OnAfterGetRecord();
            var
                grecSalesInvLine: Record "Sales Invoice Line";
            begin

                CLEAR(CurrCode);
                CLEAR(BRNText);
                Clear(Dept);
                Clear(ContactName);
                // NK-004
                /*
                                IF "Sales Invoice Header"."No. Printed" > 0 THEN BEGIN
                                    IF EISLibrary.UserAccessValidation(USERID, 29) = FALSE THEN
                                        ERROR('You are not allowed to Reprint');
                                END;
                */
                //NK-004

                DimSetEntry1.SETRANGE("Dimension Set ID", "Dimension Set ID");

                //SO-001****************************************************************************************************************************
                // IF CompanyInfo."VAT Registration No." <> '' THEN
                // Title[1] := 'VAT INVOICE'
                //ELSE
                // Title[1] := 'INVOICE';

                // NK-002
                //Title[1] := TecLibrary.VATInvoiceheader("Sales Invoice Header"."Posting Date", Title[1]);


                IF "Sales Invoice Header"."No. Printed" > 0 THEN
                    Title[2] := 'COPY'
                ELSE
                    Title[2] := '';

                IF "Sales Invoice Header"."External Document No." <> '' THEN BEGIN
                    YourRef := Text007;
                    Dot := Text008;
                END ELSE BEGIN
                    CLEAR(YourRef);
                    CLEAR(Dot);
                END;

                /* IF "VAT Registration No." <> '' THEN
                    VatDisplay := Text009
                ELSE
                    CLEAR(VatDisplay); */

                IF "Sales Invoice Header"."Currency Code" <> '' THEN
                    CurrCode := COPYSTR("Sales Invoice Header"."Currency Code", 1, 3)
                ELSE BEGIN
                    IF GLSetup.GET() THEN
                        CurrCode := GLSetup."LCY Code";
                END;

                /*  IF "Sales Invoice Header"."Currency Code" <> '' THEN
                     CompanyInfoAddr2.GET(CurrCode)
                 ELSE
                     CompanyInfoAddr2.GET(''); */
                /* IF CompanyInfoAddr2.Get("Sales Invoice Header"."Shortcut Dimension 1 Code") then
                    Dept := CompanyInfoAddr2.Department; */


                /*  SalesInvHdr.Reset();
                 SalesInvHdr.SetRange(SalesInvHdr."Shortcut Dimension 1 Code", CompanyInfoAddr2.DEPARTMENT);
                 IF SalesInvHdr.FINDSET THEN BEGIN
                     REPEAT
                         Dept := SalesInvHdr."Shortcut Dimension 1 Code";
                     UNTIL SalesInvHdr.Next = 0;
                 END; */

                // IF CompanyInfoAddr2.GET(Dept) then;
                // Message(Dept);


                /* IF "Sales Invoice Header"."Shortcut Dimension 1 Code" <> '' THEN
                    CompanyInfoAddr2.GET(Dept)
                ELSE
                    CompanyInfoAddr2.GET(''); */

                CompanyInfoAddr2.Reset();
                //CompanyInfoAddr2.SetRange(DEPARTMENT, "Sales Invoice Header"."Shortcut Dimension 1 Code");
                if "Sales Invoice Header"."Currency Code" = '' then
                    CompanyInfoAddr2.SetRange(Currency, 'MUR')
                else
                    CompanyInfoAddr2.SetRange(Currency, "Sales Invoice Header"."Currency Code");
                if CompanyInfoAddr2.FindFirst then;



                //END SO-001************************************************************************************************************************


                //CurrReport.LANGUAGE := Language.GetLanguageID("Language Code");

                IF "Salesperson Code" = '' THEN BEGIN
                    SalesPurchPerson.INIT();
                    SalesPersonText := '';
                END ELSE BEGIN
                    SalesPurchPerson.GET("Salesperson Code");
                    SalesPersonText := Text000;
                END;

                IF "VAT Registration No." = '' THEN
                    VATNoText := ''
                ELSE
                    VATNoText := FIELDCAPTION("VAT Registration No.");

                clear(CustomerName);
                clear(CustomerVAT);
                FormatAddr.SalesInvBillTo(CustAddr, "Sales Invoice Header");
                IF Customer.GET("Sales Invoice Header"."Bill-to Customer No.") THEN BEGIN
                    CustomerName := Customer.Name + Customer."Name 2";
                    CustomerVAT := Customer."VAT Registration No.";
                    CustAddr[1] := Customer.Address + ' ' + Customer."Address 2";
                    CustAddr[2] := '';
                    CustAddr[3] := Customer.City;
                    IF Country.GET(Customer."Country/Region Code") THEN
                        CustAddr[4] := Country.Name
                    else
                        CustAddr[4] := '';
                END;
                COMPRESSARRAY(CustAddr);

                IF Customer.GET("Sales Invoice Header"."Bill-to Customer No.") THEN BEGIN
                    ContactName := Customer.Contact;
                END;


                IF "Payment Terms Code" = '' THEN
                    PaymentTerms.INIT()
                ELSE
                    PaymentTerms.GET("Payment Terms Code");


                Formataddress.GetCustomer("Sales Invoice Header"."Bill-to Customer No.", BRNText[2], BRNText[1]);
                FormatAddr.SalesInvShipTo(ShipToAddr, CustAddr, "Sales Invoice Header");
                ShowShippingAddr := "Sell-to Customer No." <> "Bill-to Customer No.";
                FOR i := 1 TO ARRAYLEN(ShipToAddr) DO
                    IF ShipToAddr[i] <> CustAddr[i] THEN
                        ShowShippingAddr := TRUE;


                // 110416

                //VATPerc := 0;


                //RCTS1.0 03/07/19
                CLEAR(VATText);
                Clear(VatAmount);
                grecSalesInvLine.Reset;
                grecSalesInvLine.SetRange("Document No.", "No.");
                grecSalesInvLine.SetFilter("VAT %", '<>%1', 0);
                if grecSalesInvLine.FindFirst then begin
                    VATText := 'VAT(' + Format(grecSalesInvLine."VAT %") + '%)';
                end else
                    VATText := 'VAT(0%)';
                //RCTS1.0 03/07/19


                VatAmount := grecSalesInvLine."Amount Including VAT" - grecSalesInvLine."Line Amount";
                IF VatAmount = 0 THEN
                    Title[1] := 'INVOICE'
                ELSE
                    Title[1] := 'VAT INVOICE';
            end;
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                group(Options)
                {
                    field("No. of Copies"; NoOfCopies)
                    {
                        ApplicationArea = all;
                    }
                    field("Show Internal Information"; ShowInternalInfo)
                    {
                        Visible = false;
                        ApplicationArea = all;
                    }
                    field("Log Interaction"; LogInteraction)
                    {
                        Visible = false;
                        ApplicationArea = all;
                    }
                }
            }
        }

        actions
        {
        }
    }

    labels
    {
    }

    trigger OnInitReport();
    begin

        CompanyInfo.GET();
        CompanyInfo.CALCFIELDS(CompanyInfo.Picture);
        Formataddress.Companys(CompanyArr, CompanyInfo);
        // CompanyArr[7] := ', Email: ' + CompanyInfo."Sales Invoice Email";
        CompanyArr[7] := 'Tel: ' + CompanyInfo."Phone No.";
    end;

    var
        gdecTotalExclVATTDS: Decimal;
        gdecTDSAmount: Decimal;
        gdecDiscountAmt: Decimal;
        GLSetup: Record 98;
        ShipmentMethod: Record 10;
        PaymentTerms: Record 3;
        SalesPurchPerson: Record 13;
        CompanyInfo: Record 79;
        CompanyInfo1: Record 79;
        CompanyInfo2: Record 79;
        SalesSetup: Record 311;
        Cust: Record 18;
        VATAmountLine: Record 290 temporary;
        RespCenter: Record 5714;
        Language: Record 8;
        SalesInvCountPrinted: Codeunit 315;
        FormatAddr: Codeunit 365;
        SegManagement: Codeunit SegManagement;
        SalesShipmentBuffer: Record 7190 temporary;
        PostedShipmentDate: Date;
        CustAddr: array[8] of Text[250];
        ShipToAddr: array[8] of Text[250];
        CompanyAddr: array[8] of Text[250];
        OrderNoText: Text[30];
        SalesPersonText: Text[30];
        VATNoText: Text[30];
        VatAmount: Decimal;
        ReferenceText: Text[30];
        TotalText: Text[50];
        TotalExclVATText: Text[50];
        TotalInclVATText: Text[50];
        MoreLines: Boolean;
        NoOfCopies: Integer;
        NoOfLoops: Integer;
        CopyText: Text[30];
        ShowShippingAddr: Boolean;
        i: Integer;
        NextEntryNo: Integer;
        FirstValueEntryNo: Integer;
        DimText: Text[120];
        OldDimText: Text[75];
        ShowInternalInfo: Boolean;
        Continue: Boolean;
        LogInteraction: Boolean;
        Title: array[3] of Text[30];
        Item: Record 27;
        VATStatus: Text[1];
        Formataddress: Codeunit 50008;
        ContactName: Text[250];
        CompanyArr: array[10] of Text[95];
        YourRef: Code[10];
        Dot: Text[1];
        VatDisplay: Text[30];
        VATPostingSetup: Record 325;
        CurrCode: Code[3];
        "eisAsaad-----------301007": Integer;
        DocNo: Code[20];
        NetPrice: array[4] of Decimal;
        DescriptionTxt: Text;
        AmtInvoiced: array[4] of Decimal;
        Taxable: Decimal;
        Customer: Record 18;
        BRNText: array[2] of Text[30];
        LineAmt: Decimal;
        AmtIncl: Decimal;
        Country: Record 9;
        //TecLibrary: Codeunit 50025;
        VATPerc: Decimal;
        //EISLibrary: Codeunit 50005;
        CompanyInfoAddr2: Record 50001;
        Text000: Label 'Salesperson';
        Text001: Label 'Total %1';
        Text002: Label 'Total %1 Incl. VAT';
        Text003: Label 'COPY';
        Text004: Label 'Sales - Invoice %1';
        Text005: Label 'Page %1';
        Text006: Label 'Total %1 Excl. VAT';
        Text007: Label 'YOUR REF ';
        Text008: Label ':';
        Text009: Label 'VAT Registration No.';
        Text010: Label 'BRN No.';
        B_UNIT_CaptionLbl: Label 'B/UNIT';
        INVOICE_NO_CaptionLbl: Label 'INVOICE NO.';
        DATE_CaptionLbl: Label 'DATE';
        PAGE_NO_CaptionLbl: Label 'PAGE NO';
        CLIENT_CODE_CaptionLbl: Label 'CLIENT CODE';
        CURRENCY_CaptionLbl: Label 'CURRENCY';
        SALES_NO_CaptionLbl: Label 'SALES ORDER NO';
        CUSTOMER_DETAILS_CaptionLbl: Label 'CUSTOMER DETAILS';
        DELIVERED_TO_CaptionLbl: Label 'DELIVERED TO';
        CODE_CaptionLbl: Label 'CODE';
        DESCRIPTION_CaptionLbl: Label 'DESCRIPTION';
        UOM_CaptionLbl: Label 'UOM';
        QTY_CaptionLbl: Label 'QTY';
        UNIT_PRICE_CaptionLbl: Label 'UNIT PRICE';
        DISCOUNT_CaptionLbl: Label 'DISCOUNT';
        NET_PRICE_CaptionLbl: Label 'NET PRICE';
        VAT_CaptionLbl: Label 'VAT';
        AMOUNT_INV_CaptionLbl: Label 'AMOUNT INC VAT';
        Delivered_By_CaptionLbl: Label 'Delivered By:';
        Received_by_CaptionLbl: Label 'Received by:';
        Payment_Terms_CaptionLbl: Label 'Payment Terms :';
        SUB_TOTAL_CaptionLbl: Label 'SUB TOTAL';
        VAT1_CaptionLbl: Label 'VAT';
        TOTAL_CaptionLbl: Label 'TOTAL';
        ZERO_RATED_Z_CaptionLbl: Label 'ZERO RATED -Z';
        EXEMPTED_E_CaptionLbl: Label 'EXEMPTED-E';
        TAXABLE_T_CaptionLbl: Label 'TAXABLE-T';
        Financial_Charges_CaptionLbl: Label 'Financial Charges at an annual rate of 3% pa above the Bank of Mauritius repo rate will be charged on all overdue balance';
        All_legal_fees_CaptionLbl: Label 'All legal fees will be charged to the customer for recovery through an Attorney / Solicitor';
        OutputNo: Integer;
        Dot_CaptionLbl: Label '................................................................';
        Colun_CaptionLbl: Label ':';
        DimSetEntry1: Record 480;
        DimSetEntry2: Record 480;
        VATText: Text;
        SalesInvHdr: Record 112;
        Dept: Code[20];

        CustomerName: Text;
        CustomerVAT: Text;

    //ARPayTerms: Record 50031;

    procedure FindPostedShipmentDate(): Date;
    var
        SalesShipmentHeader: Record 110;
        SalesShipmentBuffer2: Record 7190 temporary;
    begin
        NextEntryNo := 1;
        IF "Sales Invoice Line"."Shipment No." <> '' THEN
            IF SalesShipmentHeader.GET("Sales Invoice Line"."Shipment No.") THEN
                EXIT(SalesShipmentHeader."Posting Date");

        IF "Sales Invoice Header"."Order No." = '' THEN
            EXIT("Sales Invoice Header"."Posting Date");

        CASE "Sales Invoice Line".Type OF
            "Sales Invoice Line".Type::Item:
                GenerateBufferFromValueEntry("Sales Invoice Line");
            "Sales Invoice Line".Type::"G/L Account", "Sales Invoice Line".Type::Resource,
          "Sales Invoice Line".Type::"Charge (Item)", "Sales Invoice Line".Type::"Fixed Asset":
                GenerateBufferFromShipment("Sales Invoice Line");
            "Sales Invoice Line".Type::" ":
                EXIT(0D);
        END;

        SalesShipmentBuffer.RESET();
        SalesShipmentBuffer.SETRANGE("Document No.", "Sales Invoice Line"."Document No.");
        SalesShipmentBuffer.SETRANGE("Line No.", "Sales Invoice Line"."Line No.");
        IF SalesShipmentBuffer.FIND('-') THEN BEGIN
            SalesShipmentBuffer2 := SalesShipmentBuffer;
            IF SalesShipmentBuffer.NEXT() = 0 THEN BEGIN
                SalesShipmentBuffer.GET(
                  SalesShipmentBuffer2."Document No.", SalesShipmentBuffer2."Line No.", SalesShipmentBuffer2."Entry No.");
                SalesShipmentBuffer.DELETE();
                EXIT(SalesShipmentBuffer2."Posting Date");
                // ;
            END;
            SalesShipmentBuffer.CALCSUMS(Quantity);
            IF SalesShipmentBuffer.Quantity <> "Sales Invoice Line".Quantity THEN BEGIN
                SalesShipmentBuffer.DELETEALL();
                EXIT("Sales Invoice Header"."Posting Date");
            END;
        END ELSE
            EXIT("Sales Invoice Header"."Posting Date");
    end;

    procedure GenerateBufferFromValueEntry(SalesInvoiceLine2: Record 113);
    var
        ValueEntry: Record 5802;
        ItemLedgerEntry: Record 32;
        TotalQuantity: Decimal;
        Quantity: Decimal;
    begin
        TotalQuantity := SalesInvoiceLine2."Quantity (Base)";
        ValueEntry.SETCURRENTKEY("Document No.", "Posting Date");
        ValueEntry.SETRANGE("Document No.", SalesInvoiceLine2."Document No.");
        ValueEntry.SETRANGE("Posting Date", "Sales Invoice Header"."Posting Date");
        ValueEntry.SETRANGE("Item Charge No.", '');
        ValueEntry.SETFILTER("Entry No.", '%1..', FirstValueEntryNo);
        IF ValueEntry.FIND('-') THEN
            REPEAT
                IF ItemLedgerEntry.GET(ValueEntry."Item Ledger Entry No.") THEN BEGIN
                    IF SalesInvoiceLine2."Qty. per Unit of Measure" <> 0 THEN
                        Quantity := ValueEntry."Invoiced Quantity" / SalesInvoiceLine2."Qty. per Unit of Measure"
                    ELSE
                        Quantity := ValueEntry."Invoiced Quantity";
                    AddBufferEntry(
                      SalesInvoiceLine2,
                      -Quantity,
                      ItemLedgerEntry."Posting Date");
                    TotalQuantity := TotalQuantity + ValueEntry."Invoiced Quantity";
                END;
                FirstValueEntryNo := ValueEntry."Entry No." + 1;
            UNTIL (ValueEntry.NEXT() = 0) OR (TotalQuantity = 0);
    end;

    procedure GenerateBufferFromShipment(SalesInvoiceLine: Record 113);
    var
        SalesInvoiceHeader: Record 112;
        SalesInvoiceLine2: Record 113;
        SalesShipmentHeader: Record 110;
        SalesShipmentLine: Record 111;
        TotalQuantity: Decimal;
        Quantity: Decimal;
    begin
        TotalQuantity := 0;
        SalesInvoiceHeader.SETCURRENTKEY("Order No.");
        SalesInvoiceHeader.SETFILTER("No.", '..%1', "Sales Invoice Header"."No.");
        SalesInvoiceHeader.SETRANGE("Order No.", "Sales Invoice Header"."Order No.");
        IF SalesInvoiceHeader.FIND('-') THEN
            REPEAT
                SalesInvoiceLine2.SETRANGE("Document No.", SalesInvoiceHeader."No.");
                SalesInvoiceLine2.SETRANGE("Line No.", SalesInvoiceLine."Line No.");
                SalesInvoiceLine2.SETRANGE(Type, SalesInvoiceLine.Type);
                SalesInvoiceLine2.SETRANGE("No.", SalesInvoiceLine."No.");
                SalesInvoiceLine2.SETRANGE("Unit of Measure Code", SalesInvoiceLine."Unit of Measure Code");
                IF SalesInvoiceLine2.FIND('-') THEN
                    REPEAT
                        TotalQuantity := TotalQuantity + SalesInvoiceLine2.Quantity;
                    UNTIL SalesInvoiceLine2.NEXT() = 0;
            UNTIL SalesInvoiceHeader.NEXT() = 0;

        SalesShipmentLine.SETCURRENTKEY("Order No.", "Order Line No.");
        SalesShipmentLine.SETRANGE("Order No.", "Sales Invoice Header"."Order No.");
        SalesShipmentLine.SETRANGE("Order Line No.", SalesInvoiceLine."Line No.");
        SalesShipmentLine.SETRANGE("Line No.", SalesInvoiceLine."Line No.");
        SalesShipmentLine.SETRANGE(Type, SalesInvoiceLine.Type);
        SalesShipmentLine.SETRANGE("No.", SalesInvoiceLine."No.");
        SalesShipmentLine.SETRANGE("Unit of Measure Code", SalesInvoiceLine."Unit of Measure Code");
        SalesShipmentLine.SETFILTER(Quantity, '<>%1', 0);

        IF SalesShipmentLine.FIND('-') THEN
            REPEAT
                IF "Sales Invoice Header"."Get Shipment Used" THEN
                    CorrectShipment(SalesShipmentLine);
                IF ABS(SalesShipmentLine.Quantity) <= ABS(TotalQuantity - SalesInvoiceLine.Quantity) THEN
                    TotalQuantity := TotalQuantity - SalesShipmentLine.Quantity
                ELSE BEGIN
                    IF ABS(SalesShipmentLine.Quantity) > ABS(TotalQuantity) THEN
                        SalesShipmentLine.Quantity := TotalQuantity;
                    Quantity :=
                      SalesShipmentLine.Quantity - (TotalQuantity - SalesInvoiceLine.Quantity);

                    TotalQuantity := TotalQuantity - SalesShipmentLine.Quantity;
                    SalesInvoiceLine.Quantity := SalesInvoiceLine.Quantity - Quantity;

                    IF SalesShipmentHeader.GET(SalesShipmentLine."Document No.") THEN BEGIN
                        AddBufferEntry(
                          SalesInvoiceLine,
                          Quantity,
                          SalesShipmentHeader."Posting Date");
                    END;
                END;
            UNTIL (SalesShipmentLine.NEXT() = 0) OR (TotalQuantity = 0);
    end;

    procedure CorrectShipment(var SalesShipmentLine: Record 111);
    var
        SalesInvoiceLine: Record 113;
    begin
        SalesInvoiceLine.SETCURRENTKEY("Shipment No.", "Shipment Line No.");
        SalesInvoiceLine.SETRANGE("Shipment No.", SalesShipmentLine."Document No.");
        SalesInvoiceLine.SETRANGE("Shipment Line No.", SalesShipmentLine."Line No.");
        IF SalesInvoiceLine.FIND('-') THEN
            REPEAT
                SalesShipmentLine.Quantity := SalesShipmentLine.Quantity - SalesInvoiceLine.Quantity;
            UNTIL SalesInvoiceLine.NEXT() = 0;
    end;

    procedure AddBufferEntry(SalesInvoiceLine: Record 113; QtyOnShipment: Decimal; PostingDate: Date);
    begin
        SalesShipmentBuffer.SETRANGE("Document No.", SalesInvoiceLine."Document No.");
        SalesShipmentBuffer.SETRANGE("Line No.", SalesInvoiceLine."Line No.");
        SalesShipmentBuffer.SETRANGE("Posting Date", PostingDate);
        IF SalesShipmentBuffer.FIND('-') THEN BEGIN
            SalesShipmentBuffer.Quantity := SalesShipmentBuffer.Quantity + QtyOnShipment;
            SalesShipmentBuffer.MODIFY();
            EXIT;
        END;

        WITH SalesShipmentBuffer DO BEGIN
            "Document No." := SalesInvoiceLine."Document No.";
            "Line No." := SalesInvoiceLine."Line No.";
            "Entry No." := NextEntryNo;
            Type := SalesInvoiceLine.Type;
            "No." := SalesInvoiceLine."No.";
            Quantity := QtyOnShipment;
            "Posting Date" := PostingDate;
            INSERT();
            NextEntryNo := NextEntryNo + 1
        END;
    end;
}

