tableextension 50020 ItemTblExt extends Item
{
    fields
    {
        field(50000; "Vendor Name"; Text[100]) { }
        field(50001; "Ext. Shelf Description"; Text[100]) { }
        field(50002; "Unit Cost - Posted to GL"; Decimal) { }
        field(50003; Revaluation; Text[30]) { }
        field(50004; "Last Purchase Price"; Decimal) { }
        field(50005; "Item Type"; Code[50])
        {
            Caption = 'Format';
            TableRelation = Attributes.Code where("Attribute Type" = filter(1));
        }
        field(50006; Colour; Code[50])
        {
            TableRelation = Attributes.Code where("Attribute Type" = filter(2));
        }
        field(50007; Finish; Code[50])
        {
            TableRelation = Attributes.Code where("Attribute Type" = filter(3));
        }
        field(50008; Material; Code[50])
        {
            TableRelation = Attributes.Code where("Attribute Type" = filter(4));
        }
        field(50009; Dimensions; Code[50])
        {
            TableRelation = Attributes.Code where("Attribute Type" = filter(5));
        }
        field(50010; Lampholder; Code[50])
        {
            TableRelation = Attributes.Code where("Attribute Type" = filter(6));
        }
        field(50011; Wattage; Code[50])
        {
            TableRelation = Attributes.Code where("Attribute Type" = filter(7));
        }
        field(50012; "Parent Category"; Code[50])
        {
            trigger OnLookup()
            var
                grecItemCategory: Record "Item Category";
                gpageItemCategory: Page "Item Categories";
            begin
                Clear(gpageItemCategory);
                grecItemCategory.Reset();
                //grecItemCategory.SetRange(Type, grecItemCategory.Type::Customer);
                if grecItemCategory.FindFirst() then begin
                    gpageItemCategory.SetRecord(grecItemCategory);
                    gpageItemCategory.SetTableView(grecItemCategory);
                    gpageItemCategory.LookupMode(true);
                    if gpageItemCategory.RunModal() = Action::LookupOK then begin
                        gpageItemCategory.GetRecord(grecItemCategory);
                        Rec."Parent Category" := grecItemCategory."Parent Category";
                    end;
                end;
            end;
        }
        field(50013; "Product Group Code 2"; Code[20])
        {
            Caption = 'Product Group Code';
            TableRelation = "Item Product Group"."Product Group Code";

            trigger OnLookup()
            var
                grecItemCategory: Record "Item Product Group";
                gpageItemCategory: Page "Item Product Groups";
            begin
                Clear(gpageItemCategory);
                grecItemCategory.Reset();
                grecItemCategory.SetRange("Item Category Code", rec."Item Category Code");
                if grecItemCategory.FindFirst() then begin
                    gpageItemCategory.SetRecord(grecItemCategory);
                    gpageItemCategory.SetTableView(grecItemCategory);
                    gpageItemCategory.LookupMode(true);
                    if gpageItemCategory.RunModal() = Action::LookupOK then begin
                        gpageItemCategory.GetRecord(grecItemCategory);
                        Rec."Product Group Code 2" := grecItemCategory."Product Group Code";
                    end;
                end;
            end;
        }
    }

    trigger OnInsert()
    begin
        "Stockout Warning" := "Stockout Warning"::Yes;
        "Prevent Negative Inventory" := "Prevent Negative Inventory"::Yes;
    end;
}