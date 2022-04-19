<template>
  <div>
    <div class="d-flex flex-row">
      <div class="col-sm-11">
        <b-link v-on:click="goToTeam" class="text-decoration-none text-center">
          <div>{{ NomEquipe }}</div>
        </b-link>
      </div>
      <div class="col-sm-1">
        <b-button
          v-if="isVisible"
          class="px-1 py-0"
          type="button"
          variant="danger"
          v-on:click="onClickDeleteTeam"
          >x</b-button
        >
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "EquipeComponent",
  date() {
    return {
      idOwner: false,
      form: {
        IdEquipe: "",
      },
    };
  },
  props: {
    IdEquipe: Number,
    NomEquipe: String,
    jeu: String,
    logo: String,
    isVisible: Boolean,
  },
  methods: {
    goToTeam() {
      const IdEquipe = this.IdEquipe;
      localStorage.setItem("equipe", JSON.stringify({ IdEquipe: IdEquipe }));
      this.$router.push({ name: "equipe" });
    },
    onClickDeleteTeam() {
      const IdEquipe = this.IdEquipe;
      this.$emit("delete-team-from-tournament", { IdEquipe });
    },
  },
};
</script>

<style></style>
