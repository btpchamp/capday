const cds = require('@sap/cds');
module.exports = cds.service.impl(async function(srv) {

    const { Product } = srv.entities;

    srv.before('orderProduct', async(req) => {
        console.log(`<<<i am in "before" handler`)
        const result = await SELECT `stock` .from(Product).where({name:req.data.name})
        if (req.data.stock >  result[0].stock  ) {
            return req.error({
                code: '400',
                message: ` Order stock ${req.data.stock} is greater than original stock of ${result[0].stock}`
            })
        }  

    })  


    srv.on('orderProduct', async(req) => {
        
        console.log(req.timestamp)
        console.log(req.data.name)
        const result = await SELECT `stock` .from(Product).where({name:req.data.name})
        console.log("<<result>>> ", result[0].stock)

           let netStock =  result[0].stock - req.data.stock
           const updateStock = await UPDATE(Product).with({stock:netStock}).where ({name:req.data.name})
            console.log(`Order Placed aand remaining stock left ${netStock}`)
    })


    srv.after('orderProduct', async(req) => {
        console.log(`<<<i am in "after" handler`)
    })



    srv.on('MyFunction', async(req) => {
        let result = {}

        if (req.data.name == 'Audi'){
            result.car = 'Audi';
            result.type = 'Luxury';
            result.owner = 'ABC Corporation';
            result.quality == 'Very Good';
        } else {
            result.bike = 'BMW';
            result.engine = '250CC';
            result.color = 'Black';
        }
        console.log(result) ;
        return result;
    })



})



