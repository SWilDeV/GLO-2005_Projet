<template>
  <div id="app">
    <NavBar />
    <nav>|</nav>
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
};
</script>
