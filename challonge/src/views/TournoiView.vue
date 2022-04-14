<template>
  <div><h1>Tournoi</h1></div>
</template>

<script>
import { getOneTournament } from "../apiVue.js";
export default {
  name: "TournoiView",
  data() {
    return {
      IdTournoi: "",
      tournament: "",
    };
  },
  methods: {
    getTournoiInfo() {
      this.IdTournoi = JSON.parse(localStorage.getItem("tournoi")).IdTournoi;
      console.log(this.IdTournoi);
      this.tournament = getOneTournament(localStorage.getItem("tournoi"));
      console.log(this.tournament);
    },
  },
  created() {
    this.getTournoiInfo();
  },
};
</script>

<style></style>
