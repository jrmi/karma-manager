<template>
  <div class="story">
    <div v-for="(line, index) in state.currentLines" :key="line">
      <transition appear appear-class="show">
        <p v-html="line" :style="{'transition-delay': (index)*500 + 'ms'}"></p>
      </transition>
    </div>
    <ul class="choices" v-if="state.currentChoices.length > 0">
      <li v-for="choice in state.currentChoices" :key="choice.index">
        <a href="#" @click="handleChoice(choice.index)" v-html="choice.text"></a>
      </li>
    </ul>
    <div v-if="state.currentChoices.length == 0">
      <h2>The end</h2>
    </div>
    <hr />
    <div>
      {{state.currentTags}}
      {{state.currentVariables}}
    </div>
    <a href="#" @click.prevent="restart">Restart</a>
  </div>
</template>

<script>
import store from "@/store";

export default {
  name: "Story",
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
      //await store.actions.loadStory(storyContent);
      await store.actions.resetStory();
    }
  }
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
@import url("https://fonts.googleapis.com/css?family=Open+Sans:300,700|Quattrocento:700");

.story {
  display: block;
  max-width: 50vw;
  margin: 0 auto;
  padding: 20px;
  text-align: justify;
  font-family: "Open Sans", sans-serif;
  color: #ddd;
}

h1,
h2 {
  text-align: center;
  font-family: "Quattrocento", Georgia, "Times New Roman", Times, serif;
  margin: 0;
  padding: 0;
}

p,
a {
  color: #ddd;
  line-height: 1.7em;
  font-size: 13pt;
}

p {
  opacity: 1;
  transition: opacity 1500ms;
}

p.show {
  opacity: 0;
}

p.choice {
  text-align: center;
}

a {
  text-decoration: none;
}
a:hover {
  color: white;
}

.choices {
  list-style-type: none;
  display: flex;
  justify-content: space-around;
  flex-wrap: wrap;
  padding-top: 2em;
  border-top: 1px solid #ddd;
  padding: 0.5em 0.2em;
  margin: 0px;
}
.choices a {
  border: 1px solid #ddd;
  padding: 10px;
  margin: 5px 0px;
  border-radius: 3px;
  display: block;
}
</style>

