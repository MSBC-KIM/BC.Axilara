table 50104 "Property"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Property ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Property ID';
            Editable = true;
        }

        field(2; "Project"; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Project';
        }
        field(3; "Phase"; Text[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'Phase';
        }

        field(4; "Block"; Text[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'Block';
        }
        field(5; "Lot"; Text[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'Lot';
        }
        field(6; "Area (sqm)"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Area (sqm)';
        }
        field(7; "Lot Status"; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Lot Status';
        }
        field(8; "Lot Type"; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Lot Type';
        }
        field(9; "Price /sqm"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Price /sqm';
        }
        field(10; "TSP"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Total Selling Price';
        }
        field(11; "Client #"; Text[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Client #';
        }
        field(12; "Client Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Client Name';
        }
        field(13; "NSP"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Net Selling Price';
        }
        field(14; "AR Balance"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Accounts Receivable Balance';
        }
        field(15; "MA"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Monthly Amortization';
        }
        field(16; "Status of accounts"; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Status of accounts';
        }
    }

    keys
    {
        key(PK; "Property ID")
        {
            Clustered = true;
        }
    }
}
