<template>
  <div id="app">
    <NavBar />
    <router-view />
  </div>
</template>
<script>
import NavBar from "@/components/NavBar.vue";
export default {
  name: "app",
  data() {
    return {
      isSignedIn: false,
    };
  },
  components: {
    NavBar,
  },
};
</script>
