pageextension 50024 PurchaseInvoiceSubformExt extends "Purch. Invoice Subform"
{
    layout
    {
        modify(Type)
        {
            Visible = true;
            ApplicationArea = All;
        }
        modify("No.")
        {
            Visible = true;
            ApplicationArea = All;
        }
        modify("Line No.")
        {
            Visible = true;
            ApplicationArea = All;
        }
        modify("Tax Group Code")
        {
            Visible = false;
        }
        modify("Tax Area Code")
        {
            Visible = false;
        }
        modify("Tax Liable")
        {
            Visible = false;
        }
        modify(FilteredTypeField)
        {
            Visible = false;
        }
        modify("Qty. to Assign")
        {
            Visible = false;
        }
        modify("Qty. Assigned")
        {
            Visible = false;
        }
        modify("Shortcut Dimension 1 Code")
        {
            Visible = false;
        }
        modify("Shortcut Dimension 2 Code")
        {
            Visible = false;
        }
        modify("Location Code")
        {
            Visible = false;
        }
        modify("Unit of Measure Code")
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

        movefirst(PurchDetailLine; "Line No.")
        moveafter("Gen. Prod. Posting Group"; "VAT Prod. Posting Group")


        addlast(PurchDetailLine)
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
                    grecPurchaseLine: Record "Purchase Line";
                    grecPurchaseLine2: Record "Purchase Line";
                    grecVATProdPostingGrp: Record "VAT Product Posting Group";
                    gdecAmount: Decimal;
                begin
                    grecPurchaseLine.Reset();
                    grecPurchaseLine.SetRange("Document No.", Rec."Document No.");
                    grecPurchaseLine.SetRange(TDS, false);
                    if grecPurchaseLine.FindSet then begin
                        repeat
                            clear(gdecAmount);
                            if grecVATProdPostingGrp.Get(grecPurchaseLine."VAT Prod. Posting Group") then;
                            grecPurchaseLine2.Init();
                            grecPurchaseLine2."Document Type" := grecPurchaseLine."Document Type";
                            grecPurchaseLine2."Document No." := grecPurchaseLine."Document No.";
                            grecPurchaseLine2."Line No." := grecPurchaseLine."Line No." + 500;
                            grecPurchaseLine2.validate(Type, grecPurchaseLine.Type::"G/L Account");
                            grecPurchaseLine2.validate("No.", grecVATProdPostingGrp."TDS Account");
                            grecPurchaseLine2.validate(Quantity, -1);
                            gdecAmount := (grecVATProdPostingGrp."TDS %" / 100) * grecPurchaseLine."Line Amount";
                            grecPurchaseLine2.validate("Direct Unit Cost", gdecAmount);
                            grecPurchaseLine2.TDS := true;
                            if gdecAmount <> 0 then begin
                                grecPurchaseLine2.Insert(true);
                                CurrPage.SetRecord(grecPurchaseLine2);
                                DeltaUpdateTotals();
                            end;
                        until grecPurchaseLine.Next = 0;
                    end;
                end;
            }
        }
    }

}