import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  strict: true,
  state: {
    showToolbar: true
  },
  mutations: {
    showToolbar (state, showToolbar) {
      state.showToolbar = showToolbar
    }
  },
  actions: {
    showToolbar ({ commit }, showToolbar) {
      commit('showToolbar', showToolbar)
    }
  }
})
