const cds = require('@sap/cds');

module.exports = async (srv) => 
{        
    // Using CDS API      
    const ProductMasterA2X = await cds.connect.to("ProductMasterA2X"); 
      srv.on('READ', 'A_ProductDescription', req => ProductMasterA2X.run(req.query)); 
      srv.on('READ', 'A_Product', req => ProductMasterA2X.run(req.query)); 
}