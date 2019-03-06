pageextension 50050 "DXCSalesOrderShipmentExt" extends "Sales Order Shipment" //MyTargetPageId
{
    layout
    {
        
    }
    
    actions
    {
        addafter("Order &Promising")
        {
             action("&Header Texts")
                {
                    AccessByPermission = TableData "Text Module Header Document"=R;
                    Caption = '&Header Texts';
                    Image = BeginningText;

                    trigger OnAction();
                    begin                        
                        Rec.ShowHeaderTexts;  // #TMW17.10.01:T100
                    end;
                }
                action("&Footer Texts")
                {
                    AccessByPermission = TableData "Text Module Header Document"=R;
                    Caption = '&Footer Texts';
                    Image = EndingText;

                    trigger OnAction();
                    begin                        
                        Rec.ShowFooterTexts;  // #TMW17.10.01:T100
                    end;
                }

        }
    }
}