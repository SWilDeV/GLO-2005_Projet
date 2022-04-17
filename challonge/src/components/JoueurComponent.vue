<template>
  <div>
    <div>
      <hr />
      <div class="row">
        <div class="col-sm-10">
          <b-link v-on:click="goToOtherUserProfil" class="text-decoration-none">
            <div>{{ username }}</div>
          </b-link>
        </div>
        <div class="col-sm-2">
          <b-button
            v-if="isOwner"
            class="p-1"
            type="button"
            variant="danger"
            v-on:click="deleteMember"
            >-</b-button
          >
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "JoueurComponent",
  data() {
    return {
      isOwner: false,
    };
  },
  props: {
    avatar: String,
    dateJoined: String,
    username: String,
    ville: String,
    IdJoueur: Number,
    IdEquipeOwner: Number,
  },
  created() {
    this.checkIfUserIsOwner();
  },
  methods: {
    goToOtherUserProfil() {
      const IdJoueur = this.IdJoueur;
      console.log(IdJoueur);
      localStorage.setItem("OtherUser", JSON.stringify({ IdUser: IdJoueur }));
      this.$router.push({ name: "OtherUserProfile" });
    },
    deleteMember() {
      alert("delete");
    },
    checkIfUserIsOwner() {
      const userId = JSON.parse(localStorage.getItem("user")).IdJoueur;
      if (userId == this.IdEquipeOwner) {
        this.isOwner = true;
      }
    },
  },
};
</script>

<style></style>
