pageextension 50111 AccountantRoleCenterExt extends "Accountant Role Center"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addafter(SetupAndExtensions)
        {
            group(Sales)
            {
                action("Sales Invoice")
                {
                    ApplicationArea = Basic, Suite;
                    RunObject = Page "Sales Invoice List";
                    ToolTip = 'Sales Invoice';
                }
            }
            group(Manufacturing)
            {
                action("Released Production Orders")
                {
                    ApplicationArea = Basic, Suite;
                    RunObject = Page "Released Production Orders";
                    ToolTip = 'Released Production Orders';
                }
            }
            group(Purchases)
            {
                action("Purchase Invoices ")
                {
                    ApplicationArea = Basic, Suite;
                    RunObject = Page "Purchase invoices";
                    ToolTip = 'Purchase Invoices';
                }
            }
            group(Inventory)
            {
                action("Items")
                {
                    ApplicationArea = Basic, Suite;
                    RunObject = Page "Item List";
                    ToolTip = 'Items';
                }
            }
            group("Posted Sales")
            {
                action("Posted Sales Invoices ")
                {
                    ApplicationArea = Basic, Suite;
                    RunObject = Page "Posted Sales Invoices";
                    ToolTip = 'Posted Sales Invoices';
                }
            }
            group("Posted Purchases")
            {
                action("Posted Purchases Invoices")
                {
                    ApplicationArea = Basic, Suite;
                    RunObject = Page "Posted Purchase Invoices";
                    ToolTip = 'Posted Purchases Invoices';
                }
            }
            group("Posted Inventory")
            {
                action("Value Entries")
                {
                    ApplicationArea = Basic, Suite;
                    RunObject = Page "Value Entries";
                    ToolTip = 'Value Entries';
                }
            }
            group("Finance Reports")
            {
                action("Trial Balance")
                {
                    ApplicationArea = Basic, Suite;
                    RunObject = report "Trial Balance";
                    ToolTip = 'Trial Balance';
                }
            }
            group("Cash Management Reports")
            {
                action("Bank Reconciliation Report")
                {
                    ApplicationArea = Basic, Suite;
                    RunObject = report "Bank Reconciliation Report";
                    ToolTip = 'Bank Reconciliation Report';
                }
            }
            group("Accounts Receivable Reports")
            {
                action("Aged Accounts Receivable")
                {
                    ApplicationArea = Basic, Suite;
                    RunObject = report "Aged Accounts Receivable";
                    ToolTip = 'Aged Accounts Receivable';
                }
            }
            group("Accounts Payable Reports")
            {
                action("Aged Accounts Payable")
                {
                    ApplicationArea = Basic, Suite;
                    RunObject = report "Aged Accounts Payable";
                    ToolTip = 'Aged Accounts Payable';
                }
            }
            group("Fixed Asset Reports")
            {
                action("Fixed Asset - Book Value 01")
                {
                    ApplicationArea = Basic, Suite;
                    RunObject = report "Fixed Asset - Book Value 01";
                    ToolTip = 'Fixed Asset - Book Value 01';
                }
            }
        }
    }
}