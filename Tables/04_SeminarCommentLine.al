table 123456704 "CSD Seminar Comment Line"
{
    Caption = 'CSD Seminar Comment Line';
    LookupPageId = 123456707;
    DrillDownPageId = 123456707;
    fields
    {
        field(10;"Table Name";Option)
        {
            Caption = 'Table Name';
            OptionMembers = "Seminar","Seminar Registration Header","Posted Seminar Reg. Header";
            OptionCaption = 'Seminar,Seminar Registration Header,Posted Seminar Reg. Header';
        }

        field(20;"Document Line No.";Integer)
        {
            Caption = 'Document Line No.';
        }

        field(30;"No.";code[20])
        {
            Caption = 'No.';
            TableRelation=if ("Table Name"=CONST(Seminar)) "CSD Seminar";
        }

        field(40;"Line No.";integer)
        {
            Caption = 'Line No.';
        }

        field(50;"Date";Date)
        {
            Caption = 'Date';
        }

        field(60;"Code";code[10])
        {
            Caption = 'Code';
        }

        field(70;"Comment";text[80])
        {
            Caption = 'Comment';
        }
    }

    keys
    {
        key(PK;"Table Name","Document Line No.","No.","Line No.")
        {
            Clustered = true;
        }
    }
    
    var
        myInt : Integer;

    trigger OnInsert();
    begin
    end;

    trigger OnModify();
    begin
    end;

    trigger OnDelete();
    begin
    end;

    trigger OnRename();
    begin
    end;

}