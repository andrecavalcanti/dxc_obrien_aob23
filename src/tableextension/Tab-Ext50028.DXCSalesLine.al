tableextension 50030 "DXCSalesLine" extends "Sales Line" 
{
    fields
    {
       
    }
    
    procedure ShowLineTexts();
    var
        TMEngine : Codeunit "Text Module Engine";
    begin             

        "Text Set ID" := TMEngine.EditTextSet("Text Set ID",        
            STRSUBSTNO('%1 %2 %3',"Document Type","Document No.","Line No."),TRUE);
        
        end;


}

