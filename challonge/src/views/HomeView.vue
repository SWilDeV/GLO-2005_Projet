<template>
  <div class="home">
    <ArtistesComponent
      v-for="art in ArtisteData"
      :key="art[0]"
      :artiste-name="art[1]"
    />
  </div>
</template>

<script>
// @ is an alias to /src
import ArtistesComponent from "@/components/ArtistesComponent.vue";
import axios from "axios";
export default {
  name: "HomeView",
  components: {
    ArtistesComponent,
  },
  data() {
    return {
      ArtisteData: [],
    };
  },
  methods: {
    getResponse() {
      const path = "http://localhost:5000/Artistes";
      axios
        .get(path)
        .then((res) => {
          console.log(res.data);
          this.ArtisteData = res.data;
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
