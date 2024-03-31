//Way 1
module.exports = (helloworld) => {
    helloworld.on('addition', ({data:{input1,input2}}) => input1+input2)
}


// Way 2
//module.exports = class helloworld extends cds.Service {
//    addition(input1,input2) { return input1+input2 }
//}


//Way 3
//module.exports = function helloworld() {
//    this.on('addition', ({data:{input1,input2}}) => input1+input2)
//}
