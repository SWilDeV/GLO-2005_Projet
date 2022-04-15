<template>
  <div class="home">
    <div class="jumbotron text-center">
      <h1>Mata Tournois</h1>
      <p class="lead">Bienvenue sur Mata Tournois</p>
      <div>
        <a class="btn btn-primary">Register</a>
        <a class="btn btn-danger">Login</a>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "HomeView",
  components: {},
  data() {
    return {
      UtilisateurData: "",
    };
  },
  created() {
    this.signedInStatus();
  },
  methods: {
    signedInStatus() {
      try {
        if (localStorage.getItem("user") != null) {
          this.$store.dispatch("changeToTrue");
        } else {
          this.$store.dispatch("changeToFalse");
        }
      } catch (e) {
        console.log(e);
      }
    },
  },
};
</script>

<style scoped>
.home {
  position: fixed;
  color: white;
  width: 100%;
  height: 100%;
  background-size: cover;
  background-image: url(https://c4.wallpaperflare.com/wallpaper/717/34/508/ice-and-fire-fists-digital-art-fire-wallpaper-preview.jpg);
}
</style>
