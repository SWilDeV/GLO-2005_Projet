<template>
  <div class="card mb-3" style="max-width: 540px">
    <div class="row g-0">
      <div class="col-md-4">
        <img v-bind:src="Logo" class="img-fluid rounded-start" />
      </div>
      <div class="col-md-8">
        <div class="card-body">
          <h3 class="card-title">{{ NomEquipe }}</h3>
          <h4 class="card-title">{{ jeu }}</h4>

          <b-button
            class="ms-4"
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
