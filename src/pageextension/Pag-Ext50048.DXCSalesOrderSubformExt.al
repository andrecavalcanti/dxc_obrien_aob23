pageextension 50051 "DXCSalesOrderSubformExt" extends "Sales Order Shipment Subform" 
{   

    layout
    {
      
    }

     actions
    {
        addafter("Item &Tracking Lines")
        {
            action("Line Te&xts")
            {
                AccessByPermission = TableData "Text Module Header Document"=R;
                Caption = 'Line Te&xts';
                Image = Text;

                trigger OnAction();
                begin                        
                    Rec.ShowLineTexts;  // #TMW17.10.01:T100
                end;
            }

        }
    }


}

