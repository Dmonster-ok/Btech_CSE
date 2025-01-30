import products from '../data/products.js';

function Product(name, price,key) {
    return (
        <div key={key} className='flex flex-row mx-5 gap-5 items-center justify-center'>
            <div className='text-2xl font-bold'>{name}</div>
            <div className='text-xl'>{price}</div>
        </div>
    )
}

export default function Products() {
    return (
        <div className='flex flex-wrap m-5'>
            <div className='text-3xl'>Product :</div>
            {products.map(product => Product(product.ProductName,product.ProductPrice ,product.id))}
        </div>
    )
}