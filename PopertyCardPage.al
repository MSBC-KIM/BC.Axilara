page 50109 "Property Card"
{
    PageType = Card;
    ApplicationArea = All;
    SourceTable = "Property";
    Caption = 'Property';

    layout
    {
        area(content)
        {
            group(Group)
            {
                field("Property ID"; Rec."Property ID")
                {
                    ApplicationArea = All;
                }
                field(Project; Rec.Project)
                {
                    ApplicationArea = All;
                }
                field(Phase; Rec.Phase)
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
