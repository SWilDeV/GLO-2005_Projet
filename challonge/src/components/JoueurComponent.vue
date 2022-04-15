<template>
  <div>
    <h3>{{ username }}, {{ ville }}</h3>
  </div>
</template>

<script>
export default {
  name: "JoueurComponent",
  props: {
    avatar: String,
    dateJoined: String,
    username: String,
    ville: String,
  },
};
</script>

<style></style>
