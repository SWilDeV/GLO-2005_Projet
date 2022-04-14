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
    FalseMutation(state) {
      state.isSignedIn = false;
    },
    TrueMutation(state) {
      state.isSignedIn = true;
    },
  },
  actions: {
    toggleAction(context) {
      context.commit("toggleMutation");
    },
    changeToFalse(context) {
      context.commit("FalseMutation");
    },
    changeToTrue(context) {
      context.commit("TrueMutation");
    },
  },
  getters: {
    toggleGetter(state) {
      return state.isSignedIn;
    },
  },
});
