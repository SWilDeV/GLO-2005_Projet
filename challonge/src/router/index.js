import Vue from "vue";
import VueRouter from "vue-router";
import HomeView from "../views/HomeView.vue";
import TournoiView from "../views/TournoiView.vue";
import CreateTournoiView from "../views/CreateTournoiView.vue";
import ProfileView from "../views/ProfileView.vue";
import ProfileSettingsView from "../views/ProfileSettingsView.vue";
import RegisterView from "../views/RegisterView.vue";
import SignInView from "../views/SignInView.vue";

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
    path: "/tournois",
    name: "tournois",
    component: TournoiView,
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
    path: "/signIn",
    name: "signIn",
    component: SignInView,
  },
];

const router = new VueRouter({
  mode: "history",
  base: process.env.BASE_URL,
  routes,
});

export default router;
