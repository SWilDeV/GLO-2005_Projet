<template>
  <div class="home">
    <UtilisateurComponent
      v-for="util in UtilisateurData"
      :key="util[0]"
      :utilisateur-name="util[4]"
    />
  </div>
</template>

<script>
// @ is an alias to /src
import UtilisateurComponent from "@/components/UtilisateurComponent.vue";
import axios from "axios";
export default {
  name: "HomeView",
  components: {
    UtilisateurComponent,
  },
  data() {
    return {
      UtilisateurData: [],
    };
  },
  methods: {
    getResponse() {
      const path = `${process.env.VUE_APP_API_BASE_URL}/Utilisateurs`;
      axios
        .get(path)
        .then((res) => {
          this.UtilisateurData = res.data;
          console.log(this.UtilisateurData);
        })
        .catch((err) => {
          console.log(err);
        });
    },
  },
  created() {
    this.getResponse();
  },
};
</script>
