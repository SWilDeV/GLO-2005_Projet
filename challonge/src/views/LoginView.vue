<template>
  <div>
    <h2 class="d-flex page-header justify-content-center">Login</h2>

    <div class="d-flex justify-content-center flex-wrap">
      <b-form>
        <b-form-group
          id="input-group-1"
          label="* Entrez un pseudo:"
          label-for="input-1"
        >
          <b-form-input
            id="input-1"
            v-model="form.Username"
            placeholder="Entrez votre pseudo"
            required
          ></b-form-input>
        </b-form-group>

        <b-form-group id="input-group-2" label="Password:" label-for="input-2">
          <b-form-input
            id="input-2"
            v-model="form.Password"
            type="password"
            placeholder="Entrez mot de passe"
            required
          ></b-form-input>
        </b-form-group>

        <b-button type="button" variant="primary" v-on:click="onSubmit"
          >Login</b-button
        >
        <h6 v-if="show">{{ message }}</h6>
      </b-form>
    </div>
  </div>
</template>

<script>
import { loginUser } from "../apiVue.js";
export default {
  name: "LoginView",
  data() {
    return {
      form: {
        Username: "sewfew",
        Password: "tyhyj7yj",
      },
      show: false,
      message: "Erreur de pseudo ou de mot de passe",
    };
  },
  methods: {
    async onSubmit() {
      loginUser(JSON.stringify(this.form)).then((response) => {
        if (response.Courriel != null) {
          localStorage.setItem("user", JSON.stringify(response));
          this.$store.dispatch("changeToTrue");
          this.$router.push({ name: "tournoisList" });
        } else {
          this.show = true;
          throw new Error("HTTP error " + response.status);
        }
      });
    },
  },
};
</script>

<style scoped>
h6 {
  color: red;
  padding-top: 10px;
}
</style>
