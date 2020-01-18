<template>
  <div class="intro">
    <h1>Karma manager v1.2</h1>
    <p>
      Bienvenue chère Ame n°23E45T8, voici votre application de gestion de
      réincarnation.
    </p>
    <p>Famille</p>
    <p>Sortir du cycle des réincarnation</p>
    <router-link to="/story">Commencer à gérer mon Karma</router-link>
  </div>
</template>

<script>
export default {
  name: "intro",
  data() {
    return {};
  },
  created() {}
};
</script>

<style>
.intro {
  text-align: center;
  width: 100%;
}
</style>
