<template>
  <b-form>
    <div class="row gutters-sm">
      <div class="col-sm-12 mb-3">
        <div class="card h-100">
          <div class="card-body">
            <h6 class="d-flex align-items-center mb-3">
              <i class="material-icons text-info mr-2">Ajouter des match</i>
            </h6>
            <div class="d-flex justify-content-center flex-wrap">
              <b-form-group
                id="input-group-3"
                label="Equipe 1"
                label-for="input-3"
              >
                <b-form-select v-model="form.IdEquipe1" :options="options">
                  <template #first>
                    <b-form-select-option value="" />
                  </template>
                </b-form-select>
              </b-form-group>

              <b-form-group
                id="input-group-4"
                label="Equipe 2"
                label-for="input-4"
              >
                <b-form-select v-model="form.IdEquipe2" :options="options">
                  <template #first>
                    <b-form-select-option value="" />
                  </template>
                </b-form-select>
              </b-form-group>

              <b-form-group
                id="input-group-2"
                label="* Choisissez une date:"
                label-for="input-2"
              >
                <b-form-datepicker
                  id="input-2"
                  v-model="form.DateDebut"
                  class="mb-2"
                  required
                ></b-form-datepicker>
              </b-form-group>

              <b-form-group
                id="input-group-5"
                label="* Choisissez une Heure:"
                label-for="input-5"
              >
                <b-form-timepicker
                  v-model="form.Heure"
                  locale="fr"
                ></b-form-timepicker>
              </b-form-group>

              <b-button
                type="button"
                variant="success"
                v-on:click="onClickAddMatch"
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
  name: "AjoutMatch",
  props: {
    EquipesInscrites: Array,
    IdTournoi: Number,
  },
  data() {
    return {
      form: {
        IdEquipe1: "",
        IdEquipe2: "",
        DateDebut: "",
        Heure: "",
      },
    };
  },
  computed: {
    options() {
      return this.EquipesInscrites.map((equipe) => ({
        text: equipe.nomEquipe,
        value: equipe.idEquipe,
      })).sort((a, b) => (a.text >= b.text ? 1 : -1));
    },
  },
  methods: {
    onClickAddMatch() {
      const IdEquipe1 = this.form.IdEquipe1;
      const IdEquipe2 = this.form.IdEquipe2;
      const IdTournoi = this.IdTournoi;
      const DateDebut = this.form.DateDebut;
      const Heure = this.form.Heure;
      this.$emit("add-match-to-tournament", {
        IdEquipe1,
        IdEquipe2,
        DateDebut,
        Heure,
        IdTournoi,
      });

      this.form.IdEquipe1 = "";
      this.form.IdEquipe2 = "";
      this.form.DateDebut = "";
      this.form.Heure = "";
    },
  },
};
</script>

<style></style>
