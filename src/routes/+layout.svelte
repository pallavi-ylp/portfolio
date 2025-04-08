<script>
	import Header from './Header.svelte';
	import '../app.css';
</script>

<div class="min-h-screen h-full flex flex-col bg-gradient-to-b from-sky-900 to-black text-white p-8">
	<Header />
	<main>
		<slot />
	</main>
</div>

