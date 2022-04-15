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
          <h5 class="card-title">{{ NomTournoi }}</h5>
          <p class="card-text">Game: {{ IdGame }}</p>
          <p class="card-text">
            Equipes: Max: {{ MaxEquipe }} Min: {{ MinEquipe }}
          </p>
          <p class="card-text">
            Joueurs: Max: {{ MaxJoueur }} Min: {{ MinJoueur }}
          </p>

          <p class="card-text">
            <small class="text-muted">Debut: {{ DateDebut }}</small>
          </p>
          <b-button
            class="ms-auto"
            type="button"
            variant="primary"
            v-on:click="goToTournament"
            >Voir</b-button
          >
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
