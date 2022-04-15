<template>
  <div>
    <b-navbar type="dark" variant="dark">
      <b-navbar-nav>
        <!-- Home-->
        <b-nav-item
          ><router-link to="/" class="nav-link" v-if="!isSignedIn">
            Home
          </router-link></b-nav-item
        >
      </b-navbar-nav>

      <!-- Tournois-->
      <b-navbar-nav>
        <b-nav-item-dropdown
          text="Tournois"
          class="nav-link ml-auto"
          right
          v-if="isSignedIn"
        >
          <b-dropdown-item
            ><router-link
              to="listTournaments"
              class="text-decoration-none text-reset"
            >
              Voir les tournois</router-link
            ></b-dropdown-item
          >
          <b-dropdown-item
            ><router-link
              to="/creerTournois"
              class="text-decoration-none text-reset"
            >
              Creer un tournoi</router-link
            ></b-dropdown-item
          >
        </b-nav-item-dropdown>
      </b-navbar-nav>

      <!-- Equipes-->
      <b-navbar-nav>
        <b-nav-item-dropdown
          text="Equipes"
          class="nav-link"
          right
          v-if="isSignedIn"
        >
          <b-dropdown-item
            ><router-link to="equipes" class="text-decoration-none text-reset">
              Voir les equipes</router-link
            ></b-dropdown-item
          >
          <b-dropdown-item
            ><router-link
              to="/creerTournois"
              class="text-decoration-none text-reset"
            >
              Creer une equipes</router-link
            ></b-dropdown-item
          >
        </b-nav-item-dropdown>
      </b-navbar-nav>

      <!-- User-->
      <b-navbar-nav>
        <b-nav-item
          ><a
            ><router-link to="/profile" class="nav-link" v-if="isSignedIn">
              {{ user }}
            </router-link></a
          ></b-nav-item
        >
      </b-navbar-nav>

      <!-- register-->
      <b-navbar-nav class="ms-auto">
        <b-nav-item
          ><a
            ><router-link to="/register" class="nav-link" v-if="!isSignedIn">
              Register
            </router-link></a
          ></b-nav-item
        >
      </b-navbar-nav>

      <!-- login-->
      <b-navbar-nav class="">
        <b-nav-item
          ><router-link class="nav-link" to="/login" v-if="!isSignedIn">
            Sign in
          </router-link></b-nav-item
        >
      </b-navbar-nav>

      <!-- logout-->
      <b-navbar-nav class="">
        <b-nav-item
          class="nav-link"
          v-if="isSignedIn"
          v-on:click="onLogoutClick"
          ><a>Sign out</a></b-nav-item
        >
      </b-navbar-nav>
    </b-navbar>
  </div>
</template>

<script>
export default {
  name: "NavBar",
  data() {
    return {
      user: "Utilisateur",
    };
  },
  props: {
    isSignedIn: Boolean,
    usr: String,
  },
  methods: {
    onLogoutClick() {
      localStorage.clear();
      console.log("you are logged out");
      this.$store.dispatch("changeToFalse");
      this.$router.push({ name: "home" });
    },
  },
  // mounted() {
  //   this.user = JSON.parse(localStorage.getItem("user").Username);
  // },
};
</script>

<style></style>
