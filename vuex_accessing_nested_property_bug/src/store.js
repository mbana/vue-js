import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    level_1: {
      level_2: {
        level_3: {
          level_3_field: 'level_3_field_value',
        },
      },
    },
  },
  mutations: {

  },
  actions: {

  },
  getters: {
    level_1: (state) => state.level_1,
  }
})
