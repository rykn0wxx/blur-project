<template>
  <v-app dark class="blur-admin">
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
</style>
