<template>
  <div class="container">
    <h1>Liste des Tournois</h1>
    <TournoiCard
      v-for="tournament in tournaments"
      :key="tournament.IdTournoi"
      :id-tournoi="tournament.IdTournoi"
      :date-debut="tournament.dateDebut"
      :id-game="tournament.idGame"
      :nom-game="tournament.nomJeu"
      :MaxEquipe="tournament.maxEquipe"
      :max-joueur="tournament.maxJoueur"
      :min-equipe="tournament.minEquipe"
      :min-joueur="tournament.minJoueur"
      :nom-tournoi="tournament.nomTournoi"
      :Logo="tournament.Logo"
    />
  </div>
</template>

<script>
import TournoiCard from "../components/TournoiCard.vue";
import { getTournaments } from "../apiVue.js";
export default {
  name: "TournoisListView",
  data() {
    return {
      tournaments: "",
    };
  },
  components: {
    TournoiCard,
  },
  methods: {
    getTournaments() {
      try {
        getTournaments().then((response) => {
          this.tournaments = response;
        });
      } catch (e) {
        console.log(e);
      }
    },
  },
  created() {
    this.getTournaments();
  },
};
</script>

<style scoped></style>
