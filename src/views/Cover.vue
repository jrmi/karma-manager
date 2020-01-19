<template>
  <div class="cover">
    <img src="../assets/cover2.svg" />
    <router-link to="/intro" class="start">Démarrer</router-link>
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
.cover {
  text-align: center;
  width: 100%;
}

.cover img {
  width: 50vw;
  height: 50vh;
  margin: auto;
  display: block;
}

.cover .start {
  padding: 7px;
  border-radius: 5px;
  border: 1px solid #fc2f70;
}
</style>
