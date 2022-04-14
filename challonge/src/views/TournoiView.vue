<template>
  <div>
    <h1>Tournoi</h1>
    <b-button type="button" variant="primary" v-on:click="getTournoiInfo"
      >Submit</b-button
    >
  </div>
</template>

<script>
import { getOneTournament } from "../apiVue.js";
export default {
  name: "TournoiView",
  data() {
    return {
      IdTournoi: "",
      tournoi: "",
      Parties: "",
      Equipes: "",
    };
  },
  methods: {
    async getTournoiInfo() {
      const tournament = await getOneTournament(
        localStorage.getItem("tournoi")
      );
      this.tournoi = tournament.Tournoi;
      this.Parties = tournament.Parties;
      this.Equipes = tournament.Equipes;
      console.log(tournament);
    },
  },
  created() {
    this.getTournoiInfo();
  },
};
</script>

<style></style>
