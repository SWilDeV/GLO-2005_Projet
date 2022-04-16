<template>
  <div>
    <div class="mb-3" style="max-width: 540px">
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
            <h3 class="card-text">{{ Tournoi.nomJeu }}</h3>
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
              v-if="isOwner"
              class="ms-auto"
              type="button"
              variant="danger"
              v-on:click="deleteTournoi"
              >Supprimer</b-button
            >
            <b-button
              v-if="isOwner"
              class="ms-auto"
              type="button"
              variant="primary"
              v-on:click="editTournoi"
              >Editer</b-button
            >
          </div>
        </div>
      </div>
    </div>
    <div class="" style="max-width: 400px">
      <div class="row g-0">
        <h1 class="col-md-10">Equipes Inscrites</h1>
        <div class="col-md-2">
          <b-button v-if="isOwner" variant="success" v-on:click="addTeam"
            >+</b-button
          >
        </div>
      </div>

      <EquipeCard
        v-for="equipe in Equipes"
        :key="equipe[0]"
        :nom-equipe="equipe.nomEquipe"
        :id-equipe="equipe.idEquipe"
        :logo="equipe.Logo"
      />
    </div>
    <div class="" style="max-width: 400px">
      <div class="row g-0">
        <h1 class="col-md-10">Match</h1>
        <div class="col-md-2">
          <b-button v-if="isOwner" variant="success" v-on:click="addMatch"
            >+</b-button
          >
        </div>
      </div>
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
  </div>
</template>

<script>
import EquipeCard from "../components/EquipeCard.vue";
import PartieComponent from "../components/PartieComponent.vue";
import { getOneTournament } from "../apiVue.js";
export default {
  name: "TournoiView",
  components: {
    EquipeCard,
    PartieComponent,
  },
  data() {
    return {
      isOwner: false,
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
      this.checkIfUserIsOwner();
    },
    deleteTournoi() {
      alert("Delete tournoi");
    },
    editTournoi() {
      // const userId = JSON.parse(localStorage.getItem("tournoi")).IdTournoi;
      this.$router.push({ name: "editTournoi" });
    },
    checkIfUserIsOwner() {
      const userId = JSON.parse(localStorage.getItem("user")).IdJoueur;
      if (userId == this.Tournoi.IdOwner) {
        this.isOwner = true;
      }
    },
    addTeam() {
      alert(this.Tournoi.IdTournoi);
    },
    addMatch() {
      alert("newMatch");
    },
  },
  created() {
    this.getTournoiInfo();
  },
};
</script>

<style></style>
