import {ReactNode} from 'react'
import GalleryNavigation from './GalleryNavigation'

function GalleryLayout({ children }: { children: ReactNode }) {
  return (
	<div className='w-full h-full relative'>
		<GalleryNavigation />
		{children}
	</div>
  )
}

export default GalleryLayout