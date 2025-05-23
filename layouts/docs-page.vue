<template>
  <div class="docs-page">
    <script defer src="https://umami.dalton.superdata.dev/script.js" data-website-id="e1331b84-9694-4636-bf76-d5fbd13a27de"></script>  
    <Container>
<!--       <PylarSearch />
 -->      <slot />
    </Container>
  </div>
</template>

<script>
/* import PylarSearch from '~/components/content/PylarSearch.vue';

export default {
  components: {
    PylarSearch,
  },
}; */
</script>

<style scoped lang="ts">
css({
  '.docs-page': {
    padding: '40px 0'
  }
})
</style>
