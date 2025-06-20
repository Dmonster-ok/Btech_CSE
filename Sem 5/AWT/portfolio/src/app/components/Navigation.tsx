import Link from 'next/link'
import React from 'react'

function Titly() {
	const whitespace = (n: number) => Array(n).fill('\u00A0').join('')
	return (
		<>
			<p className='font-bold text-4xl tracking-widest'>Dhruv Pithwa</p>
			<p className='tracking-tight text-xs italic'>Artist {whitespace(2)}|{whitespace(3)}Web Developer</p>
		</>
	)
}

function Navigation() {

	const routes = [
		{ name: 'Home', path: '/' },
		{ name: 'Gallery', path: '/gallery' },
		{ name: 'About', path: '/about' },
		{ name: 'Contact', path: '/contact' },
	]
	return (
		<>
			<Titly />
			<nav className='mt-10'>
				<ul className='flex flex-col gap-1'>
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

export default Navigation