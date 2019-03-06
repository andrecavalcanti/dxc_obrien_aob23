tableextension 50029 "SalesHeaderExt" extends "Sales Header" //MyTargetTableId
{
    fields
    {
        
    }

    procedure ShowHeaderTexts();
    var
        TMEngine : Codeunit "Text Module Engine";
    begin        
        "Text Set ID Header" := TMEngine.EditTextSet("Text Set ID Header",
            STRSUBSTNO('%1 %2 - %3',"Document Type","No.",TextHeaderText),
                TRUE);
    end;

    procedure ShowFooterTexts();
    var
        TMEngine : Codeunit "Text Module Engine";
    begin
       
        "Text Set ID Footer" := TMEngine.EditTextSet("Text Set ID Footer",
            STRSUBSTNO('%1 %2 - %3',"Document Type","No.",TextFooterText),       
                TRUE);
    end;

    var
        TextHeaderText : Label 'Header Text';
        TextFooterText : Label 'Footer Text';
    
}