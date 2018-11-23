import Vue from 'vue'
import upperFirst from 'lodash/upperFirst'
import camelCase from 'lodash/camelCase'

const requireModels = require.context(
  '../models', false, /^([A-Z][\w-]+)Model.vue$/
)

requireModels.keys().forEach(fileName => {
  const componentConfig = requireModels(fileName)
  const componentName = upperFirst(
    camelCase(fileName.replace(/^\.\//, '').replace(/\.\w+$/, ''))
  )
  Vue.component(componentName, componentConfig.default || componentConfig)
})
