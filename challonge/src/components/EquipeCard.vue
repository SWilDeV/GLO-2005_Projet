<template>
  <div class="card mb-3" style="max-width: 540px">
    <div class="row g-0">
      <div class="col-md-4">
        <img
          src="../assets/xbox.png"
          class="img-fluid rounded-start"
          alt="..."
        />
      </div>
      <div class="col-md-8">
        <div class="card-body">
          <h5 class="card-title">{{ NomEquipe }}</h5>

          <b-button
            class="ms-auto"
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
  props: {
    IdEquipe: Number,
    NomEquipe: String,
  },
  methods: {
    goToTeam() {
      const idEquipe = this.IdEquipe;
      localStorage.setItem("equipe", JSON.stringify({ IdEquipe: idEquipe }));
      this.$router.push({ name: "equipe" });
    },
  },
};
</script>

<style></style>
