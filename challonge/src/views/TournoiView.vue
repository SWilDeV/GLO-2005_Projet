<template>
  <div>
    <div>
      <div class="container mt-4">
        <div class="main-body">
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
                      <h1>{{ Tournoi.nomTournoi }}</h1>
                      <h3 class="text-secondary mb-1">
                        {{ Tournoi.nomJeu }}
                      </h3>
                    </div>
                    <div class="row">
                      <div class="col-sm-12">
                        <b-button
                          v-if="isOwner"
                          class="ms-auto"
                          type="button"
                          variant="danger"
                          v-on:click="deleteTournoi"
                          >Supprimer</b-button
                        >
                        <b-button
                          v-if="isOwner"
                          class="ms-auto"
                          type="button"
                          variant="primary"
                          v-on:click="editTournoi"
                          >Modifier</b-button
                        >
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
                    <div class="col-sm-6">
                      <h6 class="mb-0">Nombre d'equipes Max</h6>
                    </div>
                    <div class="col-sm-6 text-secondary">
                      {{ Tournoi.maxEquipe }}
                    </div>
                  </div>
                  <hr />
                  <div class="row">
                    <div class="col-sm-6">
                      <h6 class="mb-0">Nombre d'equipes Min</h6>
                    </div>
                    <div class="col-sm-6 text-secondary">
                      {{ Tournoi.minEquipe }}
                    </div>
                  </div>
                  <hr />
                  <div class="row">
                    <div class="col-sm-6">
                      <h6 class="mb-0">Nombre de joueurs Max</h6>
                    </div>
                    <div class="col-sm-6 text-secondary">
                      {{ Tournoi.maxJoueur }}
                    </div>
                  </div>
                  <hr />
                  <div class="row">
                    <div class="col-sm-6">
                      <h6 class="mb-0">Nombre de joueurs Min</h6>
                    </div>
                    <div class="col-sm-6 text-secondary">
                      {{ Tournoi.minJoueur }}
                    </div>
                  </div>
                  <hr />
                  <div class="row">
                    <div class="col-sm-6">
                      <h6 class="mb-0">Debut le:</h6>
                    </div>
                    <div class="col-sm-6 text-secondary">
                      {{ Tournoi.dateDebut }}
                    </div>
                  </div>
                  <hr />
                </div>
              </div>
              <div class="row gutters-sm">
                <div class="col-sm-6 mb-3">
                  <AjoutEquipe
                    v-if="isOwner"
                    :AllTeams="AllTeamsDictionary"
                    :EquipesInscrites="Equipes"
                    :IdTournoi="Tournoi.IdTournoi"
                    @add-team-to-tournament="addTeamToTournament($event)"
                  />
                </div>
                <div class="col-sm-6 mb-3">
                  <AjoutMatch
                    v-if="isOwner"
                    :EquipesInscrites="Equipes"
                    :IdTournoi="Tournoi.IdTournoi"
                    @add-match-to-tournament="addMatchToTournament($event)"
                  />
                </div>
              </div>

              <div class="row gutters-sm">
                <div class="col-sm-6 mb-3">
                  <div class="card h-100">
                    <div class="card-body">
                      <h6 class="d-flex align-items-center mb-3">
                        <i class="material-icons text-info mr-2"
                          >Equipes inscrites</i
                        >
                      </h6>

                      <div>
                        <EquipeComponent
                          class="card h-100 m-1"
                          v-for="equipe in Equipes"
                          :key="equipe.idEquipe"
                          :nom-equipe="equipe.nomEquipe"
                          :IdEquipe="equipe.idEquipe"
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
import MatchComponent from "../components/MatchComponent.vue";
import EquipeComponent from "../components/EquipeComponent.vue";
import AjoutEquipe from "../components/AjoutEquipe.vue";
import AjoutMatch from "../components/AjoutMatch.vue";
import {
  getOneTournament,
  getTeams,
  InscriptionEquipe,
  createPartie,
} from "../apiVue.js";
export default {
  name: "TournoiView",
  components: {
    EquipeComponent,
    MatchComponent,
    AjoutEquipe,
    AjoutMatch,
  },
  data() {
    return {
      isOwner: false,
      Tournoi: "",
      Parties: "",
      Equipes: [],
      form: {
        IdEquipe: "",
        IdTournoi: "",
      },
      form2: {
        IdEquipe1: "",
        IdEquipe2: "",
        IdTournoi: "",
        DateDebut: "",
        Heure: "",
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
      AllTeamsDictionary: [],
    };
  },
  methods: {
    async getTournoiInfo() {
      const tournament = await getOneTournament(
        localStorage.getItem("tournoi")
      );
      this.Tournoi = tournament.Tournoi;
      this.Parties = tournament.Parties;
      this.Equipes = tournament.Equipes;
      this.checkIfUserIsOwner();
      if (this.isOwner) {
        this.getEquipes();
      }
    },
    deleteTournoi() {
      alert("Delete tournoi");
    },
    editTournoi() {
      this.$router.push({ name: "editTournoi" });
    },
    checkIfUserIsOwner() {
      const userId = JSON.parse(localStorage.getItem("user")).IdJoueur;
      if (userId == this.Tournoi.IdOwner) {
        this.isOwner = true;
      }
    },
    addMatch() {
      alert("newMatch");
    },
    getEquipes() {
      try {
        getTeams().then((response) => {
          const AllTeams = response;
          for (const team of AllTeams) {
            this.AllTeamsDictionary.push({
              id: team.IdEquipe,
              name: team.nomEquipe,
            });
          }
        });
      } catch (e) {
        console.log(e);
      }
    },
    async addTeamToTournament({ IdEquipe, IdTournoi }) {
      try {
        this.form.IdEquipe = IdEquipe;
        this.form.IdTournoi = IdTournoi;
        await InscriptionEquipe(this.form).then((response) => {
          alert(response);
          this.$router.go();
        });
      } catch (e) {
        console.error(e);
      }
    },
    async addMatchToTournament({
      IdEquipe1,
      IdEquipe2,
      DateDebut,
      Heure,
      IdTournoi,
    }) {
      try {
        console.log(IdEquipe1, IdEquipe2, DateDebut, Heure, IdTournoi);
        this.form2.IdEquipe1 = IdEquipe1;
        this.form2.IdEquipe2 = IdEquipe2;
        this.form2.DateDebut = DateDebut;
        this.form2.Heure = Heure;
        this.form2.IdTournoi = IdTournoi;
        await createPartie(this.form2).then((response) => {
          alert(response);
          this.$router.go();
        });
      } catch (e) {
        console.error(e);
      }
    },
  },

  created() {
    this.getTournoiInfo();
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
