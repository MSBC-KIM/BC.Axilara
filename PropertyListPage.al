page 50111 "Property List"
{
    PageType = List;
    SourceTable = "Property";
    ApplicationArea = All;
    Caption = 'Property List';
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Property ID"; Rec."Property ID")
                {
                    ApplicationArea = All;

                    trigger OnDrillDown()
                    begin
                        PAGE.Run(PAGE::"Property Card", Rec);
                    end;
                }
                field(Phase; Rec.Phase)
                {
                    ApplicationArea = All;
                }
                field(Project; Rec.Project)
                {
                    ApplicationArea = All;
                }
                field(Block; Rec.Block)
                {
                    ApplicationArea = All;
                }
                field(Lot; Rec.Lot)
                {
                    ApplicationArea = All;
                }
                field("Area (sqm)"; Rec."Area (sqm)")
                {
                    ApplicationArea = All;
                }
                field("Lot Status"; Rec."Lot Status")
                {
                    ApplicationArea = All;
                }
                field("Lot Type"; Rec."Lot Type")
                {
                    ApplicationArea = All;
                }
                field("Price /sqm"; Rec."Price /sqm")
                {
                    ApplicationArea = All;
                }
                field(TSP; Rec.TSP)
                {
                    ApplicationArea = All;
                }
                field("Client #"; Rec."Client #")
                {
                    ApplicationArea = All;
                }
                field("Client Name"; Rec."Client Name")
                {
                    ApplicationArea = All;
                }
                field(NSP; Rec.NSP)
                {
                    ApplicationArea = All;
                }
                field("AR Balance"; Rec."AR Balance")
                {
                    ApplicationArea = All;
                }
                field(MA; Rec.MA)
                {
                    ApplicationArea = All;
                }
                field("Status of accounts"; Rec."Status of accounts")
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
                    PAGE.Run(PAGE::"Property Card", Rec);
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
                    PAGE.Run(PAGE::"Property Card", Rec);
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