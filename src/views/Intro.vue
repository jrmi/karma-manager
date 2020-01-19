<template>
  <div class="intro">
    <h1>Karma manager v1.2</h1>
    <p>
      Chère Âme n°{{ number }}, <br />Bienvenue dans votre application de
      gestion de réincarnation.
    </p>
    <p>
      En tant qu'âme, comme vous le savez, vous êtes inscrit dans un cycle de
      réincarnations. À chaque incarnation, cette application vous permet de
      guider la vie de celui que vous incarnez&nbsp;: plus les réalisations de
      la personne seront bonnes, plus vous capitaliserez de points de Karma.
    </p>
    <p>
      Une fois un niveau de Karma satisfaisant atteint -&nbsp;c'est-à-dire
      42&nbsp;- vous pouvez quitter le cycle des renaissances et accéder à la «
      libération », « nirvana » ou encore « Moksha », appelez ça comme vous le
      souhaitez.
    </p>
    <p>
      À chaque fois, avant de vous incarner, Karma manager v1.2 vous offre la
      possibilité de choisir la famille qui vous convient le mieux. Attention,
      comme dans les photomatons, vous n'avez droit qu'a trois possibilités. Ne
      soyez pas trop exigeant, mais faites le bon choix.
    </p>
    <p>
      Ensuite, vous interviendrez dans certains choix de vie de votre
      incarnation afin d'orienter les actions qu'elle pourra réaliser.
    </p>
    <h3>
      Karma manager v1.2 compte sur vous pour rendre le monde meilleur et vous
      souhaite de belles réincarnations.
    </h3>
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
