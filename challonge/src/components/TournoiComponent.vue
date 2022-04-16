<template>
  <div>
    <div class="row">
      <div class="col-sm-11">{{ NomTournoi }}-> {{ NomJeu }}</div>
      <div class="col-sm-1">
        <b-button
          class="p-1"
          type="button"
          variant="primary"
          v-on:click="goToTournoi"
          >+</b-button
        >
      </div>
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
