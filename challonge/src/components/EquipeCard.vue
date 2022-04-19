<template>
  <div class="card shadow sm-4 m-3" style="max-width: 20rem">
    <div class="col">
      <div class="card">
        <img v-bind:src="Logo" class="card-img-top" />
      </div>
      <div class="col-sm-12">
        <div class="card-body d-flex justify-content-between">
          <div>
            <h3 class="card-title">{{ NomEquipe }}</h3>
            <h4 class="card-title">{{ jeu }}</h4>
          </div>
        </div>
        <div>
          <b-button
            class="d-flex justify-content-between m-1"
            style="max-height: 3rem"
            type="button"
            variant="primary"
            v-on:click="goToTeam"
            >En savoir plus</b-button
          >
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "EquipeCard",
  data() {
    return {};
  },
  props: {
    IdEquipe: Number,
    NomEquipe: String,
    jeu: String,
    Logo: String,
  },
  methods: {
    goToTeam() {
      const IdEquipe = this.IdEquipe;
      localStorage.setItem("equipe", JSON.stringify({ IdEquipe: IdEquipe }));
      this.$router.push({ name: "equipe" });
    },
  },
};
</script>

<style></style>
