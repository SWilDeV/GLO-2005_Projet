<template>
  <div>
    <h2 class="d-flex page-header justify-content-center">
      Modifier un tournoi
    </h2>
    <!-- <b-button type="button" variant="primary" v-on:click="test">Test</b-button> -->

    <div class="d-flex justify-content-center flex-wrap">
      <b-form>
        <b-form-group
          id="input-group-1"
          label="* Nom du Tournoi:"
          label-for="input-1"
        >
          <b-form-input
            id="input-1"
            v-model="form.nomTournoi"
            type="email"
            placeholder="Entrez un nom de tournoi"
            required
          ></b-form-input>
        </b-form-group>

        <b-form-group
          id="input-group-2"
          label="* Choisissez une date:"
          label-for="input-2"
        >
          <b-form-datepicker
            id="input-2"
            v-model="form.dateDebut"
            class="mb-2"
            required
          ></b-form-datepicker>
        </b-form-group>

        <b-form-group
          id="input-group-3"
          label="* Nombre d'equipes minimal:"
          label-for="input-3"
        >
          <b-form-spinbutton
            id="input-3"
            v-model="form.minEquipe"
            min="1"
            max="10"
            required
          ></b-form-spinbutton>
        </b-form-group>

        <b-form-group
          id="input-group-4"
          label="* Nombre d'equipes maximal:"
          label-for="input-4"
        >
          <b-form-spinbutton
            id="input-4"
            v-model="form.maxEquipe"
            min="2"
            max="10"
            required
          ></b-form-spinbutton>
        </b-form-group>

        <b-form-group
          id="input-group-5"
          label="* Nombre de joueurs minimal:"
          label-for="input-5"
        >
          <b-form-spinbutton
            id="input-5"
            v-model="form.minJoueur"
            min="2"
            max="100"
            required
          ></b-form-spinbutton>
        </b-form-group>

        <b-form-group
          id="input-group-6"
          label="* Nombre de joueurs maximal:"
          label-for="input-6"
        >
          <b-form-spinbutton
            id="input-6"
            v-model="form.maxJoueur"
            min="2"
            max="100"
            required
          ></b-form-spinbutton>
        </b-form-group>

        <b-form-group
          id="input-group-7"
          label="* Choisissez le jeu:"
          label-for="input-7"
        >
          <b-form-select
            v-model="form.idGame"
            :options="options"
            size=""
            class="m-1"
          ></b-form-select>
        </b-form-group>

        <b-button
          type="button"
          variant="success"
          v-on:click="onSubmit"
          class="ms-auto"
          >Modifier</b-button
        >
        {{ erreur }}
      </b-form>
    </div>
  </div>
</template>

<script>
import { getOneTournament, UpdateTournament } from "../apiVue.js";
export default {
  name: "CreateTournoiView",
  data() {
    return {
      IdTournoi: "",
      erreur: null,
      form: {
        IdTournoi: "",
        nomTournoi: "",
        dateDebut: "",
        minEquipe: null,
        maxEquipe: null,
        minJoueur: null,
        maxJoueur: null,
        idOwner: "",
        idGame: null,
      },
      options: [
        { value: null, text: "Please select an option" },
        { value: "1", text: "Minecraft" },
        { value: "2", text: "Overwatch" },
        { value: "3", text: "League Of Legends" },
        { value: "4", text: "Counter Strike" },
        { value: "5", text: "World Of Warcraft" },
        { value: "6", text: "Fortnite" },
        { value: "7", text: "Apex Legends" },
        { value: "8", text: "Valorant" },
        { value: "9", text: "Echecs" },
      ],
    };
  },
  created() {
    this.getTournamentInfo();
  },
  methods: {
    onSubmit() {
      UpdateTournament(JSON.stringify(this.form)).then((response) => {
        if (response.IdTournoi != null) {
          this.$router.push({ name: "tournoi" });
        } else {
          this.erreur = response;
          throw new Error("HTTP error " + response.status);
        }
      });
    },
    getTournamentInfo() {
      const IdTournoi = JSON.parse(localStorage.getItem("tournoi"));
      this.form.IdTournoi = IdTournoi.IdTournoi;
      getOneTournament(JSON.stringify(IdTournoi)).then((response) => {
        if (response.Tournoi != null) {
          this.form.nomTournoi = response.Tournoi.nomTournoi;
          this.form.dateDebut = response.Tournoi.dateDebut;
          this.form.minEquipe = response.Tournoi.minEquipe;
          this.form.maxEquipe = response.Tournoi.maxEquipe;
          this.form.minJoueur = response.Tournoi.minJoueur;
          this.form.maxJoueur = response.Tournoi.maxJoueur;
          this.form.idOwner = response.Tournoi.IdOwner;
          this.form.idGame = response.Tournoi.IdGame;
        } else {
          this.erreur = response;
          throw new Error("HTTP error " + response.status);
        }
      });
    },
  },
};
</script>
<style></style>
