import React from 'react'
import Navigation from '@/app/components/Navigation';

function detailsLayout(
	{ children }: {
		children: React.ReactNode;
	}
) {
	return (
		<div className="w-full h-full flex flex-row">
			{/* Fixed Navigation Panel */}
			<div className='w-1/3 h-full flex-shrink-0'>
				<div className='h-full p-5 flex flex-col justify-start'>
					<Navigation />
				</div>
			</div>

			{/* Scrollable Content Area */}
			<div className='w-2/3 h-full flex-shrink-0'>
				<div className='w-full h-full smooth-scroll'>
					<div className='min-h-full p-5 flex items-end justify-end'>
						<div className='w-full'>
							{children}
						</div>
					</div>
				</div>
			</div>
		</div>
	)
}

export default detailsLayout