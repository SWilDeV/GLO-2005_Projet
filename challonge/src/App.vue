<template>
  <div id="app">
    <NavBar :is-signed-in="this.toggleGetter" />
    <router-view />
    <b-button type="button" variant="primary" v-on:click="toggle"
      >Submit</b-button
    >
    <h1>{{ toggleGetter }}</h1>
  </div>
</template>
<script>
import NavBar from "@/components/NavBar.vue";
export default {
  name: "app",
  data() {
    return {
      // isSignedIn: toggleGetter,
    };
  },
  components: {
    NavBar,
  },
  methods: {
    toggle() {
      this.$store.dispatch("toggleAction");
    },
  },
  computed: {
    toggleGetter() {
      return this.$store.getters.toggleGetter;
    },
  },
};
</script>
