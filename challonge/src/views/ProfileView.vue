<template>
  <div>
    <h1>Salut {{ user.Username }}</h1>
  </div>
</template>

<script>
export default {
  name: "ProfileView",
  data() {
    return {
      user: "",
    };
  },
  created() {
    this.user = JSON.parse(localStorage.getItem("user"));
  },
};
</script>

<style></style>
