page 123456706 "CSD Seminar Comment Sheet"
{
    Caption = 'Seminar Comment Sheet';
    PageType = Card;
    SourceTable = "CSD Seminar Comment Line";
    AutoSplitKey = true;

    layout
    {
        area(content)
        {
            group(GroupName)
            {
                field(Date; Date)
                { }

                field(Code; Code)
                {
                    Visible = false;
                }

                field(Comment; Comment)
                { }
            }
        }
    }

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        SetupNewLine();
    end;
}