<template>
  <div>
    <div class="card mb-3" style="max-width: 540px">
      <h1>Tournoi {{ Tournoi.nomTournoi }}</h1>
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
            <p class="card-text">Game: {{ Tournoi.IdGame }}</p>
            <p class="card-text">
              Equipes: Max: {{ Tournoi.maxEquipe }} Min:
              {{ Tournoi.minEquipe }}
            </p>
            <p class="card-text">
              Joueurs: Max: {{ Tournoi.maxJoueur }} Min: {{ Tournoi.minJoueur }}
            </p>

            <p class="card-text">
              <small class="text-muted">Debut: {{ Tournoi.dateDebut }}</small>
            </p>
            <b-button
              class="ms-auto"
              type="button"
              variant="danger"
              v-on:click="deleteTournoi"
              >Delete</b-button
            >
          </div>
        </div>
      </div>
    </div>
    <h1>Equipes Inscrites</h1>
    <EquipeComponent
      v-for="equipe in Equipes"
      :key="equipe[0]"
      :nom="equipe.nomEquipe"
      :id-equipe="equipe.idEquipe"
      :logo="equipe.logo"
    />
    <h1>Parties</h1>
    <PartieComponent
      v-for="partie in Parties"
      :key="partie[0]"
      :id-match="partie.IdMatch"
      :date-match="partie.dateMatch"
      :heure-match="partie.heureMatch"
      :id-gagnant="partie.idGagnant"
      :id-equipe1="partie.idEquipe1"
      :id-equipe2="partie.idEquipe2"
      :score-equipe-1="partie.scoreEquipe1"
      :score-equipe-2="partie.scoreEquipe2"
    />
  </div>
</template>

<script>
import EquipeComponent from "../components/EquipeComponent.vue";
import PartieComponent from "../components/PartieComponent.vue";
import { getOneTournament } from "../apiVue.js";
export default {
  name: "TournoiView",
  components: {
    EquipeComponent,
    PartieComponent,
  },
  data() {
    return {
      Tournoi: "",
      Parties: "",
      Equipes: "",
    };
  },
  methods: {
    async getTournoiInfo() {
      const tournament = await getOneTournament(
        localStorage.getItem("tournoi")
      );
      this.Tournoi = tournament.Tournoi;
      this.Parties = tournament.Parties;
      this.Equipes = tournament.Equipes;
    },
    deleteTournoi() {
      alert("Delete tournoi");
    },
  },
  created() {
    this.getTournoiInfo();
  },
};
</script>

<style></style>
