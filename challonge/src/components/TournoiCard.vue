<template>
  <div class="card shadow p-3 mb-5 rounded hover">
    <div class="card">
      <div class="row">
        <div class="col-md-2">
          <img
            src="../assets/xbox.png"
            class="img-fluid rounded-start"
            alt="..."
          />
        </div>
        <div class="col-md-10">
          <div class="card-body row">
            <div>
              <h3 class="card-title col-md-4">{{ NomTournoi }}</h3>
              <h4 class="card-text">{{ NomGame }}</h4>
            </div>
            <div class="card-text col-md-4">
              <p>
                <small class="text-muted">Debut: {{ DateDebut }}</small>
              </p>
            </div>
            <div class="card-text col-md-4">
              <b-button
                class="ms-auto"
                type="button"
                variant="primary"
                v-on:click="goToTournament"
                >En savoir plus</b-button
              >
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "TournoiCard",
  props: {
    IdTournoi: Number,
    DateDebut: String,
    IdGame: Number,
    NomGame: String,
    MaxEquipe: Number,
    MaxJoueur: Number,
    MinEquipe: Number,
    MinJoueur: Number,
    NomTournoi: String,
  },
  methods: {
    goToTournament() {
      const idTournament = this.IdTournoi;
      localStorage.setItem(
        "tournoi",
        JSON.stringify({ IdTournoi: idTournament })
      );
      this.$router.push({ name: "tournoi" });
    },
  },
};
</script>

<style></style>
