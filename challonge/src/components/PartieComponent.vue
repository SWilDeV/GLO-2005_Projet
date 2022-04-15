<template>
  <div>
    <div class="card mb-3" style="max-width: 540px">
      <div class="row g-0">
        <div class="col-md-4">
          <img
            src="../assets/xbox.png"
            class="img-fluid rounded-start"
            alt="..."
          />
        </div>
        <div class="col-md-8">
          <div class="card-body">
            <p class="card-text">idMatch: {{ idMatch }}</p>
            <p class="card-text">idGagnant: {{ idGagnant }}</p>

            <p class="card-text">
              idEquipe1: {{ idEquipe1 }} idEquipe2: {{ idEquipe2 }}
            </p>

            <p class="card-text">
              ScoreEquipe1: {{ ScoreEquipe1 }} ScoreEquipe2: {{ ScoreEquipe2 }}
            </p>
            <p class="card-text">
              date: {{ dateMatch }} heure: {{ heureMatch }}
            </p>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "PartieComponent",
  props: {
    idMatch: Number,
    dateMatch: String,
    heureMatch: String,
    idEquipe1: Number,
    idEquipe2: Number,
    idGagnant: Number,
    idTournoi: Number,
    ScoreEquipe1: Number,
    ScoreEquipe2: Number,
  },
};
</script>

<style></style>
