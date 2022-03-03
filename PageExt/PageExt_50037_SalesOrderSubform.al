pageextension 50037 SalesOrderSubformExt extends "Sales Order Subform"
{
    layout
    {
        modify(Type)
        {
            Visible = true;
            ApplicationArea = All;
        }
        modify("Line No.")
        {
            Visible = true;
            ApplicationArea = All;
        }
        modify(FilteredTypeField)
        {
            Visible = false;
        }
        modify("Reserved Quantity")
        {
            Visible = true;
            Editable = true;
            ApplicationArea = All;
        }
        modify("Location Code")
        {
            Visible = false;
        }
        modify("Line Discount Amount")
        {
            Visible = true;
            ApplicationArea = All;
        }
        modify(SalesLineDiscExists)
        {
            Visible = false;
        }
        modify("Qty. Assigned")
        {
            Visible = false;
        }
        modify("Qty. to Assign")
        {
            Visible = false;
        }
        modify("Drop Shipment")
        {
            Visible = false;
        }
        modify("Tax Area Code")
        {
            Visible = false;
        }
        modify("Tax Group Code")
        {
            Visible = false;
        }
        modify("Tax Liable")
        {
            Visible = false;
        }
        modify("Purchasing Code")
        {
            Visible = false;
        }
        modify("Planned Delivery Date")
        {
            Visible = false;
        }
        modify("Planned Shipment Date")
        {
            Visible = false;
        }
        modify("Shipment Date")
        {
            Visible = false;
        }
        modify("Shortcut Dimension 1 Code")
        {
            Visible = true;
            ApplicationArea = All;
        }
        modify("Shortcut Dimension 2 Code")
        {
            Visible = true;
            ApplicationArea = All;

        }
        modify("Qty. to Assemble to Order")
        {
            Visible = false;
        }

        addafter(Quantity)
        {
            field("Gen. Prod. Posting Group"; Rec."Gen. Prod. Posting Group")
            {
                ApplicationArea = all;
            }
        }

        addafter(Description)
        {
            field("Description 2"; Rec."Description 2")
            {
                Editable = true;
                ApplicationArea = All;
            }
        }

        movefirst(Control1; "Line No.")
        moveafter("Gen. Prod. Posting Group"; "VAT Prod. Posting Group")
        moveafter("Line Discount %"; "Line Discount Amount")
        addlast(Control1)
        {
            field(TDS; TDS)
            {
                Editable = false;
                ApplicationArea = All;
            }
        }

        modify("VAT Prod. Posting Group")
        {
            Visible = true;
            ApplicationArea = All;
        }
    }

    actions
    {
        addlast("F&unctions")
        {
            action("Calculate TDS")
            {
                Promoted = true;
                PromotedIsBig = true;
                Image = VATEntries;
                PromotedCategory = Process;
                ApplicationArea = all;

                trigger OnAction()
                var
                    grecSalesLine: Record "Sales Line";
                    grecSalesLine2: Record "Sales Line";
                    grecVATProdPostingGrp: Record "VAT Product Posting Group";
                    gdecAmount: Decimal;
                begin
                    grecSalesLine.Reset();
                    grecSalesLine.SetRange("Document No.", Rec."Document No.");
                    grecSalesLine.SetRange(TDS, false);
                    if grecSalesLine.FindSet then begin
                        repeat
                            clear(gdecAmount);
                            if grecVATProdPostingGrp.Get(grecSalesLine."VAT Prod. Posting Group") then;
                            grecSalesLine2.Init();
                            grecSalesLine2."Document Type" := grecSalesLine."Document Type";
                            grecSalesLine2."Document No." := grecSalesLine."Document No.";
                            grecSalesLine2."Line No." := grecSalesLine."Line No." + 500;
                            grecSalesLine2.validate(Type, grecSalesLine.Type::"G/L Account");
                            grecSalesLine2.validate("No.", grecVATProdPostingGrp."TDS Account");
                            grecSalesLine2.validate(Quantity, -1);
                            gdecAmount := (grecVATProdPostingGrp."TDS %" / 100) * grecSalesLine."Line Amount";
                            grecSalesLine2.validate("Unit Price", gdecAmount);
                            grecSalesLine2.TDS := true;
                            if gdecAmount <> 0 then begin
                                grecSalesLine2.Insert(true);
                                CurrPage.SetRecord(grecSalesLine2);
                                DeltaUpdateTotals();
                            end;
                        until grecSalesLine.Next = 0;
                    end;
                end;
            }
        }
    }

}