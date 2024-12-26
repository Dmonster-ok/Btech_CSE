const product=[
    {id:1,name:"Laptop",category:"Electronics",stock:10,price:63000},
    {id:2,name:"iPhone",category:"Electronics",stock:0,price:150000},
    {id:3,name:"Joggers",category:"Clothing",stock:50,price:599},
    {id:4,name:"Sunglasses",category:"Wearable",stock:10,price:259},
]

console.log(product.filter(e=>e.category == "Electronics").map(e=>e.name));
console.log(product.find(e=>e.name = "iphone"))
console.log("Total: ",product.reduce((sum,e)=>sum+e.price,0))
console.log("Out of Stock: ",product.filter(e=>e.stock == 0).map(e=>e.name));
console.log(product.sort((a,b)=>a.price - b.price));