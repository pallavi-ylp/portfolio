<script>
	import profile from '../lib/images/profile.png'; 
	import GrommetIconsGithub from '~icons/grommet-icons/github';
	import LineMdLinkedin from '~icons/line-md/linkedin';
	import RiJavaLine from '~icons/ri/java-line';
	import MdiAngular from '~icons/mdi/angular';
	import MdiLanguagePython from '~icons/mdi/language-python';
	import RiSvelteFill from '~icons/ri/svelte-fill';

	let sections = [
		{ id: "about-me", bgColor: "bg-gradient-to-b from-black to-sky-900"},  
		{id: "about-project", bgColor: "bg-gradient-to-b from-sky-900 to-black"}
	];

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
						<p class="text-gray-300 gap">
							Coding isn't just passion, it's how I pay the bills and keep going...
						</p>

						<!-- Social Media Links-->
						<div class="flex items-center gap-4 mt-4">
							<a href="url" target="_blank" class="hover:scale-110 transition-transform">
								<GrommetIconsGithub class="text-black"/>
							</a>
		
							<a href="url" target="_blank" class="hover:scale-110 transition-transform">
								<LineMdLinkedin class="text-black"/>
							</a>
						 </div>
					</div>
				</div>

			{:else if section.id === "about-project"}
				<div class="flex flex-col h-full w-full gap-2 items-center p-12">
					<h1 class="font-bold text-2xl text-gray-300">Technologies I use</h1>
				
					<!-- Icons Row -->
					<div class="flex flex-row gap-8 items-center justify-center mt-4 text-black">
					<RiJavaLine />
					<MdiAngular />
					<MdiLanguagePython />
					<RiSvelteFill />
					</div>

					<h1 class="font-bold text-2xl text-gray-300">Work Experience</h1>
					<h5 class="font-bold text-gray-700">I have built tech for following companies</h5>
				
					<!-- Icons Row -->
					<div class="flex flex-row gap-8 items-center justify-center mt-4 text-black">
						<!-- Morgan Stanley Block -->
						<div class="flex flex-col items-center text-center">
							<h2 class="text-xl font-bold">Morgan Stanley</h2>
							<p class="text-gray-700 max-w-xs">
								Developed a reusable rules engine library to streamline collaboration, led Enricher UI implementation, and integrated AI to automate rule-based workflows for improved efficiency.
							</p>
						</div>

						<!-- Wissen Technology Block -->
						<div class="flex flex-col items-center text-center">
							<h2 class="text-xl text-black font-bold">Wissen Technology</h2>
							<p class="text-gray-700 max-w-xs">
								Built a high-performance rules engine using Drools, Spring Boot, and Angular; automated tasks with Python, integrated via Kafka/REST, and ensured 90% test coverage—boosting performance and productivity.</p>
						</div>
					</div>

					<h1 class="font-bold text-1xl text-gray-300">Now Fun Part..</h1>
					<a href="/photography" class="text-gray-400 hover:underline mt-2 block">
						Check out my Photography Skills
					</a>
				</div>	
			{/if}
		</section>
	{/each}
</main>