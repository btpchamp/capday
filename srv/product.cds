using { sap.cap.productapp as my } from '../db/schema';

service productshop {

  entity Product as projection on my.Product;

  entity Supplier as projection on my.Supplier;
  
  function addition (input1: Integer, input2: Integer) returns Integer;

  function substration (input1: Integer, input2: Integer) returns Integer;
  

}