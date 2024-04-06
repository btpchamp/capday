namespace sap.cap.productapp;

using
{
    managed,
    cuid
}
from '@sap/cds/common';

aspect addtionalInfo
{
    mfgDate : String;
    expDate : String;
}

type PriceDetails
{
    price : Integer;
    discount : Integer;
}

entity Product : cuid, managed, addtionalInfo
{
    name : String;
    stock : Integer;
    cost : PriceDetails;
    emission : Integer;
    supplier : Association to  Supplier;
}

entity Supplier
{
    key ID : String;
    suppliername : String;
    address : String;
    email : String;
    product : Association to many Product on product.supplier = $self;
}
