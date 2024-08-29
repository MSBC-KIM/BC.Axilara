page 50102 "Reservation Agreement List"

{
    PageType = List;
    SourceTable = "Reservation Agreement";
    ApplicationArea = All;
    UsageCategory = Lists;
    Caption = 'Reservation Agreement List';

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Reservation ID"; Rec."Reservation ID")
                {
                    ApplicationArea = All;
                    trigger OnDrillDown()
                    begin
                        PAGE.Run(PAGE::"Reservation Agreement Card", Rec);
                    end;
                }
                field("Customer No."; Rec."Customer No.")
                {
                    ApplicationArea = All;
                }
                field("Customer Name"; Rec."Customer Name")
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
                field("Total Selling Price"; Rec."Total Selling Price")
                {
                    ApplicationArea = All;
                }
                field("Reservation Fee Date"; Rec."Reservation Fee Date")
                {
                    ApplicationArea = All;
                }
                field("Reservation Fee Amount"; Rec."Reservation Fee Amount")
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
            action(NewRecord)
            {
                Caption = 'New';
                Promoted = true;
                PromotedCategory = New;
                ApplicationArea = All;
                trigger OnAction()
                begin
                    PAGE.Run(PAGE::"Reservation Agreement Card");
                end;
            }
            action(EditRecord)
            {
                Caption = 'Edit';
                Promoted = true;
                PromotedCategory = Process;
                ApplicationArea = All;

                trigger OnAction()
                begin
                    PAGE.Run(PAGE::"Reservation Agreement Card", Rec);
                end;
            }
            action(OverrideDelete)
            {
                Caption = 'Delete';
                ApplicationArea = All;
                Visible = false;
            }

        }
    }
}
