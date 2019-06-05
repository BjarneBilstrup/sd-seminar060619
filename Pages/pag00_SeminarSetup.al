page 50100 "CSD Seminar Setup"
//1. page selv  lavet (Næsten)
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "CSD Seminar Setup";
    InsertAllowed = false;
    DeleteAllowed = false;
    caption = 'Seminar setup';

    layout
    {
        area(Content)
        {
            group(Numbering)
            {
                field("Seminar Nos."; "Seminar Nos.")
                {

                }
                field("Seminar Registration No."; "Seminar Registration No.")
                {
                    ApplicationArea = All;
                }
                field("Posted Seminar Reg Nos."; "Posted Seminar Reg Nos.")
                {

                }
            }
        }
    }


    trigger onopenpage()

    begin
        if not get then begin
            init;
            insert;
        end;
    end;
}