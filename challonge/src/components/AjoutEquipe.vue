<template>
  <b-form>
    <div class="row gutters-sm">
      <div class="col-sm-12">
        <div class="card h-100">
          <div class="card-body">
            <h6 class="d-flex align-items-center mb-3">
              <i class="material-icons text-info mr-2">Ajouter des equipes</i>
            </h6>
            <div class="d-flex justify-content-center flex-wrap">
              <b-form-group
                id="input-group-3"
                label="Choisir une equipe"
                label-for="input-7"
              >
                <b-form-select v-model="form.IdEquipe" :options="options">
                  <template #first>
                    <b-form-select-option value="" />
                  </template>
                </b-form-select>
              </b-form-group>

              <b-button
                type="button"
                variant="success"
                v-on:click="onClickAddTeam"
                class="ms-auto"
                >Ajouter</b-button
              >
            </div>
          </div>
        </div>
      </div>
    </div>
  </b-form>
</template>

<script>
export default {
  name: "AjoutEquipe",
  props: {
    AllTeams: Array,
    EquipesInscrites: Array,
    IdTournoi: Number,
  },
  data() {
    return {
      selected: "",
      form: {
        IdEquipe: "",
      },
    };
  },
  computed: {
    options() {
      return this.AllTeams.filter((item) =>
        this.EquipesInscrites.every((res) => res.id !== item.id)
      )
        .map((equipe) => ({
          text: equipe.name,
          value: equipe.id,
        }))
        .sort((a, b) => (a.text >= b.text ? 1 : -1));
    },
  },
  methods: {
    onClickAddTeam() {
      const IdEquipe = this.form.IdEquipe;
      const IdTournoi = this.IdTournoi;
      this.$emit("add-team-to-tournament", { IdEquipe, IdTournoi });

      this.form.IdEquipe = "";
    },
  },
};
</script>

<style></style>
