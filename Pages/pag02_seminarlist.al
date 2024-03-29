page 50102 "CSD Seminar List"
// CSD1.00 - 2018-01-01 - D. E. Veloper
// Chapter 5 - Lab 3-6
{
    Caption = 'Seminar List';
    PageType = List;
    SourceTable = "CSD Seminar";
    Editable = false;
    CardPageId = 50101;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; "No.")
                {
                }
                field(Name; Name)
                {
                }
                field("Seminar Duration"; "Seminar Duration")
                {
                }
                field("Seminar Price"; "Seminar Price")
                {
                }
                field("Minimum Participants"; "Minimum Participants")
                {
                }
                field("Maximum Participants"; "Maximum Participants")
                {
                }
            }
        }
        area(FactBoxes)
        {
            systempart("Links"; Links)
            {
            }
            systempart("Notes"; Notes)
            {
            }
        }

    }

    actions
    {
        area(Navigation)
        {
            group("&Seminar")
            {
                action("Co&mments")
                {
                    RunObject = page "CSD Seminar Comment Sheet";
                    RunPageLink = "Table Name" = const (Seminar), "No." = field ("No.");
                    Image = Comment;
                    Promoted = true;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                }
            }


            action("Ledger Entries")
            {
                caption = 'Ledger Entries';
                RunObject = page "CSD Seminar Ledger Entries";
                RunPageLink = "Seminar No." = field ("no.");
                Promoted = true;
                PromotedCategory = Process;
                ShortcutKey = "ctrl+F7";
                image = WarrantyLedger;
            }
            action("&Registrations")
            {
                caption = 'Registrations';
                RunObject = page "CSD Seminar Registration List";
                RunPageLink = "seminar no." = field ("no.");
                Promoted = true;
                PromotedCategory = Process;
                ShortcutKey = "ctrl+F5";
            }
        }

        area(Processing)
        {
            action("Seminar Registration")
            {
                RunObject = page "CSD Seminar Registration";
                RunPageLink = "Seminar No." = field ("No.");
                RunPageMode = create;
                Image = NewTimesheet;
                Promoted = true;
                PromotedCategory = new;
            }
        }
    }
}
