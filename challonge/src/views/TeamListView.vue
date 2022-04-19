<template>
  <div class="container">
    <h1>Liste des Equipes</h1>
    <div class="row row-cols-1 row-cols-md-3 p-5 m-5 g-5">
      <EquipeCard
        v-for="equipe in equipes"
        :key="equipe.IdEquipe"
        :id-equipe="equipe.IdEquipe"
        :nom-equipe="equipe.nomEquipe"
        :jeu="equipe.nomJeu"
        :Logo="equipe.Logo"
      />
    </div>
  </div>
</template>

<script>
import EquipeCard from "../components/EquipeCard.vue";
import { getTeams } from "../apiVue.js";
export default {
  name: "TournoisListView",
  data() {
    return {
      equipes: "",
    };
  },
  components: {
    EquipeCard,
  },
  methods: {
    getEquipes() {
      try {
        getTeams().then((response) => {
          this.equipes = response;
        });
      } catch (e) {
        console.log(e);
      }
    },
  },
  created() {
    this.getEquipes();
  },
};
</script>

<style scoped></style>
