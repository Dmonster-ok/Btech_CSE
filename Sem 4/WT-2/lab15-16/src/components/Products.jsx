import products from '../../data/products.js';

function Normal({ name, price, key }) {
    return (
        <div key={key} className='flex flex-row gap-5 items-center justify-center'>
            <div className='text-2xl font-bold'>{name}</div>
            <div className='text-xl'>{price}</div>
        </div>
    )
}

function Table({ name, price, key }) {
    return (
        <tr key={key}>
            <td className='border border-gray-300'>{name}</td>
            <td className='border border-gray-300'>{price}</td>
        </tr>
    )
}

function Card({ name, price, key }) {
    return (
        <div key={key} className="max-w-sm rounded overflow-hidden shadow-lg m-4 p-4">
            <div className="font-bold text-xl mb-2">{name}</div>
            <p className="text-gray-700 text-base">{price}</p>
        </div>
    )
}

export default function Products({ format }) {
    return (
        <>
            <div className='text-3xl'>Product :</div>
            {format === 'normal' && <div className='flex flex-wrap m-5'>
                {products.map(product => <Normal name={product.ProductName} price={product.ProductPrice} key={product.id} />)}
            </div>}
            {format === 'table' && <table className='border border-gray-400'>
                <tbody>
                    {products.map(product => <Table name={product.ProductName} price={product.ProductPrice} key={product.id} />)}
                </tbody>
            </table>}
            {format === 'card' && <div className='flex flex-wrap'>
                {products.map(product => <Card name={product.ProductName} price={product.ProductPrice} key={product.id} />)}
            </div>}
        </>
    )
}