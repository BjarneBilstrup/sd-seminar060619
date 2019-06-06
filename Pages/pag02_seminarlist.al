page 50102 "CSD Seminar List"

{
    Caption = 'Seminar List';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "CSD Seminar";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("No."; "No.")
                {
                    Caption = 'No.';
                }
                field(Name; Name)
                {
                    Caption = 'Name';
                }
                field("Seminar Duration"; "Seminar Duration")
                {
                    Caption = 'Seminar Duration';
                }
                field("seminar price"; "seminar price")
                {
                    Caption = 'seminar price';
                }
                field("Minimum Participants"; "Minimum Participants")
                {
                    Caption = 'Minimum Participants';
                }
                field("Maximum Participants"; "Maximum Participants")
                {
                    Caption = 'Maximum Participants';
                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}