codeunit 50149 "Customer Dimension Sync"
{
    Subtype = Normal;
    SingleInstance = false;

    [EventSubscriber(ObjectType::Table, Database::Customer, 'OnAfterInsertEvent', '', false, false)]
    local procedure OnAfterInsertCustomer(var Rec: Record Customer)
    begin
        CreateOrUpdateCustomerDimension(Rec);
    end;

    [EventSubscriber(ObjectType::Table, Database::Customer, 'OnAfterModifyEvent', '', false, false)]
    local procedure OnAfterModifyCustomer(var Rec: Record Customer)
    begin
        CreateOrUpdateCustomerDimension(Rec);
    end;

    [EventSubscriber(ObjectType::Table, Database::Customer, 'OnAfterDeleteEvent', '', false, false)]
    local procedure OnAfterDeleteCustomer(var Rec: Record Customer)
    begin
        DeleteCustomerDimension(Rec);
    end;

    local procedure CreateOrUpdateCustomerDimension(CustomerRec: Record Customer)
    var
        DimValue: Record "Dimension Value";
        DimensionCode: Code[20];
    begin
        DimensionCode := 'CUSTOMER'; // Replace with your actual Dimension Code

        // Check if the Dimension Value exists
        if DimValue.Get(DimensionCode, CustomerRec."No.") then begin
            // Update the Dimension Value if necessary
            DimValue.Name := CustomerRec.Name;
            DimValue.Modify();
        end else begin
            // Create a new Dimension Value
            DimValue.Init();
            DimValue."Dimension Code" := DimensionCode;
            DimValue."Code" := CustomerRec."No.";
            DimValue.Name := CustomerRec.Name;
            DimValue.Insert();
        end;
    end;

    local procedure DeleteCustomerDimension(CustomerRec: Record Customer)
    var
        DimValue: Record "Dimension Value";
    begin
        if DimValue.Get('CUSTOMER', CustomerRec."No.") then begin
            DimValue.Delete();
        end;
    end;
}
