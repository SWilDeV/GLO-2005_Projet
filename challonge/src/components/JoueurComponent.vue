<template>
  <div>
    <div>
      <hr />
      <div class="row">
        <div class="col-sm-10">
          <div>{{ username }}</div>
        </div>
        <div class="col-sm-2">
          <b-button
            class="p-1"
            type="button"
            variant="primary"
            v-on:click="goToOtherUserProfil"
            >+</b-button
          >
        </div>
      </div>
    </div>
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
