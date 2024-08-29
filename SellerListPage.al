page 50106 "Seller Agents Commission List"
{
    PageType = List;
    ApplicationArea = All;
    SourceTable = "Seller Agents Commission";
    Caption = 'Seller Agents Commissions';
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Commission ID"; Rec."Commission ID")
                {
                    ApplicationArea = All;
                }
                field("Agent Name"; Rec."Agent Name")
                {
                    ApplicationArea = All;
                }
                field("Property ID"; Rec."Property ID")
                {
                    ApplicationArea = All;
                }
                field("Commission Rate (%)"; Rec."Commission Rate (%)")
                {
                    ApplicationArea = All;
                }
                field("Commission Amount"; Rec."Commission Amount")
                {
                    ApplicationArea = All;
                }
                field("Date"; Rec."Date")
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
                    PAGE.Run(PAGE::"Seller Agents Commission Card", Rec);
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
                    PAGE.Run(PAGE::"Seller Agents Commission Card", Rec);
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
