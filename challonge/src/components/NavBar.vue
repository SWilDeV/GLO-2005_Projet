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

        <!-- Tournois-->
        <b-nav-item-dropdown
          text="Tournois"
          class="nav-link"
          right
          v-if="isSignedIn"
        >
          <b-dropdown-item
            ><router-link
              to="/tournois"
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

        <!-- User-->
        <b-nav-item-dropdown
          text="User"
          class="nav-link"
          right
          v-if="isSignedIn"
        >
          <b-dropdown-item
            ><router-link to="/profile" class="text-decoration-none text-reset">
              Profile
            </router-link></b-dropdown-item
          >
          <b-dropdown-item href="#"
            ><router-link
              to="/profileSettings"
              class="text-decoration-none text-reset"
            >
              Settings
            </router-link></b-dropdown-item
          >
        </b-nav-item-dropdown>

        <!-- register-->
        <b-nav-item
          ><a
            ><router-link to="/register" class="nav-link" v-if="!isSignedIn">
              Register
            </router-link></a
          ></b-nav-item
        >
        <!-- login-->
        <b-nav-item
          ><router-link to="/signIn" class="nav-link" v-if="!isSignedIn">
            Sign in
          </router-link></b-nav-item
        >
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
  props: {
    isSignedIn: Boolean,
  },
  methods: {
    onLogoutClick() {
      localStorage.clear();
      console.log("you are logged out");
      this.$router.push({ name: "home" });
    },
  },
};
</script>

<style></style>
