page 50105 "Seller Agents Commission Card"
{
    PageType = Card;
    ApplicationArea = All;
    SourceTable = "Seller Agents Commission";
    Caption = 'Seller Agent Commission';

    layout
    {
        area(content)
        {
            group(Group)
            {
                field("Commission ID"; Rec."Commission ID")
                {
                    ApplicationArea = All;
                    Editable = false;
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
                    Editable = false;
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
            action(CalculateCommission)
            {
                ApplicationArea = All;
                Caption = 'Calculate Commission';

                trigger OnAction()
                begin
                    Rec.CalculateCommissionAmount();
                    Rec.Modify(true);
                    CurrPage.Update();
                end;
            }
        }
    }
}
