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
