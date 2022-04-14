import Vue from "vue";
import VueRouter from "vue-router";
import HomeView from "../views/HomeView.vue";
import TournoiView from "../views/TournoiView.vue";
import TournoisListView from "../views/TournoisListView.vue";
import CreateTournoiView from "../views/CreateTournoiView.vue";
import ProfileView from "../views/ProfileView.vue";
import ProfileSettingsView from "../views/ProfileSettingsView.vue";
import RegisterView from "../views/RegisterView.vue";
import LoginView from "../views/LoginView.vue";
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
    path: "/tournoi",
    name: "tournoi",
    component: TournoiView,
  },
  {
    path: "/tournoisList",
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
];

const router = new VueRouter({
  mode: "history",
  base: process.env.BASE_URL,
  routes,
});

export default router;
