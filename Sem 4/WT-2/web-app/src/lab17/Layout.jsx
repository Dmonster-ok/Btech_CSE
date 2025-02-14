import { Link, Outlet, useLocation  } from "react-router-dom";

export default function Layout() {
    const location = useLocation().pathname;
    return (
        <div>
            <nav className="bg-gray-800 p-4">
                <ul className="flex space-x-4 justify-center">
                    <li>
                        <Link to="/" className={location === "/" ? "text-white" : "text-cyan-300"}>Home</Link>
                    </li>
                    <li>
                        <Link to="/about" className={location === "/about" ? "text-white" : "text-cyan-300"}>About</Link>
                    </li>
                    <li>
                        <Link to="/contact" className={location === "/contact" ? "text-white" : "text-cyan-300"}>Contact</Link>
                    </li>
                </ul>
            </nav>
            <Outlet />
        </div>
    )
}