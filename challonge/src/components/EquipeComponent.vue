<template>
  <div>
    <!-- <div class="card mb-3" style="max-width: 540px">
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
            <h5 class="card-title">{{ nomEquipe }}</h5>
          </div>
        </div>
        <b-button
          class="ms-auto"
          type="button"
          variant="primary"
          v-on:click="goToTeam"
          >Voir</b-button
        >
      </div>
    </div> -->
    <div class="row">
      <div class="col-sm-11">
        {{ NomEquipe }}
      </div>
      <div class="col-sm-1">
        <b-button
          class="p-1"
          type="button"
          variant="primary"
          v-on:click="goToTeam"
          >+</b-button
        >
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "EquipeComponent",
  props: {
    IdEquipe: Number,
    NomEquipe: String,
    jeu: String,
    logo: String,
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
