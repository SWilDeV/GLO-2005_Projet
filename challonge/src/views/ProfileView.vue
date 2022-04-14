<template>
  <div>
    <h1>Salut {{ user.Prenom }}</h1>
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
    this.user = localStorage.getItem(JSON.parse("user"));
    console.log(this.user);
  },
};
</script>

<style></style>
