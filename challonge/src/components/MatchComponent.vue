<template>
  <div class="mb-3" style="height: 5px">
    {{ NomEquipeA }} vs {{ NomEquipeB }}, {{ dateMatch }}
  </div>
</template>

<script>
export default {
  name: "MatchComponent",
  props: { NomEquipeA: String, NomEquipeB: String, dateMatch: String },
};
</script>

<style></style>
