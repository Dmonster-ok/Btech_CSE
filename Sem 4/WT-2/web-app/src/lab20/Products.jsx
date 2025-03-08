import { useState } from 'react';

function Products() {
    const [id, setId] = useState(1);
    const [name, setName] = useState('');
    const [price, setPrice] = useState(0);
    const [products, setProducts] = useState([]);
    const [editId, setEditId] = useState(null);

    return (
        <>
            {/* Static CRUD */}
            <h1 className="text-2xl font-bold m-3">Products</h1>
            <table className='table-fixed'>
                <tbody>
                    <tr>
                        <td className='p-3'>Name</td>
                        <td className='p-3'>
                            <input className='btn' onChange={(e) => setName(e.target.value)} type="text" maxLength={25} value={name} />
                        </td>
                        <td className='p-3'>Price</td>
                        <td className='p-3'>
                            <input className='btn' onChange={(e) => setPrice(Number(e.target.value))} type="number" value={price} />
                        </td>
                        <td>
                            <button className='btn' onClick={() => {
                                if (name.trim() === '' || price <= 0) return;

                                if (editId !== null) {
                                    // Update existing product
                                    setProducts(products.map(p => 
                                        p.id === editId ? { ...p, name, price } : p
                                    ));
                                    setEditId(null);
                                } else {
                                    // Add new product
                                    setProducts([...products, { id, name, price }]);
                                    setId(id + 1);
                                }

                                // Clear input fields
                                setName('');
                                setPrice(0);
                            }}>
                                {editId !== null ? "Edit" : "Add"}
                            </button>
                        </td>
                    </tr>
                    {products.map((product) => (
                        <tr key={product.id}>
                            <td className='p-3'>{product.id}</td>
                            <td className='p-3'>{product.name}</td>
                            <td className='p-3'>${product.price}</td>
                            <td className='p-3 flex'>
                                <button className='px-2 py-1 m-1.5 rounded-md border border-amber-50' onClick={() => {
                                    setProducts(products.filter(p => p.id !== product.id));
                                }}>
                                    Delete
                                </button>
                                <button className='px-2 py-1 m-1.5 rounded-md border border-amber-50' onClick={() => {
                                    setName(product.name);
                                    setPrice(product.price);
                                    setEditId(product.id);
                                }}>
                                    Edit
                                </button>
                            </td>
                        </tr>
                    ))}
                </tbody>
            </table>
        </>
    );
}

export default Products;
