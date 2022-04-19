<template>
  <div>
    <div class="row">
      <b-link v-on:click="goToTournoi" class="text-decoration-none">
        <div class="col-sm-11">{{ NomTournoi }}-> {{ NomJeu }}</div>
      </b-link>
    </div>
  </div>
</template>

<script>
export default {
  name: "TournoiComponent",
  props: {
    IdTournoi: Number,
    NomTournoi: String,
    NomJeu: String,
    logo: String,
  },
  methods: {
    goToTournoi() {
      const IdTournoi = this.IdTournoi;
      localStorage.setItem("tournoi", JSON.stringify({ IdTournoi: IdTournoi }));
      this.$router.push({ name: "tournoi" });
    },
  },
};
</script>

<style></style>
