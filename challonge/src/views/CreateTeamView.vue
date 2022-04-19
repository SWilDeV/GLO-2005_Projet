<template>
  <div>
    <h2 class="d-flex page-header justify-content-center">Creer une equipe</h2>
    <!-- <b-button type="button" variant="primary" v-on:click="test">Test</b-button> -->
    <!-- NomEquipe 
        Presentation
        Logo 
        IdOwner  
        IdPays 
        IdGame  -->

    <div class="d-flex justify-content-center flex-wrap">
      <b-form>
        <b-form-group
          id="input-group-1"
          label="* Nom de l'equipe:"
          label-for="input-1"
        >
          <b-form-input
            v-model="form.NomEquipe"
            id="input-1"
            type="email"
            placeholder="Entrez un nom d'equipe'"
            required
          ></b-form-input>
        </b-form-group>

        <b-form-group
          id="input-group-2"
          label="Presentation:"
          label-for="input-2"
        >
          <b-form-input
            v-model="form.Presentation"
            id="input-2"
            type="email"
            required
          ></b-form-input>
        </b-form-group>

        <b-form-group
          id="input-group-3"
          label="* Indiquez votre pays:"
          label-for="input-7"
        >
          <b-form-select
            v-model="form.IdPays"
            :options="options2"
            size=""
            class="m-1"
          ></b-form-select>
        </b-form-group>

        <b-form-group
          id="input-group-7"
          label="* Choisissez le jeu:"
          label-for="input-7"
        >
          <b-form-select
            v-model="form.IdGame"
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
          >Creer</b-button
        >
        {{ erreur }}
      </b-form>
    </div>
  </div>
</template>

<script>
import { CreateTeam } from "../apiVue.js";

export default {
  name: "CreateTeamView",
  data() {
    return {
      IdEquipe: "",
      erreur: null,
      form: {
        NomEquipe: "",
        Presentation: "",
        Logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Xbox_one_logo.svg/768px-Xbox_one_logo.svg.png",
        IdPays: "",
        IdOwner: "",
        IdGame: null,
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
      options2: [
        { value: null, text: "Please select an option" },
        { value: "1", text: "France" },
        { value: "2", text: "Japon" },
        { value: "3", text: "Espagne" },
        { value: "4", text: "Italie" },
        { value: "5", text: "Canada" },
        { value: "6", text: "Allemagne" },
        { value: "7", text: "Russie" },
        { value: "8", text: "Chine" },
        { value: "9", text: "Corée" },
      ],
    };
  },
  methods: {
    onSubmit() {
      const usrId = JSON.parse(localStorage.getItem("user")).IdJoueur;
      this.form.IdOwner = usrId;

      CreateTeam(JSON.stringify(this.form)).then((response) => {
        if (response.IdEquipe != null) {
          this.IdEquipe = response.IdEquipe;
          this.goToTeam();
        } else {
          this.erreur = response;
          throw new Error("HTTP error " + response.status);
        }
      });
    },
    test() {
      this.form.NomEquipe = "TeamRocket";
      this.form.Presentation = "Bonjour";
      this.form.Logo = "None";
      this.form.IdPays = 3;
      this.form.IdOwner = 688096387;
      this.form.IdGame = 4;

      CreateTeam(JSON.stringify(this.form)).then((response) => {
        console.log(response);
        if (response != null) {
          this.IdEquipe = response.IdEquipe;
        } else {
          this.erreur = response;
          throw new Error("HTTP error " + response.status);
        }
      });
    },
    goToTeam() {
      const IdEquipe = this.IdEquipe;
      localStorage.setItem("equipe", JSON.stringify({ IdEquipe: IdEquipe }));
      this.$router.push({ name: "equipe" });
    },
  },
};
</script>

<style></style>
