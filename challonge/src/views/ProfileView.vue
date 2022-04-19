<template>
  <div>
    <div class="container">
      <div class="main-body">
        <div class="row gutters-sm">
          <div class="col-md-4 mb-3">
            <div class="card">
              <div class="card-body">
                <div class="d-flex flex-column align-items-center text-center">
                  <img
                    src="../assets/avatar7.png"
                    alt="Admin"
                    class="rounded-circle"
                    width="150"
                  />
                  <div class="mt-3">
                    <h4>{{ user.Username }}</h4>
                    <p class="text-muted font-size-sm">
                      {{ user.Ville }}, {{ user.NomPays }}
                    </p>
                    <p class="text-secondary mb-1">
                      {{ user.Presentation }}
                    </p>
                  </div>
                  <div class="row">
                    <div class="col-sm-12">
                      <b-button
                        class="ms-auto"
                        type="button"
                        variant="info"
                        v-on:click="toggleEdit"
                        >Edit</b-button
                      >
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="col-md-12 mb-3 mt-1">
              <div class="row gutters-sm">
                <div class="col-sm-12 mb-3">
                  <div class="col-sm-12 mb-3">
                    <b-form>
                      <b-form-group
                        v-if="isVisible"
                        id="input-group-4"
                        label="Prenom:"
                        label-for="input-4"
                      >
                        <b-form-input
                          v-model="form.Prenom"
                          id="input-4"
                        ></b-form-input>
                      </b-form-group>

                      <b-form-group
                        v-if="isVisible"
                        id="input-group-5"
                        label="Nom:"
                        label-for="input-5"
                      >
                        <b-form-input
                          v-model="form.Nom"
                          id="input-5"
                        ></b-form-input>
                      </b-form-group>

                      <b-form-group
                        v-if="isVisible"
                        id="input-group-6"
                        label="Ville:"
                        label-for="input-6"
                      >
                        <b-form-input
                          v-model="form.Ville"
                          id="input-6"
                        ></b-form-input>
                      </b-form-group>

                      <b-form-group
                        v-if="isVisible"
                        id="input-group-8"
                        label="Pays:"
                        label-for="input-7"
                      >
                        <b-form-select
                          :options="options2"
                          size=""
                          v-model="form.IdPays"
                          class="m-1"
                        ></b-form-select>
                      </b-form-group>

                      <b-form-group
                        v-if="isVisible"
                        id="input-group-7"
                        label="Presentation:"
                        label-for="input-6"
                      >
                        <b-form-input
                          v-model="form.Presentation"
                          id="input-7"
                        ></b-form-input>
                      </b-form-group>

                      <b-button
                        v-if="isVisible"
                        type="button"
                        class="mt-2"
                        variant="success"
                        v-on:click="onSubmit"
                        >OK</b-button
                      >
                    </b-form>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-md-8">
            <div class="card mb-3">
              <div class="card-body">
                <div class="row">
                  <div class="col-sm-3">
                    <h6 class="mb-0">UserName</h6>
                  </div>
                  <div class="col-sm-9 text-secondary">
                    {{ user.Username }}
                  </div>
                </div>
                <hr />
                <div class="row">
                  <div class="col-sm-3">
                    <h6 class="mb-0">Email</h6>
                  </div>
                  <div class="col-sm-9 text-secondary">
                    {{ user.Courriel }}
                  </div>
                </div>
                <hr />
                <div class="row">
                  <div class="col-sm-3">
                    <h6 class="mb-0">Nom</h6>
                  </div>
                  <div class="col-sm-9 text-secondary">
                    {{ user.Prenom }} {{ user.Nom }}
                  </div>
                </div>
                <hr />
                <div class="row">
                  <div class="col-sm-3">
                    <h6 class="mb-0">Pays</h6>
                  </div>
                  <div class="col-sm-9 text-secondary">
                    {{ user.NomPays }}
                  </div>
                </div>
                <hr />
                <div class="row">
                  <div class="col-sm-3">
                    <h6 class="mb-0">Inscrit le:</h6>
                  </div>
                  <div class="col-sm-9 text-secondary">
                    {{ user.DateJoined }}
                  </div>
                </div>
              </div>
            </div>

            <div class="row gutters-sm">
              <div class="col-sm-4 mb-3">
                <div class="card h-100">
                  <div class="card-body">
                    <h6 class="d-flex align-items-center mb-3">
                      <i class="material-icons text-info mr-2"
                        >Tournois inscrits</i
                      >
                    </h6>

                    <div>
                      <TournoiComponent
                        class="card h-100 m-1"
                        v-for="tournoi in Tournois"
                        :key="tournoi.IdTournoi"
                        :nom-tournoi="tournoi.nomTournoi"
                        :IdTournoi="tournoi.IdTournoi"
                        :nom-jeu="tournoi.nomJeu"
                      />
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-sm-4 mb-3">
                <div class="card h-100">
                  <div class="card-body">
                    <h6 class="d-flex align-items-center mb-3">
                      <i class="material-icons text-info mr-2"
                        >Equipes dont je fais parti</i
                      >
                    </h6>

                    <div>
                      <EquipeComponent
                        class="card h-100 m-1"
                        v-for="equipe in Equipes"
                        :key="equipe.IdEquipe"
                        :nom-equipe="equipe.NomEquipe"
                        :IdEquipe="equipe.IdEquipe"
                      />
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-sm-4 mb-3">
                <div class="card h-100">
                  <div class="card-body">
                    <h6 class="d-flex align-items-center mb-3">
                      <i class="material-icons text-info mr-2">Matchs</i>
                    </h6>
                    <div class="mb-3">
                      <MatchComponent
                        class="card h-100 m-1"
                        v-for="match in Parties"
                        :key="match.IdMatch"
                        :NomEquipeA="match.nomEquipe1"
                        :NomEquipeB="match.nomEquipe2"
                        :NomTournoi="match.nomTournoi"
                        :dateMatch="match.dateMatch"
                        :heureMatch="match.heureMatch"
                        :scoreEquipe1="match.scoreEquipe1"
                        :scoreEquipe2="match.scoreEquipe2"
                        :IdEquipe1="match.idEquipe1"
                        :IdEquipe2="match.idEquipe2"
                        :IdTournoi="match.idTournoi"
                      />
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import EquipeComponent from "../components/EquipeComponent.vue";
import MatchComponent from "../components/MatchComponent.vue";
import TournoiComponent from "../components/TournoiComponent.vue";
import { getUserDataByUserID, EditUser } from "../apiVue.js";
export default {
  name: "ProfileView",
  components: {
    EquipeComponent,
    MatchComponent,
    TournoiComponent,
  },
  data() {
    return {
      isVisible: false,
      user: "",
      Parties: "",
      Equipes: "",
      Tournois: "",
      form: {
        Nom: "",
        Prenom: "",
        Ville: "",
        IdPays: "",
        Presentation: "",
        IdJoueur: "",
      },
      options2: [
        { value: null, text: "Please select an option" },
        { value: "1", text: "France" },
        { value: "2", text: "Japon" },
        { value: "3", text: "Espagne" },
        { value: "4", text: "Italie" },
        { value: "5", text: "Canada" },
        { value: "6", text: "Allemagne" },
        { value: "7", text: "Russie" },
        { value: "8", text: "Chine" },
        { value: "9", text: "Corée" },
      ],
    };
  },
  async created() {
    const user = JSON.parse(localStorage.getItem("user")).IdJoueur;
    const userObj = { IdUser: user };
    await getUserDataByUserID(userObj).then((response) => {
      if (response.User != null) {
        this.user = response.User;
        this.Parties = response.Parties;
        this.Equipes = response.Equipes;
        this.Tournois = response.Tournois;
      }
    });
  },
  methods: {
    async onSubmit() {
      try {
        this.form.IdJoueur = this.user.IdJoueur;
        await EditUser(this.form);
        this.$router.go();
      } catch (e) {
        console.error(e);
      }
    },
    toggleEdit() {
      if (this.isVisible == false) {
        this.isVisible = true;
      } else {
        this.isVisible = false;
      }
    },
  },
};
</script>

<style scoped>
body {
  margin-top: 20px;
  color: #1a202c;
  text-align: left;
  background-color: #e2e8f0;
}
.main-body {
  padding: 15px;
}
.card {
  box-shadow: 0 1px 3px 0 rgba(0, 0, 0, 0.1), 0 1px 2px 0 rgba(0, 0, 0, 0.06);
}

.card {
  position: relative;
  display: flex;
  flex-direction: column;
  min-width: 0;
  word-wrap: break-word;
  background-color: #fff;
  background-clip: border-box;
  border: 0 solid rgba(0, 0, 0, 0.125);
  border-radius: 0.25rem;
}

.card-body {
  flex: 1 1 auto;
  min-height: 1px;
  padding: 1rem;
}

.gutters-sm {
  margin-right: -8px;
  margin-left: -8px;
}

.gutters-sm > .col,
.gutters-sm > [class*="col-"] {
  padding-right: 8px;
  padding-left: 8px;
}
.mb-3,
.my-3 {
  margin-bottom: 1rem !important;
}

.bg-gray-300 {
  background-color: #e2e8f0;
}
.h-100 {
  height: 100% !important;
}
.shadow-none {
  box-shadow: none !important;
}
</style>
