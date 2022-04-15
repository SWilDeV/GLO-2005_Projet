<template>
  <div>
    <h1>Liste des Equipes</h1>
    <EquipeCard
      v-for="equipe in equipes"
      :key="equipe.IdEquipe"
      :id-equipe="equipe.IdEquipe"
      :nom-equipe="equipe.nomEquipe"
      :jeu="equipe.nomJeu"
    />
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
          console.log(this.equipes);
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
