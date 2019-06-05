table 50101 "CSD Seminar"
{
    caption = 'CSD Seminar';

    fields
    {
        field(10; "no."; Code[20])
        {
            Caption = 'No.';
        }
        field(20; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(30; "Seminar Duration"; Decimal)
        {
            caption = 'Seminar Duration';
            DecimalPlaces = 0 : 1;
        }
        field(40; "Minimum Participants"; Integer)
        {
            Caption = 'Minimum Participants';
        }
        field(50; "Maximum Participants"; Integer)
        {
            Caption = 'Maximum Participants';
        }
        field(60; "Search name"; Code[50])
        {
            Caption = 'Search Name';
        }
        field(70; Blocked; Boolean)
        {
            Caption = 'Blocked';
        }
        field(80; "Last date Modified"; Date)
        {
            Caption = 'Last date Modified';
        }
        field(90; Commment; Boolean)
        {
            Caption = 'Comment';
            Editable = false;
            //            FieldClass = FlowField;
            //            CalcFormula=exist("seminar Comment line"
            //            where("Table name"= Const(Seminar"),
            //              "no." = field("no.")));
        }
        field(100; "seminar price"; Decimal)
        {
            Caption = 'Seminar Price';
            AutoFormatType = 1;
        }
        field(110; "Gen Prod. Posting Group"; Code[10])
        {
            caption = 'Gen Prod. Posting Group';
            TableRelation = "Gen. Product Posting Group";
        }
        field(120; "Vat Prod. Posting Group"; Blob)
        {
            Caption = 'Vat Prod. Posting Group';
        }
        field(130; "No. Series"; Code[20])
        {
            Caption = 'no. Series';
            TableRelation = "No. Series";
        }
    }

    keys
    {
        key(PK; "no.")
        {
            Clustered = true;
        }
        key(key1; "Search name")
        {

        }
    }


}