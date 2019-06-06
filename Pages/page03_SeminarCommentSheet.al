page 50107 "CSD Seminar Comment List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "CSD seminar Comment Line";
    Caption = 'Seminar Comment List';
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Date"; "Date")
                {
                    ApplicationArea = All;
                }
                field(Code; Code)
                {
                    ApplicationArea = All;
                    Visible = false;
                }
                field(Comment; Comment)
                {
                    ApplicationArea = All;
                }

            }
        }
    }


}