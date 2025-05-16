
import Products from './Products';
import Students from './Students';
import Faculties from './Faculties';

import { BrowserRouter, Link, Outlet, Route, Routes } from 'react-router-dom';

function Layout(params) {
    return (
        <div className="border rounded-md p-5">
            <nav className="flex justify-between m-2">
                <ul className="flex space-x-4">
                    <Link to='products' className='border rounded-md p-2' >Products</Link>
                    <Link to='students' className='border rounded-md p-2' >Students</Link>
                    <Link to='faculties' className='border rounded-md p-2' >Faculties</Link>
                </ul>
            </nav>
            <Outlet />
        </div>
    )
}

export default function Main() {
    return (<>
        <BrowserRouter>
            <Routes>
                <Route path="/" element={<Layout />}>
                    <Route path="/products" element={<Products />} />
                    <Route path="/students" element={<Students />} />
                    <Route path="/faculties" element={<Faculties />} />
                </Route>
            </Routes>
        </BrowserRouter>
    </>)
}