<template>
  <div class="intro">
    <h1>Karma manager v1.2</h1>
    <p>
      Bienvenue Ame n°{{ number }}, dans votre application de gestion de
      réincarnation. Cette application vous permet de gérer l'évolution de votre
      carrière en tant qu'âme.
    </p>
    <p>
      Avant d'incarner un corps, vous devez choisir la famille qui vous convient
      le mieux. Attention, vous n'avez que trois possibilités. Faites le bon
      choix.
    </p>
    <p>
      Ensuite, vous pourrez intervenir dans certains choix de vie de votre
      incarnation et suivre les différentes actions importantes qu'elle
      effectuera. Faites les bons choix afin d'orienter votre incarnation vers
      les meilleurs actions.
    </p>
    <p>
      À chaque incarnation, vous accumulez du <em>karma</em> en fonction des
      actions de votre incarnation. Si vous arrivez à totaliser 42 points de
      karma aux termes de plusieurs incarnations, vous pourrez sortir de votre
      condition d'âme et passer à l'état supérieur.
    </p>
    <h3>Bon courage.</h3>
    <router-link to="/story">Commencer à gérer mon Karma</router-link>
  </div>
</template>

<script>
import store from '@/store';

export default {
  name: 'intro',
  data() {
    return {
      number: Math.floor(100000 + Math.random() * 900000)
    };
  },
  created() {
    store.state.karma = 0;
    store.state.lifeCount = 0;
  }
};
</script>

<style>
.intro {
  text-align: center;
  width: 100%;
  /*background: url('../../public/img/cover.svg') no-repeat;*/
}
</style>
