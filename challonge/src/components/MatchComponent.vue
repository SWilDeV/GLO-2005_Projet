<template>
  <div class="mb-3">
    <div class="d-flex flex-row">
      <div class="col-sm-11">
        <b-link
          v-on:click="onClickEditMatch"
          class="text-decoration-none text-center"
        >
          <div>
            {{ NomEquipeA }} 4 {{ scoreEquipe1 }} - 3{{ scoreEquipe2 }}
            {{ NomEquipeB }}
          </div>
          <div>
            {{ dateMatch }}
          </div>
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
              v-model="form.score1"
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
              v-model="form.score2"
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
    scoreEquipe1: Number,
    scoreEquipe2: Number,
    isVisible: Boolean,
  },
  data() {
    return {
      isEditable: false,
      form: {
        score1: "",
        score2: "",
        DateDebut: "",
        Heure: "",
      },
    };
  },
  methods: {
    onClickEditMatch() {
      alert("edit match");
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

<style></style>
