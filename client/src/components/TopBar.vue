<template>
  <v-toolbar app dark fixed color="primary-dark">

    <v-toolbar-side-icon></v-toolbar-side-icon>

    <v-toolbar-title class="white--text">
      <span class="font-weight-regular">blur</span><strong>Admin</strong>
    </v-toolbar-title>

    <v-spacer></v-spacer>

    <v-toolbar-items>
      <v-btn flat>
        <v-icon>apps</v-icon>
      </v-btn>
    </v-toolbar-items>

  </v-toolbar>
</template>

<script>
export default {
}
</script>

<style lang="scss" scoped>
.v-toolbar__title {
  letter-spacing: 1px;
}
</style>
