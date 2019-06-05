tableextension 50100 "CSD ResourceExt" extends Resource
//CSD ver 1 by BB
{
    fields
    {
        modify("profit %")
        {
            trigger onaftervalidate()
            begin
                rec.TestField("Unit Cost");
            end;
        }
        modify(Type)
        {
            OptionCaption = 'Instructor,Room';
        }
        field(50101; "CSD Resource Type"; Option)
        {
            Caption = 'Resource Type';
            OptionMembers = "Internal","External";
            OptionCaption = 'Internal,External';
        }
        field(50102; "CSD Maximum Participants"; Integer)
        {
            caption = 'Maximum participants';
        }
        field(50103; "CSD Quantity Per Day"; Decimal)
        {
            Caption = 'Quantity per day';
        }

    }

}