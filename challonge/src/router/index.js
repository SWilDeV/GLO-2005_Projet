import Vue from "vue";
import VueRouter from "vue-router";
import HomeView from "../views/HomeView.vue";
import TournoiView from "../views/TournoiView.vue";
import TournoisListView from "../views/TournoisListView.vue";
import TeamView from "../views/TeamView.vue";
import EditTournament from "../views/EditTournament.vue";
import CreateTournoiView from "../views/CreateTournoiView.vue";
import ProfileView from "../views/ProfileView.vue";
import ProfileSettingsView from "../views/ProfileSettingsView.vue";
import RegisterView from "../views/RegisterView.vue";
import LoginView from "../views/LoginView.vue";
import TeamListView from "../views/TeamListView.vue";
// import SignInView from "../views/SignInView.vue";

Vue.use(VueRouter);

const routes = [
  {
    path: "/",
    name: "home",
    component: HomeView,
  },
  {
    path: "/profile",
    name: "profile",
    component: ProfileView,
  },
  {
    path: "/tournament",
    name: "tournoi",
    component: TournoiView,
  },
  {
    path: "/editTournament",
    name: "editTournoi",
    component: EditTournament,
  },
  {
    path: "/listTournaments",
    name: "tournoisList",
    component: TournoisListView,
  },
  {
    path: "/creerTournois",
    name: "creerTournois",
    component: CreateTournoiView,
  },
  {
    path: "/profileSettings",
    name: "profileSettings",
    component: ProfileSettingsView,
  },
  {
    path: "/register",
    name: "register",
    component: RegisterView,
  },
  {
    path: "/login",
    name: "login",
    component: LoginView,
  },
  {
    path: "/equipes",
    name: "equipes",
    component: TeamListView,
  },
  {
    path: "/equipe",
    name: "equipe",
    component: TeamView,
  },
];

const router = new VueRouter({
  mode: "history",
  base: process.env.BASE_URL,
  routes,
});

export default router;
