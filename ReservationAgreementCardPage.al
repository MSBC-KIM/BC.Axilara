page 50101 "Reservation Agreement Card"
{
    PageType = Card;
    SourceTable = "Reservation Agreement";
    ApplicationArea = All;
    //UsageCategory = Tasks;
    Caption = 'Reservation Agreement';

    layout
    {
        area(content)
        {
            group(Group)
            {
                Caption = 'General Information';
                field("Reservation ID"; Rec."Reservation ID")
                {
                    ApplicationArea = All;
                }
                field("Buyer's First Name"; Rec."Customer Name")
                {
                    ApplicationArea = All;
                }
                field("Buyer's Last Name"; Rec."Customer No.")
                {
                    ApplicationArea = All;
                }
            }

            group(PropertyDetails)
            {
                Caption = 'Property Details';
                field("Available Property"; Rec."Available Property")
                {
                    ApplicationArea = All;
                }
                field("Project"; Rec."Project")
                {
                    ApplicationArea = All;
                }
                field("Phase"; Rec."Phase")
                {
                    ApplicationArea = All;
                }
                field("Block"; Rec."Block")
                {
                    ApplicationArea = All;
                }
                field("Lot"; Rec."Lot")
                {
                    ApplicationArea = All;
                }
                field("Approximate Area"; Rec."Approximate Area")
                {
                    ApplicationArea = All;
                }
                field("Total Selling Price"; Rec."Total Selling Price")
                {
                    ApplicationArea = All;
                }
            }

            group(ReservationDetails)
            {
                Caption = 'Reservation Details';
                field("Reservation Fee Date"; Rec."Reservation Fee Date")
                {
                    ApplicationArea = All;
                }
                field("Reservation Fee Amount"; Rec."Reservation Fee Amount")
                {
                    ApplicationArea = All;
                }
            }

            group(PricingDetails)
            {
                Caption = 'Pricing Details';
                field("Net Selling Price with VAT"; Rec."Net Selling Price with VAT")
                {
                    ApplicationArea = All;
                }
                field("12% VAT"; Rec."12% VAT")
                {
                    ApplicationArea = All;
                }
                field("5% Retention Fee"; Rec."5% Retention Fee")
                {
                    ApplicationArea = All;
                }
                field("Total Amount Payable"; Rec."Total Amount Payable")
                {
                    ApplicationArea = All;
                }
            }

            group(FinancingDetails)
            {
                Caption = 'In-House Assisted Financing';
                field("Down Payment"; Rec."Down Payment")
                {
                    ApplicationArea = All;
                }
                field("Total Balance for In-House Financing"; Rec."Total Balance for In-House Fin")
                {
                    ApplicationArea = All;
                }
                field("Interest Rate"; Rec."Interest Rate")
                {
                    ApplicationArea = All;
                }
                field("Number of Years"; Rec."Number of Years")
                {
                    ApplicationArea = All;
                }
                field("Monthly Amortization"; Rec."Monthly Amortization")
                {
                    ApplicationArea = All;
                }
            }
            group(SellerAgents)
            {
                Caption = 'Seller Agents';
                field("PC No."; Rec."PC No.")
                {
                    ApplicationArea = All;
                }
                field("Property Consultant"; Rec."Property Consultant")
                {
                    ApplicationArea = All;
                }
                field("SM No."; Rec."SM No.")
                {
                    ApplicationArea = All;
                }
                field("Sales Manager"; Rec."Property Consultant")
                {
                    ApplicationArea = All;
                }
                field("ASD No."; Rec."ASD No.")
                {
                    ApplicationArea = All;
                }
                field("Assist. Sales Director"; Rec."Assist. Sales Director")
                {
                    ApplicationArea = All;
                }
                field("SD No."; Rec."SD No.")
                {
                    ApplicationArea = All;
                }
                field("Sales Director"; Rec."Sales Director")
                {
                    ApplicationArea = All;
                }
            }
            group(TermsAndConditions)
            {
                Caption = 'Terms and Conditions';
                field("Terms and Conditions"; Rec."Terms and Conditions")
                {
                    ApplicationArea = All;
                    MultiLine = true;
                }
            }

        }
    }
    actions
    {
        area(processing)
        {
            action(SaveAndClose)
            {
                Caption = 'Save and Close';
                Promoted = true;
                ApplicationArea = All;
                trigger OnAction()
                begin
                    CurrPage.SaveRecord();
                    CurrPage.Close();
                end;
            }
        }
    }
}
