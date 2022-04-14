<template>
  <div id="app">
    <NavBar :is-signed-in="this.toggleGetter" />
    <router-view />
  </div>
</template>
<script>
import NavBar from "@/components/NavBar.vue";
export default {
  name: "app",
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
<style scoped>
#app {
  width: 100%;
  height: 100%;
  color: rgb(40, 98, 153);
}
</style>
