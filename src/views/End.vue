<template>
  <div class="end">
    <h1>Bravo !!</h1>
    <h2>Vous avez quitté le cycle des réincarnations.</h2>
    <p>
      Bla bla bla.
    </p>
    <p>Nombre de réincarnations : {{ state.lifeCount }}</p>
    <p>Comparez avec vos am(i)es</p>
    <router-link to="/story">Je peux faire mieux</router-link>
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
</style>
