codeunit 50000 Miscellaneous
{
    trigger OnRun()
    begin

    end;

    [EventSubscriber(ObjectType::Table, 36, 'OnAfterCopySellToCustomerAddressFieldsFromCustomer', '', false, false)]
    local procedure OnAfterCopySellToCustomerAddressFieldsFromCustomer(VAR SalesHeader: Record "Sales Header"; SellToCustomer: Record Customer; CurrentFieldNo: Integer)
    var
        grecCustomer: Record Customer;
    begin
        if grecCustomer.get(SellToCustomer."No.") then
            SalesHeader.BRN := grecCustomer.BRN;
    end;


    [EventSubscriber(ObjectType::Table, 38, 'OnAfterCopyBuyFromVendorFieldsFromVendor', '', false, false)]
    local procedure OnAfterCopyBuyFromVendorFieldsFromVendor(VAR PurchaseHeader: Record "Purchase Header"; Vendor: Record Vendor)
    var
        grecVendor: Record Vendor;
    begin
        if grecVendor.get(Vendor."No.") then
            PurchaseHeader.BRN := grecVendor.BRN;
    end;


    [EventSubscriber(ObjectType::Codeunit, 99000792, 'OnAfterCreateProdOrderFromSalesLine', '', false, false)]
    procedure OnAfterCreateProdOrderFromSalesLine(var ProdOrder: Record "Production Order"; SalesLine: Record "Sales Line")
    begin
        ProdOrder."Sales Order No." := SalesLine."Document No.";
    end;


    [EventSubscriber(ObjectType::Table, 83, 'OnBeforeVerifyReservedQty', '', false, false)]
    local procedure OnBeforeVerifyReservedQty(var ItemJournalLine: Record "Item Journal Line"; xItemJournalLine: Record "Item Journal Line"; CalledByFieldNo: Integer)
    var
        grecItemJnlBatch: Record "Item Journal Batch";
    begin
        if grecItemJnlBatch.Get(ItemJournalLine."Journal Template Name", ItemJournalLine."Journal Batch Name") then begin
            if grecItemJnlBatch."Gen. Prod Posting Group" <> '' then
                ItemJournalLine."Gen. Prod. Posting Group" := grecItemJnlBatch."Gen. Prod Posting Group";
        end;

        if ItemJournalLine."Item No." = '' then
            ItemJournalLine."Gen. Prod. Posting Group" := '';
    end;

    [EventSubscriber(ObjectType::Table, 172, 'OnBeforeApplyStdCodesToSalesLines', '', false, false)]
    local procedure OnBeforeApplyStdCodesToSalesLines(var SalesLine: Record "Sales Line"; StdSalesLine: Record "Standard Sales Line")
    var
        grecSalesHdr: Record "Sales Header";
    begin
        SalesLine.Validate("Unit Price", StdSalesLine."Unit Price");
        SalesLine.Validate("VAT Prod. Posting Group", StdSalesLine."VAT Prod. Posting Group");
    end;


    [EventSubscriber(ObjectType::report, 292, 'OnBeforeLookupSalesDoc', '', false, false)]
    local procedure OnBeforeLookupSalesDoc(var FromSalesHeader: Record "Sales Header"; var SalesHeader: Record "Sales Header")
    begin
        FromSalesHeader.SetRange("Sell-to Customer No.", SalesHeader."Sell-to Customer No.");
    end;


    [EventSubscriber(ObjectType::Report, 292, 'OnBeforeLookupPostedShipment', '', false, false)]
    local procedure OnBeforeLookupPostedShipment(var FromSalesShptHeader: Record "Sales Shipment Header"; var SalesHeader: Record "Sales Header")
    begin
        FromSalesShptHeader.SetRange("Sell-to Customer No.", SalesHeader."Sell-to Customer No.");
    end;


    [EventSubscriber(ObjectType::Report, 292, 'OnBeforeLookupPostedInvoice', '', false, false)]
    local procedure OnBeforeLookupPostedInvoice(var FromSalesInvHeader: Record "Sales Invoice Header"; var SalesHeader: Record "Sales Header")
    begin
        FromSalesInvHeader.SetRange("Sell-to Customer No.", SalesHeader."Sell-to Customer No.");
    end;


    [EventSubscriber(ObjectType::Report, 292, 'OnBeforeLookupPostedReturn', '', false, false)]
    local procedure OnBeforeLookupPostedReturn(var FromReturnRcptHeader: Record "Return Receipt Header"; var SalesHeader: Record "Sales Header")
    begin
        FromReturnRcptHeader.SetRange("Sell-to Customer No.", SalesHeader."Sell-to Customer No.");
    end;


    [EventSubscriber(ObjectType::Report, 292, 'OnBeforeLookupPostedCrMemo', '', false, false)]
    local procedure OnBeforeLookupPostedCrMemo(var FromSalesCrMemoHeader: Record "Sales Cr.Memo Header"; var SalesHeader: Record "Sales Header");
    begin
        FromSalesCrMemoHeader.SetRange("Sell-to Customer No.", SalesHeader."Sell-to Customer No.");
    end;


    [EventSubscriber(ObjectType::Report, 292, 'OnLookupSalesArchiveOnBeforeSetFilters', '', false, false)]
    local procedure OnLookupSalesArchiveOnBeforeSetFilters(var FromSalesHeaderArchive: Record "Sales Header Archive"; var SalesHeader: Record "Sales Header")
    begin
        FromSalesHeaderArchive.SetRange("Sell-to Customer No.", SalesHeader."Sell-to Customer No.");
    end;




    [EventSubscriber(ObjectType::report, 492, 'OnBeforeLookupPurchDoc', '', false, false)]
    local procedure OnBeforeLookupPurchDoc(var FromPurchaseHeader: Record "Purchase Header"; PurchaseHeader: Record "Purchase Header")
    begin
        FromPurchaseHeader.SetRange("Buy-from Vendor No.", PurchaseHeader."Buy-from Vendor No.");
    end;


    [EventSubscriber(ObjectType::Report, 492, 'OnBeforeLookupPostedReceipt', '', false, false)]
    local procedure OnBeforeLookupPostedReceipt(var PurchRcptHeader: Record "Purch. Rcpt. Header"; PurchaseHeader: Record "Purchase Header")
    begin
        PurchRcptHeader.SetRange("Buy-from Vendor No.", PurchaseHeader."Buy-from Vendor No.");
    end;


    [EventSubscriber(ObjectType::Report, 492, 'OnBeforeLookupPostedInvoice', '', false, false)]
    local procedure OnBeforeLookupPostedInvoice2(var FromPurchInvHeader: Record "Purch. Inv. Header"; PurchaseHeader: Record "Purchase Header")
    begin
        FromPurchInvHeader.SetRange("Buy-from Vendor No.", PurchaseHeader."Buy-from Vendor No.");
    end;


    [EventSubscriber(ObjectType::Report, 492, 'OnBeforeLookupPostedReturn', '', false, false)]
    local procedure OnBeforeLookupPostedReturn2(var FromReturnShptHeader: Record "Return Shipment Header"; PurchaseHeader: Record "Purchase Header")
    begin
        FromReturnShptHeader.SetRange("Buy-from Vendor No.", PurchaseHeader."Buy-from Vendor No.");
    end;


    [EventSubscriber(ObjectType::Report, 492, 'OnBeforeLookupPostedCrMemo', '', false, false)]
    local procedure OnBeforeLookupPostedCrMemo2(var FromPurchCrMemoHdr: Record "Purch. Cr. Memo Hdr."; PurchaseHeader: Record "Purchase Header")
    begin
        FromPurchCrMemoHdr.SetRange("Buy-from Vendor No.", PurchaseHeader."Buy-from Vendor No.");
    end;


    [EventSubscriber(ObjectType::Report, 492, 'OnLookupPurchArchiveOnBeforeSetFilters', '', false, false)]
    local procedure OnLookupPurchArchiveOnBeforeSetFilters(var FromPurchHeaderArchive: Record "Purchase Header Archive"; var PurchaseHeader: Record "Purchase Header")
    begin
        FromPurchHeaderArchive.SetRange("Buy-from Vendor No.", PurchaseHeader."Sell-to Customer No.");
    end;


    [EventSubscriber(ObjectType::Table, 172, 'OnAfterApplyStdCodesToSalesLinesLoop', '', false, false)]
    local procedure OnAfterApplyStdCodesToSalesLinesLoop(var StdSalesLine: Record "Standard Sales Line"; var SalesLine: Record "Sales Line"; SalesHeader: Record "Sales Header"; StdSalesCode: Record "Standard Sales Code")
    begin
        SalesHeader.validate("Shortcut Dimension 1 Code", StdSalesCode."Global Dimension 1 Code");
        SalesHeader.validate("Customer Posting Group", StdSalesCode."Customer Posting Group");
        SalesHeader.Validate("Payment Terms Code", StdSalesCode."Payment Terms");
        SalesHeader.Modify;
    end;


    [EventSubscriber(ObjectType::Table, 36, 'OnBeforeConfirmUpdateAllLineDim', '', false, false)]
    local procedure OnBeforeConfirmUpdateAllLineDim(var SalesHeader: Record "Sales Header"; var xSalesHeader: Record "Sales Header"; NewParentDimSetID: Integer; OldParentDimSetID: Integer; var Confirmed: Boolean; var IsHandled: Boolean)
    begin
        IsHandled := true;
        Confirmed := true;
    end;


    [EventSubscriber(ObjectType::Codeunit, 365, 'OnFormatAddrOnAfterGetCountry', '', false, false)]
    local procedure OnFormatAddrOnAfterGetCountry(var AddrArray: array[8] of Text[100]; var Name: Text[100]; var Name2: Text[100]; var Contact: Text[100]; var Addr: Text[100]; var Addr2: Text[50]; var City: Text[50]; var PostCode: Code[20]; var County: Text[50]; var CountryCode: Code[10]; LanguageCode: Code[10]; var IsHandled: Boolean; var Country: Record "Country/Region")
    begin
        PostCode := ''
    end;


    [EventSubscriber(ObjectType::Table, 172, 'OnCreateSalesInvoiceOnBeforeSalesHeaderInsert', '', false, false)]
    local procedure OnCreateSalesInvoiceOnBeforeSalesHeaderInsert(var SalesHeader: Record "Sales Header"; StandardCustomerSalesCode: Record "Standard Customer Sales Code")
    var
        grecCustomer: Record Customer;
    begin
        if grecCustomer.get(StandardCustomerSalesCode."Customer No.") then begin
            grecCustomer."Customer Posting Group" := StandardCustomerSalesCode."Customer Posting Group";
            grecCustomer.Modify;
        end;
    end;


    [EventSubscriber(ObjectType::Table, 172, 'OnAfterCreateSalesInvoice', '', false, false)]
    local procedure OnAfterCreateSalesInvoice(var SalesHeader: Record "Sales Header"; StandardCustomerSalesCode: Record "Standard Customer Sales Code")
    var
        grecCustomer: Record Customer;
    begin
        if grecCustomer.get(StandardCustomerSalesCode."Customer No.") then begin
            grecCustomer."Customer Posting Group" := '';
            grecCustomer.Modify;
        end;
    end;

    [EventSubscriber(ObjectType::Codeunit, 225, 'OnBeforeRun', '', false, false)]
    local procedure OnBeforeRun(var GenJnlLine: Record "Gen. Journal Line"; var IsHandled: Boolean)
    begin
        if GenJnlLine."Posting Group" = '' then
            Error('Please fill up field ‘Posting Group’ before applying entries.');
    end;

    [EventSubscriber(ObjectType::Codeunit, 225, 'OnSelectCustLedgEntryOnAfterSetFilters', '', false, false)]
    local procedure OnSelectCustLedgEntryOnAfterSetFilters(var CustLedgerEntry: Record "Cust. Ledger Entry"; GenJournalLine: Record "Gen. Journal Line")
    begin
        CustLedgerEntry.SetRange("Customer Posting Group", GenJournalLine."Posting Group");
    end;

}