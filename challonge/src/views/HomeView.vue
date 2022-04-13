<template>
  <div class="home">
    <UtilisateurComponent
      v-for="util in UtilisateurData"
      :key="util[0]"
      :utilisateur-name="util.Prenom"
    />
  </div>
</template>

<script>
// @ is an alias to /src
import UtilisateurComponent from "@/components/UtilisateurComponent.vue";
// import axios from "axios";
import { getUsers } from "../apiVue.js";
export default {
  name: "HomeView",
  components: {
    UtilisateurComponent,
  },
  data() {
    return {
      UtilisateurData: "",
    };
  },
  methods: {},
  async created() {
    try {
      this.UtilisateurData = await getUsers();
      console.log(this.UtilisateurData);
    } catch (e) {
      console.log(e);
    }
  },
};
</script>
