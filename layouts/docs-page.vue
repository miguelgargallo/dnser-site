<template>
  <Headx />
  <div class="docs-page">
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
