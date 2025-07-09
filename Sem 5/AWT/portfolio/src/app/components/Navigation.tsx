import Link from 'next/link'
import React from 'react'
import {routes} from "@/routes"

function Title() {
	const whitespace = (n: number) => Array(n).fill('\u00A0').join('')
	return (
		<>
			<p className='font-light text-5xl tracking-widest text-black dark:text-white'>Dhruv Pithwa</p>
			<p className='tracking-tight text-lg font-light text-black dark:text-white mt-4'>Artist {whitespace(2)}|{whitespace(3)}Web Developer</p>
			<p className='tracking-tight text-base text-black dark:text-white mt-3 font-light'>
				B.Tech CSE Student, Darshan University
			</p>
		</>
	)
}

function Navigation() {

	return (
		<div className="h-full flex flex-col justify-between">
			<div>
				<Title />
				<nav className='mt-16'>
					<ul className='flex flex-col gap-3'>
						{routes.map((route) => (
							<li key={route.name} className='text-lg tracking-wider font-light uppercase text-black dark:text-white hover:opacity-70 transition-opacity duration-300'>
								<Link href={route.path}>{route.name}</Link>
							</li>
						))}
					</ul>
				</nav>
			</div>

			{/* Optional: Add a footer or additional navigation elements */}
			<div className="text-xs font-light text-black dark:text-white opacity-50">
				© 2025 Dhruv Pithwa
			</div>
		</div>
	)
}

export default Navigation