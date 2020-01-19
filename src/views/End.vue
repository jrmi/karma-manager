<template>
  <div class="end">
    <h1>Félicitations !</h1>
    <p>
      Karma manager v1.2 est heureux de vous annoncer que vous avez obtenu plus
      42 points de Karma et que vous avez quitté le cycle des réincarnations en
      accédant à un niveau niveau supérieur d'élévation spirituelle.
    </p>
    <p>
      Pour information, vous avez eu besoin de
      <span class="strong">{{ state.lifeCount }}</span> réincarnations pour
      réaliser cet objectif. Comparez votre score avec vos âm(i)es.
    </p>
    <router-link to="/intro">Vous voulez faire mieux ?</router-link>
    <p>
      N'hésitez pas à partager votre expérience avec Karma manager v1.2 sur les
      réseaux astraux, et, pour votre nouvel état, nous vous recommandons
      d'utiliser l'application Nirvana manager v2.3.
    </p>
  </div>
</template>

<script>
import store from '@/store';

export default {
  name: 'intro',
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
