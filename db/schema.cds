namespace sap.cap.productapp;

entity Product {
    key ID: String;
    name: String;
    stock: Integer;
    price: String
}


entity Supplier {
  key ID: String;
  suppliername: String;
  address: String;
  email: String
}
