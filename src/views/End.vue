<template>
  <div class="end">
    <h1>Bravo !!</h1>
    <h2>Vous avez quitté le cycle des réincarnations.</h2>
    <p>
      Vous allez pouvoir passer au niveau l'élévation spirituelle suivant. Vous
      avez eu besoin de
      <span class="strong">{{ state.lifeCount }}</span> réincarnations pour
      réaliser cet objectif. Comparez votre score avec vos âm(i)es.
    </p>
    <router-link to="/">Je peux faire mieux</router-link>
  </div>
</template>

<script>
import store from "@/store";

export default {
  name: "intro",
  data() {
    return {
      state: store.state
    };
  }
};
</script>

<style>
.end {
  text-align: center;
  width: 100%;
}

.strong {
  font-weight: bold;
}
</style>
