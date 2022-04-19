<template>
  <div class="mb-3">
    <div class="d-flex flex-row">
      <div class="col-sm-11">
        <b-link
          v-on:click="onClickEditMatch"
          class="text-decoration-none text-center"
        >
          <h6>{{ NomTournoi }}</h6>
          <h5>
            {{ NomEquipeA }} {{ this.form.scoreEquipe1 }} -
            {{ this.form.scoreEquipe2 }}
            {{ NomEquipeB }}
          </h5>

          <p>{{ dateMatch }} : {{ heureMatch }}</p>
        </b-link>
      </div>

      <div class="col-sm-1">
        <b-button
          v-if="isVisible"
          class="p-1"
          type="button"
          variant="info"
          v-on:click="toggleEdit"
          >+</b-button
        >
      </div>
    </div>
    <template v-if="isEditable">
      <div class="my-1">
        <div class="d-flex flex-row">
          <div>
            <b-form-input
              id="input-2"
              v-model="form.scoreEquipe1"
              placeholder="score equipe 1"
              required
            ></b-form-input>
          </div>
        </div>
      </div>

      <div class="mb-1">
        <div class="d-flex flex-row">
          <div>
            <b-form-input
              id="input-3"
              v-model="form.scoreEquipe2"
              placeholder="score equipe 2"
              required
            ></b-form-input>
          </div>
        </div>
      </div>
      <b-form-group
        id="input-group-4"
        label="* Choisissez une date:"
        label-for="input-4"
      >
        <b-form-datepicker
          id="input-4"
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
        <b-form-timepicker v-model="form.Heure" locale="fr"></b-form-timepicker>
      </b-form-group>

      <b-button
        type="button"
        variant="success"
        v-on:click="onClickEditMatch"
        class="ms-auto"
        >OK</b-button
      >
    </template>
  </div>
</template>

<script>
export default {
  name: "MatchComponent",
  props: {
    NomEquipeA: String,
    NomEquipeB: String,
    dateMatch: String,
    heureMatch: String,
    NomTournoi: String,
    scoreEquipe1: Number,
    scoreEquipe2: Number,
    isVisible: Boolean,
    IdMatch: Number,
    IdEquipe1: Number,
    IdEquipe2: Number,
    IdTournoi: Number,
  },
  data() {
    return {
      isEditable: false,
      form: {
        scoreEquipe1: 0,
        scoreEquipe2: 0,
        DateDebut: "",
        Heure: "",
        IdMatch: "",
        IdEquipe1: "",
        IdEquipe2: "",
        IdTournoi: "",
      },
    };
  },
  created() {
    this.setValues();
  },
  methods: {
    setValues() {
      const DateMatch = this.dateMatch;
      const heure = this.heureMatch;
      const IdEquipe1 = this.IdEquipe1;
      const IdEquipe2 = this.IdEquipe2;
      const IdTournoi = this.IdTournoi;
      const IdMatch = this.IdMatch;
      let score1 = this.scoreEquipe1;
      let score2 = this.scoreEquipe2;
      if (this.form.Heure == "") {
        this.form.Heure = heure;
      }
      if (this.form.DateDebut == "") {
        this.form.DateDebut = DateMatch;
      }
      if (score1 != null) {
        this.form.scoreEquipe1 = score1;
      }
      if (score2 != null) {
        this.form.scoreEquipe2 = score2;
      }

      this.form.IdEquipe1 = IdEquipe1;
      this.form.IdEquipe2 = IdEquipe2;
      this.form.IdTournoi = IdTournoi;
      this.form.IdMatch = IdMatch;
    },
    onClickEditMatch() {
      if (this.isEditable) {
        const form = this.form;
        this.$emit("edit-match", { form });
        this.isEditable = false;
      }
    },
    toggleEdit() {
      if (this.isEditable == false) {
        this.isEditable = true;
      } else {
        this.isEditable = false;
      }
    },
  },
};
</script>

<style scoped>
h5,
p {
  color: rgb(40, 98, 153);
}
</style>
