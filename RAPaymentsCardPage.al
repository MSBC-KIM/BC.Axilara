page 50107 "RA Payment Card"
{
    PageType = Card;
    SourceTable = "RA Payments";
    ApplicationArea = All;
    Caption = 'RA Payment Card';

    layout
    {
        area(content)
        {
            group(Group)
            {
                Caption = 'General Information';

                field("RA Payment ID"; Rec."RA Payment ID")
                {
                    ApplicationArea = All;
                    Editable = false;
                }

                field("Reservation ID"; Rec."Reservation ID")
                {
                    ApplicationArea = All;
                }

                field("Customer No."; Rec."Customer No.")
                {
                    ApplicationArea = All;
                    Editable = false;
                }

                field("Customer Name"; Rec."Customer Name")
                {
                    ApplicationArea = All;
                    Editable = false;
                }

                field("Payment Type"; Rec."Payment Type")
                {
                    ApplicationArea = All;
                }

                field("Payment Index"; Rec."Payment Index")
                {
                    ApplicationArea = All;
                }

                field("Payment Description"; Rec."Payment Description")
                {
                    ApplicationArea = All;
                }

                field("Due Date"; Rec."Due Date")
                {
                    ApplicationArea = All;
                }

                field("Amount"; Rec."Amount")
                {
                    ApplicationArea = All;
                }

                field("Payment Mode"; Rec."Payment Mode")
                {
                    ApplicationArea = All;
                }

                field("Bank-Check Number"; Rec."Bank-Check Number")
                {
                    ApplicationArea = All;
                }

                field("Check Date"; Rec."Check Date")
                {
                    ApplicationArea = All;
                }

                field("Check Amount"; Rec."Check Amount")
                {
                    ApplicationArea = All;
                }

                field("Status"; Rec."Status")
                {
                    ApplicationArea = All;
                }

                field("Remarks"; Rec."Remarks")
                {
                    ApplicationArea = All;
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
