<template>
  <v-app dark v-bind:class="{ 'blur-admin': $store.state.showToolbar }">
    <TopBar />
    <v-content>
      <router-view />
    </v-content>
  </v-app>
</template>

<script>
import TopBar from '@/components/TopBar'

export default {
  name: 'App',
  components: {
    TopBar
  }
}
</script>

<style lang="scss">
@import 'sass/layout';
@import 'sass/forms';
.hide {
  display: none;
}
</style>
