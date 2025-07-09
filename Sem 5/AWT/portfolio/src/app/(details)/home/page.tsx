import React from 'react'

function Home() {
  return (
	<div className="w-full min-h-full flex flex-col justify-center items-end text-right py-16">
	  <div className="space-y-16 max-w-4xl">
		<div className="text-xl text-black dark:text-white font-light leading-relaxed space-y-8">
		  <p>
			Combining creativity with technology to build meaningful digital experiences.
			Currently exploring the intersection of art and code through my studies and projects.
		  </p>

		  <div className="space-y-6">
			<h2 className="text-3xl font-light text-black dark:text-white">What I Do</h2>
			<div className="space-y-4 text-lg">
			  <p>Creating digital art that tells stories and evokes emotions</p>
			  <p>Developing web applications with clean, user-focused design</p>
			  <p>Bridging the gap between technical functionality and artistic expression</p>
			  <p>Learning and growing through academic pursuits and personal projects</p>
			</div>
		  </div>

		  <div className="pt-8 border-t border-black dark:border-white">
			<p className="text-lg">
			  Currently available for collaborations, freelance projects, and creative opportunities.
			</p>
		  </div>
		</div>
	  </div>
	</div>
  )
}

export default Home