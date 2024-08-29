table 50106 "RA Payments"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "RA Payment ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'RA Payment ID';
        }

        field(2; "Reservation ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Reservation ID';
            TableRelation = "Reservation Agreement"."Reservation ID";
        }

        field(3; "Customer No."; Code[20])
        {
            //DataClassification = ToBeClassified;
            FieldClass = FlowField;
            Caption = 'Customer No.';
            CalcFormula = Lookup("Reservation Agreement"."Customer No." WHERE("Reservation ID" = FIELD("Reservation ID")));
        }

        field(4; "Customer Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Customer Name';
            //CalcFormula = Lookup(Customer.Name WHERE ("No." = FIELD("Customer No.")));
            //Editable = false;
        }

        field(5; "Payment Type"; Option)
        {
            DataClassification = ToBeClassified;
            Caption = 'Payment Type';
            OptionMembers = "Reservation Fee","Downpayment","Amortization","Others";
        }

        field(6; "Payment Index"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Payment Index';
        }

        field(7; "Payment Description"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Payment Description';
        }

        field(8; "Due Date"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Due Date';
        }

        field(9; "Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Amount';
        }

        field(10; "Payment Mode"; Option)
        {
            DataClassification = ToBeClassified;
            Caption = 'Payment Mode';
            OptionMembers = Cash,Check,"Bank Transfer",Others;
        }

        field(11; "Bank-Check Number"; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Bank-Check Number';
        }

        field(12; "Check Date"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Check Date';
        }

        field(13; "Check Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Check Amount';
        }

        field(14; "Status"; Option)
        {
            DataClassification = ToBeClassified;
            Caption = 'Status';
            OptionMembers = Posted,Bounced,Open,Others;
        }

        field(15; "Remarks"; Text[200])
        {
            DataClassification = ToBeClassified;
            Caption = 'Remarks';
        }
    }

    keys
    {
        key(PK; "RA Payment ID")
        {
            Clustered = true;
        }
        key("Reservation ID"; "Reservation ID")
        {
        }
    }

    trigger OnInsert()
    begin
        // Add any necessary logic for handling insert actions
    end;
}
