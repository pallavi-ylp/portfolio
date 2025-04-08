<script lang="ts">

const links = [
		{
			label: "Proejcts",
			href: "/projects"
		},
		{
			label: "Music",
			href: "/music",
		},
		{
			label: "Photograhy",
			href: "/photos"
		}
	]
</script>


<div class="flex flex-col h-full w-full gap-2 items-center">
	<h1 class="font-bold text-xl">About Me</h1>

	<div class="flex flex-row w-full space-x-6 justify-center items-center p-6">
		{#each links as link }
		<a href={link.href} class="border p-6 text-lg">
			{link.label}
		</a>
		{/each}
	</div>
</div>