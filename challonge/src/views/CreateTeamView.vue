<template>
  <div>
    <h2 class="d-flex page-header justify-content-center">Creer une equipe</h2>
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
          <b-form-select :options="options" size="" class="m-1"></b-form-select>
        </b-form-group>

        <b-button
          type="button"
          variant="success"
          v-on:click="onSubmit"
          class="ms-auto"
          >Creer</b-button
        >
        {{ erreur }}
      </b-form>
    </div>
  </div>
</template>

<script>
import { CreateTournament } from "../apiVue.js";

export default {
  name: "CreateTeamView",
  data() {
    return {
      IdTournoi: "",
      erreur: null,
      form: {
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
  methods: {
    onSubmit() {
      const usrId = JSON.parse(localStorage.getItem("user")).IdJoueur;
      this.form.idOwner = usrId;

      CreateTournament(JSON.stringify(this.form)).then((response) => {
        if (response.nomTournoi != null) {
          this.IdTournoi = response.IdTournoi;
          this.goToTournament();
        } else {
          this.erreur = response;
          throw new Error("HTTP error " + response.status);
        }
      });
    },
    test() {
      this.form.nomTournoi = "lololss";
      this.form.dateDebut = "2023-12-15";
      this.form.minEquipe = 4;
      this.form.maxEquipe = 10;
      this.form.minJoueur = 3;
      this.form.maxJoueur = 67;
      this.form.idOwner = 455729826;
      this.form.idGame = 5;

      CreateTournament(JSON.stringify(this.form)).then((response) => {
        if (response.nomTournoi != null) {
          this.IdTournoi = response.IdTournoi;
          this.goToTournament();
        } else {
          this.erreur = response;
          throw new Error("HTTP error " + response.status);
        }
      });
    },
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
