page 50106 "CSD Seminar Comment Sheet"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "CSD seminar Comment Line";
    Caption = 'Seminar Comment Sheet';

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