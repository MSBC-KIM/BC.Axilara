table 50105 "Seller Agents Commission"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Commission ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Commission ID';
            Editable = false;
        }
        field(2; "Agent Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Agent Name';
        }
        field(3; "Property ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Property ID';
        }
        field(4; "Commission Rate (%)"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Commission Rate (%)';
        }
        field(5; "Commission Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Commission Amount';
            Editable = false;
        }
        field(6; "Date"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Date';
        }
    }

    keys
    {
        key(PK; "Commission ID")
        {
            Clustered = true;
        }
    }

    // Defining triggers for specific events
    /*triggers
    {
        trigger OnInsert()
        begin
            CalculateCommissionAmount();
        end;

        trigger OnModify()
        begin
            CalculateCommissionAmount();
        end;
    }*/

    // Procedure to calculate the commission amount
    procedure CalculateCommissionAmount()
    var
        PropertyRec: Record "Property";
    begin
        if PropertyRec.Get("Property ID") then
            "Commission Amount" := PropertyRec.TSP * ("Commission Rate (%)" / 100);
    end;
}
