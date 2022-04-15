<template>
  <div>
    <div class="card mb-3" style="max-width: 540px">
      <h1>Team {{ Equipe.NomEquipe }}</h1>
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
            <h4 class="card-text">Top Game: {{ Equipe.nomJeu }}</h4>
            <p class="card-text">
              <strong>Presentation:</strong> {{ Equipe.Presentation }}
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
      <h1>Joueurs</h1>
      <JoueurComponent
        v-for="joueur in Joueurs"
        :key="joueur[0]"
        :username="joueur.Username"
        :dateJoined="joueur.DateJoined"
        :avatar="joueur.Svatar"
        :ville="joueur.Ville"
      />
    </div>
    <h1>Parties inscrites</h1>
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
    <h1>Tournois</h1>
  </div>
</template>

<script>
// import EquipeComponent from "../components/EquipeComponent.vue";
import PartieComponent from "../components/PartieComponent.vue";
import JoueurComponent from "../components/JoueurComponent.vue";
import { getTeamByTeamID } from "../apiVue.js";
export default {
  name: "TeamView",
  components: {
    // EquipeComponent,
    PartieComponent,
    JoueurComponent,
  },
  data() {
    return {
      isOwner: false,
      Tournoi: "",
      Parties: "",
      Equipe: "",
      Joueurs: "",
    };
  },
  methods: {
    async getTeamInfo() {
      const team = await getTeamByTeamID(localStorage.getItem("equipe"));
      //   console.log(team);
      this.Tournoi = team.Tournoi;
      this.Parties = team.Parties;
      this.Equipe = team.Equipes;
      this.Joueurs = team.Joueurs;
      console.log(team);
      //   this.checkIfUserIsOwner();
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
  },
  created() {
    this.getTeamInfo();
  },
};
</script>

<style></style>
