<template>
  <v-toolbar app dark fixed color="primary-dark" v-if="showToolbar">

    <v-toolbar-side-icon></v-toolbar-side-icon>

    <v-toolbar-title class="white--text">
      <span class="font-weight-regular">blur</span><strong>Admin</strong>
    </v-toolbar-title>

    <v-spacer></v-spacer>

    <v-toolbar-items>
      <v-btn
        router-link
        to="/authentication/register"
        flat>
        <v-icon>weekend</v-icon>
      </v-btn>
    </v-toolbar-items>

  </v-toolbar>
</template>

<script>
export default {
  name: 'TopBar',
  data () {
    return {
      showToolbar: true
    }
  },
  created () {
    this.$store.watch(
      (state) => {
        return this.$store.state.showToolbar
      },
      (newVal, oldVal) => {
        this.showToolbar = newVal
      },
      {
        deep: true
      }
    )
  }
}
</script>

<style lang="scss" scoped>
.v-toolbar__title {
  letter-spacing: 1px;
}
</style>
