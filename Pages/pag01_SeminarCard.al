page 50101 "csd seminar Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "CSD Seminar";
    caption = 'Seminar Card';

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("no."; "no.")
                {
                    caption = 'No.';
                    AssistEdit = true;

                    trigger OnAssistEdit()
                    begin
                        if AssistEdit() then
                            CurrPage.update;
                    end;
                }
                field("Name"; "Name")
                {
                    caption = 'Name';
                }
                field("Seminar Duration"; "Seminar Duration")
                {
                    caption = 'Seminar Duration';
                }
                field("Minimum Participants"; "Minimum Participants")
                {
                    caption = 'Minimum Participants';
                }
                field("Maximum Participants"; "Maximum Participants")
                {
                    caption = 'Maximum Participants';
                }
                field("Search Name"; "Search Name")
                {
                    caption = 'Search Name';
                }
                field("Blocked"; "Blocked")
                {
                    caption = 'Blocked';
                }
                field("Last date Modified"; "Last date Modified")
                {
                    caption = 'Last date Modified';
                }
                group(Invoiceing)
                {
                    field("Gen Prod. Posting Group"; "Gen Prod. Posting Group")
                    {
                        caption = 'Gen Prod. Posting Group';
                    }
                    field("Vat Prod. Posting Group"; "Vat Prod. Posting Group")
                    {
                        caption = 'Vat Prod. Posting Group';
                    }
                    field("seminar price"; "seminar price")
                    {
                        caption = 'Commment';
                    }
                }
                field("Commment"; "seminar price")
                {
                    caption = 'Commment';
                }
            }
        }
        area(FactBoxes)
        {
            systempart("Links"; Links)
            {

            }
            systempart("notes"; notes)
            {

            }
        }

    }

    actions
    {
        area(navigation)
        {
            group("&Seminar")
            {
                action("Co&mments")
                {
                    //runobject=page "csd Seminar Comment Sheet";
                    //runpagelinke = "table name" = const(seminar),"no." = Field "no.");
                    Image = Comment;
                    Promoted = true;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                }
            }
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }


}