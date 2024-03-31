namespace sap.cap.productapp;
using { managed } from '@sap/cds/common';


//aspect

aspect addtionalInfo {
    mfgDate : String;
    expDate : String;
}


//type
type PriceDetails {
    price    : Integer;
    discount : Integer
}

entity Product : addtionalInfo, managed {
    key ID    : String;
        name  : String;
        stock : Integer;
        cost  : PriceDetails; //usage of type in entity
}


entity Supplier {
    key ID           : String;
        suppliername : String;
        address      : String;
        email        : String
}
