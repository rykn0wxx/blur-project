import Vue from 'vue'
import Vuetify from 'vuetify/lib'
import 'vuetify/src/stylus/app.styl'

Vue.use(Vuetify, {
  // theme: {
  //   primary: '#ee44aa',
  //   secondary: '#424242',
  //   accent: '#82B1FF',
  //   error: '#FF5252',
  //   info: '#2196F3',
  //   success: '#4CAF50',
  //   warning: '#FFC107'
  // },
  theme: {
    primary: '#364bc5',
    'primary-dark': '#002496',
    'primary-light': '#7077fc',
    secondary: '#4c5667',
    accent: '#be5cd2',
    'accent-dark': '#8b2aa0',
    'accent-light': '#f38dff',
    error: '#ff7676',
    info: '#2cabe3',
    success: '#53e69d',
    warning: '#ffc36d'
  },
  iconfont: 'md'
})
