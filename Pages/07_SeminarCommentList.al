page 123456707 "CSD Seminar Comment List"
{
    Caption = 'Seminar Comment List';
    PageType = Card;
    SourceTable = "CSD Seminar Comment Line";
    Editable = false;

    layout
    {
        area(content)
        {
            group(GroupName)
            {
                field(Date;Date)
                { }

                field(Code;Code)
                {
                    Visible = false;
                }

                field(Comment;Comment)
                { }
            }
        }
    }
}