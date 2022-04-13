<template>
  <div>
    <h2 class="d-flex page-header justify-content-center">Register</h2>
    <b-button type="button" variant="primary" v-on:click="test"
      >Submit</b-button
    >
    <!-- <router-link :to="{ name: 'signIn' }"
      ><b-button type="button" variant="primary" v-on:click="test"
        >Submit</b-button
      ></router-link
    > -->

    <div class="d-flex justify-content-center flex-wrap">
      <b-form @submit="onSubmit">
        <b-form-group
          id="input-group-1"
          label="* Adresse Courriel:"
          label-for="input-1"
        >
          <b-form-input
            id="input-1"
            v-model="form.courriel"
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
            v-model="form.username"
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
            v-model="form.password"
            type="password"
            placeholder="Entrez un mot de passe"
            required
          ></b-form-input>
        </b-form-group>

        <b-form-group id="input-group-4" label="Prenom:" label-for="input-4">
          <b-form-input
            id="input-4"
            v-model="form.prenom"
            placeholder="Entrez votre Prenom"
          ></b-form-input>
        </b-form-group>

        <b-form-group id="input-group-5" label="Nom:" label-for="input-5">
          <b-form-input
            id="input-5"
            v-model="form.nom"
            placeholder="Entrez votre Nom"
          ></b-form-input>
        </b-form-group>

        <b-form-group id="input-group-6" label="Ville:" label-for="input-6">
          <b-form-input
            id="input-6"
            v-model="form.ville"
            placeholder="Entrez votre Ville"
          ></b-form-input>
        </b-form-group>

        <b-button type="submit" variant="primary">Submit</b-button>
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
        username: "",
        password: "",
        courriel: "",
        prenom: "",
        nom: "",
        ville: "",
        presentation: "efwefewfwefefew",
        avatar: null,
        IdPays: 23,
      },
    };
  },
  props: {
    signedIn: Boolean,
  },
  methods: {
    async onSubmit(event) {
      event.preventDefault();
      // let res = await registerUser(JSON.stringify(this.form));
      let res = await registerUser(JSON.stringify(this.form));
      console.log(res);
      // registerUser(JSON.stringify(this.form)).then((response) => {
      //   if (response.ok) {
      //     this.$router.push({ name: "signIn" });
      //   } else {
      //     throw new Error("HTTP error " + response.status);
      //   }
      // });
      // console.log(res.username);
      // if (res.username != null) {
      //   this.$router.push({ name: "signIn" });
    },

    test() {
      this.$router.push({ name: "signIn" });
    },
  },
};
</script>

<style>
.form-control {
  font-family: Arial, Helvetica, sans-serif;
}
</style>
