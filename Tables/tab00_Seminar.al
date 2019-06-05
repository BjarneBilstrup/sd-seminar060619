table 50101 "CSD Seminar"
{
    caption = 'CSD Seminar';

    fields
    {
        field(10; "no."; Code[20])
        {
            Caption = 'No.';

            trigger onvalidate()

            begin
                if "no." <> xrec."no." then begin
                    seminarsetup.get;
                    NoSeriesMgt.TestManual(SeminarSetup."Seminar Nos.");
                    "No. Series" := '';
                end;
            end;
        }
        field(20; Name; Text[50])
        {
            Caption = 'Name';
            trigger onvalidate()

            begin
                if ("Search name" = UpperCase(xrec.name)) or ("Search name" = '') then
                    "Search name" := name;
            end;
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
            trigger Onvalidate();
            begin
                if xRec."Gen Prod. Posting Group" <> "Gen Prod. Posting Group" then begin
                    if GenProdPostingGroup.ValidateVatProdPostingGroup(GenProdPostingGroup, "Gen Prod. Posting Group") then
                        Validate("Vat Prod. Posting Group", GenProdPostingGroup."Def. VAT Prod. Posting Group");
                end;
            end;
        }
        field(120; "Vat Prod. Posting Group"; code[20])
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

    var
        SeminarSetup: Record "CSD Seminar Setup";
        //Commentlinge : Record "CSD Seminar Commentl Line";
        Seminar: record "CSD Seminar";
        GenProdPostingGroup: Record "Gen. Product Posting Group";
        NoSeriesMgt: Codeunit NoSeriesManagement;

    trigger oninsert();

    begin
        if "no." = '' then begin
            seminarsetup.get;
            seminarsetup.TestField("Seminar Nos.");
            NoSeriesMgt.InitSeries(seminarsetup."Seminar Nos.", xrec."no.", 0D, "no.", "No. Series");
        end;
    end;

    trigger onmodify();

    begin
        "Last date Modified" := today;
    end;

    trigger OnRename();

    begin
        "Last date Modified" := today;
    end;

    trigger ondelete()

    begin
        //Commentline.reset
        //Commentline.setrange("table name", commentline."table name"::seminar);
        //commentline.setrange("no.","no.");
        //Commentline.deleteall;
    end;

    procedure AssistEdit(): Boolean

    begin
        with seminar do begin
            Seminar := rec;
            SeminarSetup.TestField("Seminar Nos.");
            if NoSeriesMgt.SelectSeries(SeminarSetup."Seminar Nos.", xRec."No. Series", "No. Series") then begin
                NoSeriesMgt.SetSeries("no.");
                rec := Seminar;
                exit(true);
            end;
        end;
    end;
}