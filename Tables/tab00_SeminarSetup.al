table 50100 "CSD Seminar Setup"
{

    Caption = 'Seminar setup';

    fields
    {
        field(10; "Primary Key"; Code[10])
        {
            caption = 'Primary Ley';
            DataClassification = SystemMetadata;
        }
        field(20; "Seminar Nos."; Code[10])
        {
            caption = '"Seminar Nos."';
            DataClassification = SystemMetadata;
            TableRelation = "No. Series";
        }
        field(30; "Seminar Registration No."; code[20])
        {
            caption = 'Seminar Registration No.';
            DataClassification = SystemMetadata;
            TableRelation = "No. Series";
        }
        field(40; "Posted Seminar Reg Nos."; code[20])
        {
            caption = 'Posted Seminar Reg Nos.';
            DataClassification = SystemMetadata;
            TableRelation = "No. Series";
        }
    }

    keys
    {
        key(PK; "primary Key")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}
