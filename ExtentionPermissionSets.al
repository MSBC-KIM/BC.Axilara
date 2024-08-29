permissionset 50100 "Camaya Access"
{
    Assignable = true;
    Caption = 'Camaya Access';

    Permissions =
        TableData "Reservation Agreement" = RIMD,
        Page "Reservation Agreement Card" = X,
        Page "Reservation Agreement List" = X,
        TableData "RA Payments" = RIMD,
        Page "RA Payment Card" = X,
        Page "RA Payment List" = X,
        TableData "Commission Rates Setup" = RIMD,
        Page "Commission Rates Setup Card" = X,
        Page "Commission Rates Setup List" = X,
        TableData "Property" = RIMD,
        Page "Property Card" = X,
        Page "Property List" = X,
        TableData "Seller Agents Commission" = RIMD,
        Page "Seller Agents Commission Card" = X,
        Page "Seller Agents Commission List" = X,
        codeunit "Customer Dimension Sync" = X;

    //TableData Customer = R
    //Page Customer = X;


}
