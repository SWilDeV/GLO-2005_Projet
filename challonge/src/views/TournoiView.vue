<template>
  <div>
    <div>
      <div class="container">
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
                          :key="equipe.IdEquipe"
                          :nom-equipe="equipe.nomEquipe"
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
import { getOneTournament } from "../apiVue.js";
export default {
  name: "TournoiView",
  components: {
    EquipeComponent,
    MatchComponent,
  },
  data() {
    return {
      isOwner: false,
      Tournoi: "",
      Parties: "",
      Equipes: "",
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
    addTeam() {
      alert(this.Tournoi.IdTournoi);
    },
    addMatch() {
      alert("newMatch");
    },
  },
  created() {
    this.getTournoiInfo();
  },
};
</script>

<style></style>
