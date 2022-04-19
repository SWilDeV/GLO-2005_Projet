<template>
  <div>
    <h2 class="d-flex page-header justify-content-center">Inscription</h2>

    <div class="d-flex justify-content-center flex-wrap">
      <b-form @submit="onSubmit">
        <b-form-group
          id="input-group-1"
          label="* Adresse Courriel:"
          label-for="input-1"
        >
          <b-form-input
            id="input-1"
            v-model="form.Courriel"
            type="email"
            placeholder="Entrez votre Courriel"
            required
          ></b-form-input>
        </b-form-group>

        <b-form-group
          id="input-group-2"
          label="* Choisissez un pseudo:"
          label-for="input-2"
        >
          <b-form-input
            id="input-2"
            v-model="form.Username"
            placeholder="Entrez un pseudo"
            required
          ></b-form-input>
        </b-form-group>

        <b-form-group
          id="input-group-3"
          label="* Mot de passe:"
          label-for="input-3"
        >
          <b-form-input
            id="input-3"
            v-model="form.Password"
            type="password"
            placeholder="Entrez un mot de passe"
            required
          ></b-form-input>
        </b-form-group>

        <b-form-group id="input-group-4" label="Prenom:" label-for="input-4">
          <b-form-input
            id="input-4"
            v-model="form.Prenom"
            placeholder="Entrez votre Prenom"
          ></b-form-input>
        </b-form-group>

        <b-form-group id="input-group-5" label="Nom:" label-for="input-5">
          <b-form-input
            id="input-5"
            v-model="form.Nom"
            placeholder="Entrez votre Nom"
          ></b-form-input>
        </b-form-group>

        <b-form-group id="input-group-6" label="Ville:" label-for="input-6">
          <b-form-input
            id="input-6"
            v-model="form.Ville"
            placeholder="Entrez votre Ville"
          ></b-form-input>
        </b-form-group>

        <b-form-group
          id="input-group-8"
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
          label="Presentation:"
          label-for="input-6"
        >
          <b-form-input
            id="input-7"
            v-model="form.Presentation"
            placeholder="Decrivez vous en qq mots..."
          ></b-form-input>
        </b-form-group>

        <b-button
          type="button"
          class="mt-2"
          variant="primary"
          v-on:click="onSubmit"
          >M'inscrire</b-button
        >
      </b-form>
    </div>
  </div>
</template>

<script>
import { registerUser } from "../apiVue.js";
export default {
  name: "RegisterView",
  data() {
    return {
      form: {
        Username: "",
        Password: "",
        Courriel: "",
        Prenom: "",
        Nom: "",
        Ville: "",
        Presentation: "",
        Avatar: null,
        IdPays: null,
      },
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
      ]
    };
  },
  props: {
    signedIn: Boolean,
  },
  methods: {
    async onSubmit() {
      registerUser(JSON.stringify(this.form)).then((response) => {
        if (response.Courriel != null) {
          localStorage.setItem("user", JSON.stringify(response));
          this.$store.dispatch("changeToTrue");
          this.$router.push({ name: "tournoisList" });
        } else {
          throw new Error("HTTP error " + response.status);
        }
      });
    },
  },
};
</script>

<style>
.form-control {
  font-family: Arial, Helvetica, sans-serif;
}
</style>
