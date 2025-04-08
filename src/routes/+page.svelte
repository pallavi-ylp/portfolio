<script>
	import profile from '../lib/images/profile.png'; 
	import githubLogo from '../lib/images/github.svg';
	let sections = [
		{ id: "about-me", bgColor: "bg-gradient-to-b from-black to-sky-900"},  
		{id: "about-x", bgColor: "bg-gradient-to-b from-sky-900 to-black"},
	];

	const links = [
		{
			label: "Proejcts",
			href: "/projects"
		},
		{
			label: "Photograhy",
			href: "/photos"
		}
	]

</script>

<main class="min-h-screen h-screen flex flex-col items-center justify-center">
	{#each sections as section, index}
		<section id={section.id} 
		class={`w-4/5 h-1/2 flex items-center justify-center text-white 
			${section.bgColor} transition-transform transform hover:scale-105 duration-300
			${index !== sections.length - 1 ? 'border-b border-black' : ''}`}>

			
			{#if section.id === "about-me"}
				<!-- Left: Profile Image -->
				<div class="flex flex-row gap-4 justify-center items-center">
					<div class="w-40 h-40 md:w-52 md:h-52 lg:w-64 lg:h-64 rounded-full overflow-hidden shadow-lg transform transition duration-300">
						<!-- svelte-ignore a11y-img-redundant-alt -->
						<img src={profile} alt="Me when i went to Arunachal Pradesh" class="w-full h-full object-cover">
					</div>
	
					<!-- Right: About Me Description -->
					<div class="max-w-md text-lg">
						<h1>Hi, I'm Pallavi Bhat</h1>
						<p class="text-gray-300 gap">I am a passionate developer with experience in Frontend and Backend technologies.</p>
					
						<!-- Social Media Links-->
						<div class="flex items-center gap-4 mt-4">
							<a href="url" target="_blank" class="hover:scale-110 transition-transform">
								<img src={githubLogo} alt="LinkedIn Profile" class="w-8 h-8">
							</a>
		
							<a href="url" target="_blank" class="hover:scale-110 transition-transform">
								<img src={githubLogo} alt="LinkedIn Profile" class="w-8 h-8">
							</a>
						 </div>
					</div>
				</div>

			{:else if section.id === "about-x"}
			<div class="flex flex-col h-full w-full gap-2 items-center p-12 ">
				<h1 class="font-bold text-3xl">About Me</h1>
				
				<p class="text-gray-300 mt-2">Explore my latest projects and Hobbies.</p>
			
				<div class="flex flex-row w-full space-x-6 justify-center items-center p-6">
					{#each links as link }
					<a href={link.href} class="rounded-xl p-4 bg-gray-800 text-lg hover:scale-105 transition-all duration-500">
						{link.label}
					</a>
					{/each}
				</div>
			</div>
			
			{:else}
				<!-- Default Content for Other Sections -->
				<div class="text-center">
					<h2 class="text-4xl font-bold">{section.name}</h2>
					<p class="text-gray-300 mt-2">Explore my latest projects and Hobbies.</p>
				</div>

				<!-- Projects, Music, Photography-->
				 <div class="flex flex-wrap justify-center gap-6 mt-6">
					<a href="/projects" class="w-40 h-20 bg-gray-800 text-white flex items-center justify-center rounded-lg shadow-lg hover:bg-gray-700 transition duration-300">
						Projects
					</a>
					<a href="/photography" class="w-40 h-20 bg-gray-800 text-white flex items-center justify-center rounded-lg shadow-lg hover:bg-gray-700 transition duration-300">
						Photography
					</a>
				 </div>
			{/if}
			
		</section>
	{/each}
</main>