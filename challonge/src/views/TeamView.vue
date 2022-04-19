<template>
  <div>
    <div>
      <div class="container mt-4">
        <div class="main-body">
          <h1 class="d-flex flex-column align-items-center text-center">
            Equipe
          </h1>
          <div class="row gutters-sm">
            <div class="col-md-4 mb-3">
              <div class="card">
                <div class="card-body">
                  <div
                    class="d-flex flex-column align-items-center text-center"
                  >
                    <img
                      v-bind:src="Equipe.Logo"
                      alt="https://upload.wikimedia.org/wikipedia/commons/7/7c/Fortnite_F_lettermark_logo.png"
                      class="rounded-circle"
                      width="150"
                    />
                    <div class="mt-3">
                      <h1>{{ Equipe.NomEquipe }}</h1>
                      <h3 class="text-secondary mb-1">
                        Top Game: {{ Equipe.nomJeu }}
                      </h3>
                    </div>
                    <div class="row">
                      <div class="col-sm-12">
                        <b-button
                          v-if="isOwner"
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
              <div class="col-md-12">
                <template v-if="isVisible">
                  <div class="card mt-2">
                    <div class="card-body">
                      <div class="d-flex flex-column">
                        <div class="mt-1">
                          <div class="d-inline-flex gutters-sm">
                            <div class="d-flex align-items-center">
                              <h6 class="material-icons text-info mr-2">
                                Modifier les infos de l'equipe
                              </h6>
                            </div>
                            <div class="me-auto">
                              <b-button
                                v-if="isVisible"
                                class="px-1 py-0 mx-3"
                                type="button"
                                variant="success"
                                v-on:click="teamInfoEditables"
                                >+</b-button
                              >
                            </div>
                          </div>

                          <b-form-group
                            v-if="TeamInfoEditable"
                            id="input-group-10"
                            label-for="input-10"
                          >
                            <b-form-input
                              v-model="formEdit.NomEquipe"
                              id="input-10"
                              placeholder="NomEquipe"
                            ></b-form-input>
                          </b-form-group>
                          <b-form-group
                            v-if="TeamInfoEditable"
                            id="input-group-9"
                            label-for="input-9"
                          >
                            <b-form-input
                              v-model="formEdit.Presentation"
                              id="input-9"
                              placeholder="Presentation"
                            ></b-form-input>
                          </b-form-group>

                          <b-form-group
                            v-if="TeamInfoEditable"
                            id="input-group-11"
                            label="Pays"
                            label-for="input-11"
                          >
                            <b-form-select
                              :options="options2"
                              size=""
                              v-model="formEdit.IdPays"
                              class="m-1"
                            ></b-form-select>
                          </b-form-group>
                          <b-form-group
                            v-if="TeamInfoEditable"
                            id="input-group-12"
                            label="TopGame"
                            label-for="input-12"
                          >
                            <b-form-select
                              v-model="formEdit.IdGame"
                              :options="options"
                              size=""
                              class="m-1"
                            ></b-form-select>
                          </b-form-group>
                          <b-button
                            v-if="TeamInfoEditable"
                            type="button"
                            class="mt-2"
                            variant="success"
                            v-on:click="editTeam"
                            >OK</b-button
                          >
                        </div>
                      </div>
                    </div>
                  </div>
                </template>
              </div>
              <div class="col-md-12 mb-3 mt-3">
                <div class="row gutters-sm">
                  <div class="col-sm-12">
                    <b-button
                      v-if="isVisible"
                      class="ms-auto"
                      type="button"
                      variant="danger"
                      v-on:click="deleteTeam"
                      >Supprimer Equipe</b-button
                    >
                  </div>
                </div>
              </div>

              <div class="col-md-12 mb-3 mt-3">
                <div class="row gutters-sm">
                  <div class="col-sm-12 mb-3">
                    <AjoutMember
                      v-if="isVisible"
                      :AllUsers="AllUsersDictionary"
                      :JoueursInscrits="Joueurs"
                      :IdEquipe="Equipe.IdEquipe"
                      @add-user-to-team="addUserToTeam($event)"
                    />
                  </div>
                </div>
              </div>

              <div class="col-md-12">
                <div class="card">
                  <div class="card-body">
                    <div
                      class="d-flex flex-column align-items-center text-center"
                    >
                      <div class="mt-3">
                        <h3>Membres de l'equipe</h3>
                        <JoueurComponent
                          v-for="joueur in Joueurs"
                          :key="joueur[0]"
                          :username="joueur.Username"
                          :dateJoined="joueur.DateJoined"
                          :avatar="joueur.Svatar"
                          :ville="joueur.Ville"
                          :id-joueur="joueur.IdJoueur"
                          :IdEquipeOwner="Equipe.IdOwner"
                          :isVisible="isVisible"
                          @delete-user-from-team="deleteUserFromTeam($event)"
                        />
                      </div>
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
                      <h6 class="mb-0">Presentation</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      {{ Equipe.Presentation }}
                    </div>
                  </div>
                  <hr />
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Pays</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      {{ Equipe.NomPays }}
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
                          v-for="tournoi in Tournoi"
                          :key="tournoi.IdTournoi"
                          :nom-tournoi="tournoi.nomTournoi"
                          :IdTournoi="tournoi.IdTournoi"
                          :nom-jeu="tournoi.nomJeu"
                        />
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-sm-8 mb-3">
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
  </div>
</template>

<script>
import TournoiComponent from "../components/TournoiComponent.vue";
import JoueurComponent from "../components/JoueurComponent.vue";
import MatchComponent from "../components/MatchComponent.vue";
import AjoutMember from "../components/AjoutMember.vue";
import {
  getTeamByTeamID,
  getUsers,
  InscriptionMembre,
  LeaveTeam,
  DeleteTeam,
  EditEquipe,
} from "../apiVue.js";
export default {
  name: "TeamView",
  components: {
    TournoiComponent,
    JoueurComponent,
    MatchComponent,
    AjoutMember,
  },
  data() {
    return {
      isOwner: false,
      isVisible: false,
      TeamInfoEditable: false,
      Tournoi: "",
      Parties: "",
      Equipe: "",
      Joueurs: "",
      AllUsersDictionary: [],
      form: {
        IdEquipe: "",
        IdJoueur: "",
      },
      form2: {
        IdEquipe: "",
        IdJoueur: "",
      },
      formEdit: {
        Presentation: "",
        IdPays: "",
        IdGame: "",
        IdEquipe: "",
        Logo: "",
        NomEquipe: "",
      },
      options: [
        { value: null, text: "Please select an option" },
        { value: "1", text: "Minecraft" },
        { value: "2", text: "Overwatch" },
        { value: "3", text: "League Of Legends" },
        { value: "4", text: "Counter Strike" },
        { value: "5", text: "World Of Warcraft" },
        { value: "6", text: "Fortnite" },
        { value: "7", text: "Apex Legends" },
        { value: "8", text: "Valorant" },
        { value: "9", text: "Echecs" },
      ],
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
  methods: {
    async getTeamInfo() {
      const team = await getTeamByTeamID(localStorage.getItem("equipe"));
      this.Tournoi = team.Tournoi;
      this.Parties = team.Parties;
      this.Equipe = team.Equipes;
      if (this.Equipe.Logo == null) {
        this.Equipe.Logo =
          "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Xbox_one_logo.svg/768px-Xbox_one_logo.svg.png";
      }
      this.Joueurs = team.Joueurs;
      this.checkIfUserIsOwner();
      if (this.isOwner) {
        this.getAllUsers();
      }
    },
    async deleteTeam() {
      try {
        const IdEquipe = this.Equipe.IdEquipe;
        const dat = { IdEquipe: IdEquipe };
        await DeleteTeam(dat).then((response) => {
          alert(response);
          this.$router.push({ name: "equipes" });
        });
      } catch (e) {
        console.error(e);
      }
    },
    async editTeam() {
      try {
        this.formEdit.IdEquipe = this.Equipe.IdEquipe;
        await EditEquipe(this.formEdit);
        this.$router.go();
        console.log(this.formEdit);
      } catch (e) {
        console.error(e);
      }

    },
    checkIfUserIsOwner() {
      const userId = JSON.parse(localStorage.getItem("user")).IdJoueur;
      if (userId == this.Equipe.IdOwner) {
        this.isOwner = true;
      }
    },
    getAllUsers() {
      try {
        getUsers().then((response) => {
          const AllUsers = response;
          for (const user of AllUsers) {
            this.AllUsersDictionary.push({
              id: user.IdJoueur,
              name: user.Username,
            });
          }
        });
      } catch (e) {
        console.log(e);
      }
    },
    async addUserToTeam({ IdEquipe, IdUser }) {
      try {
        this.form.IdEquipe = IdEquipe;
        this.form.IdJoueur = IdUser;
        await InscriptionMembre(this.form).then((response) => {
          alert(response);
          this.$router.go();
        });
      } catch (e) {
        console.error(e);
      }
    },
    async deleteUserFromTeam({ IdUser }) {
      try {
        this.form2.IdJoueur = IdUser;
        this.form2.IdEquipe = this.Equipe.IdEquipe;
        await LeaveTeam(this.form2).then((response) => {
          alert(response);
          this.$router.go();
        });
      } catch (e) {
        console.error(e);
      }
    },
    toggleEdit() {
      this.fillInfo();
      if (this.isVisible == false) {
        this.isVisible = true;
      } else {
        this.isVisible = false;
      }
    },
    teamInfoEditables() {
      if (this.TeamInfoEditable == false) {
        this.TeamInfoEditable = true;
      } else {
        this.TeamInfoEditable = false;
      }
    },
    fillInfo() {
      this.formEdit.Presentation = this.Equipe.Presentation;
      this.formEdit.NomEquipe = this.Equipe.NomEquipe;
      this.formEdit.IdGame = this.Equipe.IdGame;
      this.formEdit.IdPays = this.Equipe.IdPays;
    },
    aVueFunctionThatChangesTheSrc() {
      return "../assets/xbox.png";
    },
  },

  created() {
    this.getTeamInfo();
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
