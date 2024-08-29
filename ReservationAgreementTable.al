table 50101 "Reservation Agreement"

{
    DataClassification = ToBeClassified;
    fields
    {
        field(1; "Reservation ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Reservation ID';
            NotBlank = true;
        }
        field(2; "Customer No."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Customer."No.";
            Caption = 'Customer No.';
        }
        field(3; "Customer Name"; Text[100])
        {
            //DataClassification = ToBeClassified;
            FieldClass = FlowField;
            CalcFormula = Lookup(Customer.Name WHERE("No." = field("Customer No.")));
            Editable = false;
            Caption = 'Customer Name';
        }

        field(4; "Project"; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Project';
        }

        field(5; "Available Property"; Option)
        {
            DataClassification = ToBeClassified;
            Caption = 'Available Property';
            OptionMembers = Lot,Condo;
        }
        field(6; "Phase"; Text[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Phase';
        }
        field(7; "Block"; Text[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Block';
        }
        field(8; "Lot"; Text[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Lot';
        }
        field(9; "Approximate Area"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Approximate Area (sqm)';
        }
        field(10; "Total Selling Price"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Total Selling Price';
        }
        field(11; "Reservation Fee Date"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Reservation Fee Date';
        }
        field(12; "Reservation Fee Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Reservation Fee Amount';
        }
        field(13; "Net Selling Price with VAT"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Net Selling Price with VAT';
        }
        field(14; "12% VAT"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = '12% VAT';
        }
        field(15; "5% Retention Fee"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = '5% Retention Fee';
        }
        field(16; "Total Amount Payable"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Total Amount Payable';
        }
        field(17; "Down Payment"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Down Payment';
        }
        field(18; "Total Balance for In-House Fin"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Total Balance for In-House Financing';
        }
        field(19; "Interest Rate"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Interest Rate';
        }
        field(20; "Number of Years"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Number of Years';
        }
        field(21; "Monthly Amortization"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Monthly Amortization';
        }
        field(22; "Terms and Conditions"; Text[1000])
        {
            DataClassification = ToBeClassified;
            Caption = 'Terms and Conditions';
        }
        field(23; "PC No."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Vendor."No.";
            Caption = 'PC No.';
        }
        field(24; "Property Consultant"; Text[100])
        {
            //DataClassification = ToBeClassified;
            FieldClass = FlowField;
            CalcFormula = Lookup(Vendor.Name WHERE("No." = field("PC No.")));
            Editable = false;
            Caption = 'Property Consultant';
        }
        field(25; "SM No."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Vendor."No.";
            Caption = 'SM No.';
        }
        field(26; "Sales Manager"; Text[100])
        {
            //DataClassification = ToBeClassified;
            FieldClass = FlowField;
            CalcFormula = Lookup(Vendor.Name WHERE("No." = field("SM No.")));
            Editable = false;
            Caption = 'Sales Manager';
        }
        field(27; "ASD No."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Vendor."No.";
            Caption = 'ASD No.';
        }
        field(28; "Assist. Sales Director"; Text[100])
        {
            //DataClassification = ToBeClassified;
            FieldClass = FlowField;
            CalcFormula = Lookup(Vendor.Name WHERE("No." = field("ASD No.")));
            Editable = false;
            Caption = 'Assist. Sales Director';
        }
        field(29; "SD No."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Vendor."No.";
            Caption = 'SD No.';
        }
        field(30; "Sales Director"; Text[100])
        {
            //DataClassification = ToBeClassified;
            FieldClass = FlowField;
            CalcFormula = Lookup(Vendor.Name WHERE("No." = field("SD No.")));
            Editable = false;
            Caption = 'Sales Director';
        }
    }

    keys
    {
        key(PK; "Reservation ID")
        {
            Clustered = true;
        }
    }
}
