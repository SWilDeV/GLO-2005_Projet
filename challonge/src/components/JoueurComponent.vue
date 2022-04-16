<template>
  <div>
    <b-card class="">
      <b-row>
        <b-col
          ><h5>{{ username }}</h5></b-col
        >
        <b-col
          ><b-button
            class="ms-auto"
            type="button"
            variant="primary"
            v-on:click="goToOtherUserProfil"
            >En savoir plus</b-button
          ></b-col
        >
      </b-row>
      <div class=""></div>
    </b-card>
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
    IdJoueur: Number,
  },
  methods: {
    goToOtherUserProfil() {
      const IdJoueur = this.IdJoueur;
      console.log(IdJoueur);
      localStorage.setItem("OtherUser", JSON.stringify({ IdUser: IdJoueur }));
      this.$router.push({ name: "OtherUserProfile" });
    },
  },
};
</script>

<style></style>
