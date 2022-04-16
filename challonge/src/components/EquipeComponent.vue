<template>
  <div>
    <div class="row">
      <div class="col-sm-11">
        {{ NomEquipe }}
      </div>
      <div class="col-sm-1">
        <b-button
          class="p-1"
          type="button"
          variant="primary"
          v-on:click="goToTeam"
          >+</b-button
        >
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "EquipeComponent",
  props: {
    IdEquipe: Number,
    NomEquipe: String,
    jeu: String,
    logo: String,
  },
  methods: {
    goToTeam() {
      const IdEquipe = this.IdEquipe;
      localStorage.setItem("equipe", JSON.stringify({ IdEquipe: IdEquipe }));
      this.$router.push({ name: "equipe" });
    },
  },
};
</script>

<style></style>
