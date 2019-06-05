pageextension 50100 "CSD ResouceCardExt" extends "Resource Card"
//BB extensinon 1   
{
    layout
    {
        addlast(General)
        {
            field("CSD Resource Type"; "CSD Resource Type")
            {

            }
            field("CSD Quantity Per Day"; "CSD Quantity Per Day")
            {

            }
        }
        addafter("Personal Data")
        {
            group("CSD Room")
            {
                Caption = 'Room';
                Visible = showmaxfield;
                Field("Csd Maximum Participants"; "CSD Maximum Participants")
                {

                }
            }
        }
    }

    trigger onaftergetrecord();

    begin
        showmaxfield := (type = type::Machine);
        CurrPage.update(false);
    end;

    var
        [indataset]
        Showmaxfield: boolean;
}