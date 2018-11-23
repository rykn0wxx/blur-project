<template>
  <v-container fluid pa-0 ma-0>
    <img :src="require('../../assets/register-bg.jpeg')" class="hide blur-bg" alt="blured background" />
    <v-layout justify-end row fill-height>
      <v-flex xs12 sm4>
        <v-card class="elevation-10 login__card" color="secondary-dark">
          <v-form name="user" ref="form" class="login__form">
            <router-link to="/" class="login__form--link">
              <AnonLogo />
            </router-link>
            <h5 class="subheading">
              <span class="text-uppercase font-weight-medium login__form--title">Register Now</span>
              <small class="caption login__form--caption">Create your account and enjoy</small>
            </h5>
            <v-card-text>
              <v-text-field class="login__form--control" validate-on-blur clearable prepend-icon="email" name="email" label="Email" type="email" required autocomplete="off"></v-text-field>
            </v-card-text>
            <v-card-actions>
              <v-spacer></v-spacer>
              <v-btn
                flat
                type="submit"
                color="info">
                Register
              </v-btn>
            </v-card-actions>
            <v-card-text>
              <p class="login__form--footer">
                Already have an account?
                <router-link to="/">
                  Sign In
                </router-link>
              </p>
            </v-card-text>
          </v-form>
        </v-card>
      </v-flex>
    </v-layout>
  </v-container>
</template>

<script>
import AnonLogo from '@/components/AnonLogo'

export default {
  components: {
    AnonLogo
  },
  created () {
    this.$store.dispatch('showToolbar', false)
  }
}
</script>

<style lang="scss" scoped>
.hide {
  display: none;
}
.login {
  &__card {
    padding: 25px;
    width: 100%;
    min-height: 100%;
    height: 100vh;
    box-sizing: border-box;
    color: #dce2ec;
  }
  &__form {
    &--title {
      display: block;
      letter-spacing: .005em;
    }
    &--caption {
      letter-spacing: .02em;
      font-weight: 300;
    }
    &--link {
      height: inherit;
      width: auto;
      display: block;
    }
    &--control {
      .v-label {
        font-size: 14px;
      }
    }
  }
}
.subheading {
  margin: 40px 0 12px 0;
}
.blur-bg {
  min-width: 1024px;
  min-height: 100%;

  width: 100%;
  height: 100%;

  position: fixed;
  top: 0;
  left: 0;

  background-size: cover;
  background-repeat: no-repeat;
  background-position: center center;
  background-attachment: fixed;
  filter: blur(2px) grayscale(0.7);
}
</style>
