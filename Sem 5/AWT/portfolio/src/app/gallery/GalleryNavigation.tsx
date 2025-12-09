import Link from "next/link"
import {routes} from "@/routes"

function GalleryNavigation() {

	return (
		<>
			<nav className='absolute -top-8 -left-4'>
				<ul className='flex flex-row gap-2'>
					{routes.map((route) => (
						<li key={route.name} className='text-[0.55rem] tracking-wider font-black uppercase'>
							<Link href={route.path}>{route.name}</Link>
						</li>
					))}
				</ul>
			</nav>
		</>
	)
}

export default GalleryNavigation