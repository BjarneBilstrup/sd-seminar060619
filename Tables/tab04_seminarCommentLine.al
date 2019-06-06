table 50104 "CSD Seminar Comment Line"
{
    DataClassification = SystemMetadata;
    Caption = 'Seminar Comment Line';
    LookupPageId = "CSD Seminar List";
    DrillDownPageId = "CSD Seminar Comment List";

    fields
    {
        field(10; "Table name"; Option)
        {
            caption = ' Table Name';
            OptionMembers = "Seminar","Seminar Registration Header","Posted Seminar Reg. Header";
            DataClassification = SystemMetadata;

        }
        field(20; "Document Line no."; Integer)
        {
            Caption = 'Document Line No.';
            DataClassification = SystemMetadata;

        }
        field(30; "no."; Code[20])
        {
            DataClassification = SystemMetadata;
            Caption = 'No.';
            TableRelation = if ("Table name" = const (Seminar)) "CSD Seminar";
        }
        field(40; "Line No."; Integer)
        {
            DataClassification = SystemMetadata;
            caption = 'Line No.';
        }
        field(50; Date; Date)
        {
            DataClassification = SystemMetadata;
            caption = 'Date';
        }
        field(60; Code; Code[10])
        {
            DataClassification = SystemMetadata;
            Caption = 'Code';
        }
        field(70; Comment; Text[80])
        {
            DataClassification = SystemMetadata;
            Caption = 'Comment';

        }

    }

    keys
    {
        key(PK; "Table name", "Document Line no.", "no.", "Line No.")
        {
            Clustered = true;
        }
    }
}