<template>
  <div class="story">
    <article>
      <div v-for="(line, index) in state.currentLines" :key="line.key">
        <p
          v-html="line.line"
          :style="{ 'animation-delay': index * 200 + 'ms' }"
          :class="[line.tags.class || ''].concat(['text-focus-in'])"
        ></p>
        <transition appear appear-class="sshow"></transition>
      </div>
      <ul class="choices" v-if="state.currentChoices.length > 0">
        <li v-for="choice in state.currentChoices" :key="choice.index">
          <a
            href="#"
            class="choice grow"
            @click="handleChoice(choice.index)"
            v-html="choice.text"
          ></a>
        </li>
      </ul>
      <div v-if="state.currentChoices.length == 0">
        <p>Vous avez terminé. Voulez vous ?</p>
        <ul class="choices">
          <li>
            <a class="choice grow" href="#" @click.prevent="restart"
              >Vous réincarner</a
            >
          </li>
          <li v-if="state.karma > 88">
            <router-link to="/end"
              >Quitter le cycle des réincarnations</router-link
            >
          </li>
        </ul>
      </div>
    </article>
    <aside>
      <h2>Statut</h2>
      <p>Karma acquis : {{ state.currentVariables['karma'] }}/88</p>
      <p>Réincarnations : {{ state.lifeCount }}</p>
      <p>
        Richesses : {{ state.currentVariables['rich'] }} %
        <br />
        Education : {{ state.currentVariables['education'] }} %
        <br />
        Support : {{ state.currentVariables['support'] }} %
        <br />
        Sagesse : {{ state.currentVariables['simplicity'] }} %
      </p>
      <a class="choice grow" href="#" @click.prevent="restart">Recommencer</a>
    </aside>
  </div>
</template>

<script>
import store from '@/store';

export default {
  name: 'Story',
  props: {
    storyContent: Object
  },
  data() {
    return {
      state: store.state
    };
  },
  computed: {
    ...store.computed
  },
  async created() {
    await store.actions.loadStory(this.storyContent);
  },
  methods: {
    async handleChoice(index) {
      await store.actions.chooseChoice(index);
    },
    async restart() {
      store.state.lifeCount += 1;
      store.state.karma = store.state.currentVariables['karma'];
      await store.actions.resetStory();
    },
    end() {
      console.log('end');
    },
    async talk() {
      //await store.actions.loadStory(storyContent);
      await store.actions.goto('arthur');
    },
    test() {
      console.log('end');
    }
  }
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.story {
  width: 100%;
  display: flex;
  justify-content: space-between;
}

aside {
  background-color: #151515;
  padding: 0.5em;
  flex-basis: 30%;
  flex-shrink: 0;
}

article {
  text-align: justify;
  padding: 0em 1.5em;
  flex-grow: 1;
}

h1,
h2 {
  text-align: center;
  font-family: 'Quattrocento', Georgia, 'Times New Roman', Times, serif;
  margin: 0;
  padding: 0;
}

p,
a,
button {
  line-height: 1.2em;
}

p {
  margin: 1em 0em;
}

p.show {
  opacity: 0;
}

.choices {
  list-style-type: none;
  display: flex;
  flex-direction: column;
  justify-content: space-around;
  align-items: center;
  flex-wrap: wrap;
  padding-top: 2em;
  padding: 0.5em 0.2em;
  margin: 0px;
  border-top: 1px solid #222;
  margin-top: 2em;
}

.hidden {
  display: none;
}

.choice {
  padding: 0.2em 0.5em;
  display: block;
}

.choice:hover {
  color: #ff4b84;
}

.underline {
  z-index: 1;
  position: relative;
  color: #fc2f70;
  padding: 0.3em 0.5em;
  outline: none;
  border: none;
  overflow: hidden;
  transition: color 0.4s ease-in-out;
}

.underline {
  position: relative;
}

.underline::before {
  content: '';
  position: absolute;
  left: 50%;
  bottom: 0;
  width: 100%;
  height: 2px;
  background-color: #fc2f70;
  transform-origin: center;
  transform: translate(-50%, 0) scaleX(0);
  transition: transform 1s ease-out;
}

.underline:hover::before {
  transform: translate(-50%, 0) scaleX(1);
}

.text-focus-in {
  animation: text-focus-in 200ms cubic-bezier(0.55, 0.085, 0.68, 0.53) both;
}

.grow {
  transition: all 0.2s ease-in-out;
}

.grow:hover {
  /*transform: scale(1.1);*/
  text-shadow: 1px 0px 10px #fc2f70;
}

@-webkit-keyframes text-focus-in {
  0% {
    -webkit-filter: blur(6px);
    filter: blur(6px);
    opacity: 0;
  }
  100% {
    -webkit-filter: blur(0px);
    filter: blur(0px);
    opacity: 1;
  }
}
@keyframes text-focus-in {
  0% {
    -webkit-filter: blur(6px);
    filter: blur(6px);
    opacity: 0;
  }
  100% {
    -webkit-filter: blur(0px);
    filter: blur(0px);
    opacity: 1;
  }
}
</style>
