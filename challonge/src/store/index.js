import Vuex from "vuex";
import Vue from "vue";

Vue.use(Vuex);

export const store = new Vuex.Store({
  state: {
    isSignedIn: false,
  },
  mutations: {
    toggleMutation(state) {
      if (state.isSignedIn == true) {
        state.isSignedIn = false;
      } else {
        state.isSignedIn = true;
      }
    },
  },
  actions: {
    toggleAction(context) {
      context.commit("toggleMutation");
    },
  },
  getters: {
    toggleGetter(state) {
      return state.isSignedIn;
    },
  },
});
