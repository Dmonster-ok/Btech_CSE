import React from 'react'

function Contact() {
	const contacts = [
		{
			platform: "Email",
			handle: "dhruv.pithwa@example.com",
			url: "mailto:dhruv.pithwa@example.com"
		},
		{
			platform: "Instagram",
			handle: "@dhruv_pithwa",
			url: "https://instagram.com/dhruv_pithwa"
		},
		{
			platform: "ArtStation",
			handle: "dhruv-pithwa",
			url: "https://artstation.com/dhruv-pithwa"
		},
		{
			platform: "LinkedIn",
			handle: "dhruv-pithwa",
			url: "https://linkedin.com/in/dhruv-pithwa"
		},
		{
			platform: "GitHub",
			handle: "dhruv-pithwa",
			url: "https://github.com/dhruv-pithwa"
		}
	]

	return (
		<div className="w-full min-h-full flex flex-col justify-center py-16 text-right">
			<div className="space-y-16">
				<div className="space-y-12">
					<p className="text-2xl font-light text-black dark:text-white leading-relaxed">
						Let's connect and create something amazing together.
					</p>

					<div className="space-y-8">
						{contacts.map((contact, index) => (
							<div key={index} className="border font-light hover:font-bold border-black dark:border-white p-6 rounded-none hover:bg-black hover:text-white dark:hover:bg-white dark:hover:text-black transition-colors duration-300">
								<a
									href={contact.url}
									target="_blank"
									rel="noopener noreferrer"
									className="block"
								>
									<div className="flex justify-between items-center">
										<span className="text-2xl tracking-wide">
											{contact.platform}
										</span>
										<span className="text-xl">
											{contact.handle}
										</span>
									</div>
								</a>
							</div>
						))}
					</div>

					<div className="space-y-8">
						<h2 className="text-4xl font-light tracking-wide text-black dark:text-white">Let's Work Together</h2>
						<div className="space-y-6 text-xl font-light text-black dark:text-white">
							<p>I'm always excited to collaborate on:</p>
							<ul className="space-y-3 text-lg">
								<li>• Creative web development projects</li>
								<li>• Digital art commissions</li>
								<li>• UI/UX design work</li>
								<li>• Academic collaborations</li>
								<li>• Open source contributions</li>
							</ul>
						</div>
					</div>

					<div className="mt-16 pt-8 border-t border-black dark:border-white">
						<p className="text-lg font-light text-black dark:text-white">
							Available for freelance projects, collaborations, and creative opportunities.
						</p>
					</div>
				</div>
			</div>
		</div>
	)
}

export default Contact