import Vue from 'vue'
import Router from 'vue-router'

Vue.use(Router)

const AllRoutes = [{
  path: '/',
  redirect: 'home'
}, {
  path: '/home',
  name: 'home',
  component: () => import('./views/Home.vue')
}, {
  path: '/about',
  name: 'about',
  component: () => import('./views/About.vue')
}, {
  path: '/authentication/register',
  name: 'AuthenticationRegister',
  component: () => import('./views/authentication/Register.vue')
}]

export default new Router({
  mode: 'history',
  base: process.env.BASE_URL,
  routes: AllRoutes
})
