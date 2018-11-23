import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  strict: true,
  state: {
    showToolbar: true,
    alerts: null,
    user: null,
    isUserLogin: null,
    token: null
  },
  mutations: {
    setToken (state, token) {
      state.token = token
    },
    setUser (state, user) {
      state.user = user
      state.isUserLogin = user ? true : null
    },
    setAlerts (state, alerts) {
      state.alerts = alert
    },
    showToolbar (state, showToolbar) {
      state.showToolbar = showToolbar
    }
  },
  actions: {
    setToken ({ commit }, token) {
      commit('setToken', token)
    },
    setUser ({ commit }, user) {
      commit('setUser', user)
    },
    setAlerts ({ commit }, alerts) {
      commit('setAlerts', alerts)
    },
    showToolbar ({ commit }, showToolbar) {
      commit('showToolbar', showToolbar)
    }
  }
})
