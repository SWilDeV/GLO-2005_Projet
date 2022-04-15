<template>
  <div>
    <h1>Infos Equipe</h1>
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
    <h1>Joueurs</h1>
  </div>
</template>

<script>
// import EquipeComponent from "../components/EquipeComponent.vue";
import PartieComponent from "../components/PartieComponent.vue";
import { getTeamByTeamID } from "../apiVue.js";
export default {
  name: "TeamView",
  components: {
    // EquipeComponent,
    PartieComponent,
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
      console.log(team);
      this.Tournoi = team.Tournoi;
      this.Parties = team.Parties;
      this.Equipe = team.Equipes;
      this.Joueurs = team.Joueurs;
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
