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
                      src="../assets/xbox.png"
                      alt="Admin"
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
              <div class="col-md-12 mb-3 mt-1">
                <div class="row gutters-sm">
                  <div class="col-sm-12">
                    <b-button
                      v-if="isVisible"
                      class="ms-auto"
                      type="button"
                      variant="danger"
                      v-on:click="deleteTeam"
                      >Supprimer</b-button
                    >
                    <b-button
                      v-if="isVisible"
                      class="ms-auto"
                      type="button"
                      variant="primary"
                      v-on:click="editTeam"
                      >Modifier</b-button
                    >
                  </div>
                </div>
              </div>
              <div class="col-md-12 mb-3 mt-1">
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
                      {{ Equipe.IdPays }}
                    </div>
                  </div>
                </div>
              </div>

              <div class="row gutters-sm">
                <div class="col-sm-6 mb-3">
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
                <div class="col-sm-6 mb-3">
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
                          :dateMatch="match.dateMatch"
                          :scoreEquipe1="match.scoreEquipe1"
                          :scoreEquipe2="match.scoreEquipe2"
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
    };
  },
  methods: {
    async getTeamInfo() {
      const team = await getTeamByTeamID(localStorage.getItem("equipe"));
      this.Tournoi = team.Tournoi;
      this.Parties = team.Parties;
      this.Equipe = team.Equipes;
      this.Joueurs = team.Joueurs;
      this.checkIfUserIsOwner();
      if (this.isOwner) {
        this.getAllUsers();
      }
    },
    deleteTeam() {
      alert("Delete tournoi");
    },
    editTeam() {
      // const userId = JSON.parse(localStorage.getItem("tournoi")).IdTournoi;
      this.$router.push({ name: "editTournoi" });
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
        // this.form2.IdEquipe = IdEquipe;
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
      if (this.isVisible == false) {
        this.isVisible = true;
      } else {
        this.isVisible = false;
      }
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
