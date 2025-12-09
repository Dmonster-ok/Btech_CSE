import React from 'react'

function About() {

	const education = [
		{
			degree: "Bachelor of Technology - Computer Science Engineering",
			institution: "Darshan University",
			year: "Currently in Semester 5"
		},
		{
			degree: "Diploma in Computer Engineering",
			institution: "Darshan University",
			year: "2021 - 2024"
		}
	]

	const skills = [
		{
			category: "Technical Skills",
			items: ["Web Development", "UI/UX Design", "Frontend Technologies", "Problem Solving"]
		},
		{
			category: "Creative Skills",
			items: ["Digital Art", "Visual Design", "Artistic Vision", "Creativity", "Porcedural Texturing & Modeling", ]
		}
	]

	return (
		<div className="w-full min-h-full flex flex-col justify-center py-16 text-right">
			<div className="space-y-16">

				<div className="space-y-12 text-2xl leading-relaxed">

					<p className="text-black dark:text-white text-2xl">
						<span className='text-3xl'>Heyy!!</span> I'm <span className='font-light text-3xl tracking-widest'>Dhruv Pithwa</span>, a passionate artist and web developer currently pursuing my B.Tech in Computer Science Engineering at <span className="font-mono text-3xl">Darshan University.</span>
					</p>

					<div className="space-y-8">
						<h2 className="text-4xl font-light tracking-wide text-black dark:text-white">Education</h2>
						{education.map((edu, index) => (
							<div key={index} className="space-y-4 border border-black dark:border-white p-8 rounded-none">
								<h3 className="font-normal text-left text-black dark:text-white text-3xl">
									{edu.degree}
								</h3>
								<p className="w-full text-black dark:text-white text-xl mt-4 font-mono flex justify-between">
									<span>{edu.institution}</span>
									<span>{edu.year}</span>
								</p>
							</div>
						))}
					</div>

					<div className="space-y-8">
						<h2 className="text-4xl font-light tracking-wide text-black dark:text-white">Skills</h2>
						{skills.map((skill, index) => (
							<div key={index} className="space-y-4 border border-black dark:border-white p-8 rounded-none">
								<h3 className="font-normal text-left text-black dark:text-white text-3xl">
									{skill.category}
								</h3>
								<p className="w-full text-black dark:text-white text-xl mt-4 font-mono flex flex-wrap justify-between">
									{skill.items.map((item, index) => (
										<>
											<span key={index}>{item}</span>
											{index !== skill.items.length - 1 && <span className='' key={index + skill.items.length}>|</span>}
										</>
									))}
								</p>
							</div>
						))}
					</div>



					<p className="text-black dark:text-white font-light text-2xl">
						I combine my technical skills in web development with my artistic vision to create
						meaningful digital experiences. My journey in computer science has strengthened my
						problem-solving abilities while my artistic background brings creativity to every project.
					</p>
				</div>
			</div>
		</div>
	)
}

export default About