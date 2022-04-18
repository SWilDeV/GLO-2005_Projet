<template>
  <div>
    <div>
      <hr />
      <div class="row">
        <div class="col-sm-10">
          <b-link v-on:click="goToOtherUserProfil" class="text-decoration-none">
            <h5>{{ username }}</h5>
          </b-link>
        </div>
        <div class="col-sm-2">
          <b-button
            v-if="isVisible"
            class="px-1 py-0"
            type="button"
            variant="danger"
            v-on:click="onClickDeleteMember"
            >x</b-button
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
    isVisible: Boolean,
  },
  created() {
    this.checkIfUserIsOwner();
  },
  methods: {
    goToOtherUserProfil() {
      const IdJoueur = this.IdJoueur;
      localStorage.setItem("OtherUser", JSON.stringify({ IdUser: IdJoueur }));
      this.$router.push({ name: "OtherUserProfile" });
    },
    checkIfUserIsOwner() {
      const userId = JSON.parse(localStorage.getItem("user")).IdJoueur;
      if (userId == this.IdEquipeOwner) {
        this.isOwner = true;
      }
    },
    onClickDeleteMember() {
      const IdUser = this.IdJoueur;
      this.$emit("delete-user-from-team", { IdUser });
    },
  },
};
</script>

<style></style>
