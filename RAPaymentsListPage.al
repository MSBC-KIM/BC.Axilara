page 50108 "RA Payment List"
{
    PageType = List;
    SourceTable = "RA Payments";
    ApplicationArea = All;
    Caption = 'RA Payment List';

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("RA Payment ID"; Rec."RA Payment ID")
                {
                    ApplicationArea = All;
                }

                field("Reservation ID"; Rec."Reservation ID")
                {
                    ApplicationArea = All;
                }

                field("Customer No."; Rec."Customer No.")
                {
                    ApplicationArea = All;
                }

                field("Customer Name"; Rec."Customer Name")
                {
                    ApplicationArea = All;
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
            action(EditRecord)
            {
                Caption = 'Edit';
                Promoted = true;
                PromotedCategory = Process;
                ApplicationArea = All;

                trigger OnAction()
                begin
                    PAGE.Run(PAGE::"RA Payment Card", Rec);
                end;
            }
        }
    }
}
