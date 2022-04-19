<template>
  <div>
    <!-- <h1>{{ userProfil.Username }}</h1>
    <h1>Tournois</h1>
    <h1>Equipes</h1> -->
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
                    <h4>{{ userProfil.Username }}</h4>
                    <p class="text-muted font-size-sm">
                      {{ userProfil.Ville }}, {{ userProfil.NomPays }}
                    </p>
                    <p class="text-secondary mb-1">
                      {{ userProfil.Presentation }}
                    </p>
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
                    {{ userProfil.Username }}
                  </div>
                </div>
                <hr />
                <div class="row">
                  <div class="col-sm-3">
                    <h6 class="mb-0">Email</h6>
                  </div>
                  <div class="col-sm-9 text-secondary">
                    {{ userProfil.Courriel }}
                  </div>
                </div>
                <hr />
                <div class="row">
                  <div class="col-sm-3">
                    <h6 class="mb-0">Nom</h6>
                  </div>
                  <div class="col-sm-9 text-secondary">
                    {{ userProfil.Prenom }} {{ userProfil.Nom }}
                  </div>
                </div>
                <hr />
                <div class="row">
                  <div class="col-sm-3">
                    <h6 class="mb-0">Pays</h6>
                  </div>
                  <div class="col-sm-9 text-secondary">
                    {{ userProfil.NomPays }}
                  </div>
                </div>
                <hr />
                <div class="row">
                  <div class="col-sm-3">
                    <h6 class="mb-0">Inscrit le:</h6>
                  </div>
                  <div class="col-sm-9 text-secondary">
                    {{ userProfil.DateJoined }}
                  </div>
                </div>
              </div>
            </div>

            <div class="row gutters-sm">
              <div class="col-sm-6 mb-3">
                <div class="card h-100">
                  <div class="card-body">
                    <h6 class="d-flex align-items-center mb-3">
                      <i class="material-icons text-info mr-2">Equipes</i>
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
import { getUserDataByUserID } from "../apiVue.js";
import EquipeComponent from "../components/EquipeComponent.vue";
import MatchComponent from "../components/MatchComponent.vue";
export default {
  name: "OtherUserProfile",
  components: {
    EquipeComponent,
    MatchComponent,
  },
  data() {
    return {
      userProfil: "",
      Parties: "",
      Equipes: "",
    };
  },
  async created() {
    const userProfil = JSON.parse(localStorage.getItem("OtherUser"));
    await getUserDataByUserID(userProfil).then((response) => {
      if (response.User != null) {
        this.userProfil = response.User;
        this.Parties = response.Parties;
        this.Equipes = response.Equipes;
      }
    });
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
