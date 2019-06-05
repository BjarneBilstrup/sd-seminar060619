pageextension 50101 "CSD ResourcelistExt" extends "Resource list"
//BB test
{
    layout
    {
        modify(type)
        {
            visible = Showtype;
        }
        addafter(type)
        {

            field("CSD Resource Type"; "CSD Resource Type")
            {

            }
            field("CSD Maximum Participants"; "CSD Maximum Participants")
            {
                Visible = Showmaxfield;
            }

        }
    }

    trigger onopenpage();

    begin
        showtype := (GetFilter(type) = '')
    end;

    var
        [InDataSet]
        Showtype: Boolean;
        [InDataSet]
        Showmaxfield: Boolean;
}