using { sap.cap.productapp as my } from '../db/schema';
//@protocol: 'rest'
service productshop {
  
  @odata.draft.enabled
  entity Product as projection on my.Product actions {
    action orderProduct(name: String @title: 'Product Name', stock: Integer @title: 'Quantity');
  };

  @readonly
  entity Supplier as projection on my.Supplier;
  
  function addition (input1: Integer, input2: Integer) returns Integer;

  function substration (input1: Integer, input2: Integer) returns Integer;


  @open
  type object {};
  function MyFunction(name:String) returns object; 
  

}