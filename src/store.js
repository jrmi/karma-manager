// src/store.js
import VueReactiveStore from 'vue-reactive-store';
import { Story } from 'inkjs';

let story = null;

const store = {
  state: {
    currentLines: [],
    currentChoices: [],
    storyLoaded: false,
    currentVariables: [],
    data: null
  },
  computed: {
    currentChoices_() {
      if (story) {
        return story.currentChoices;
      } else {
        return [];
      }
    }
  },
  actions: {
    async loadStory(storyContent) {
      if (!store.state.storyLoaded) {
        story = new Story(storyContent);
        await store.actions.loadNextLines();
        store.state.storyLoaded = true;
      }
    },
    async loadNextLines() {
      if (story.canContinue) {
        const nextLines = [];
        while (story.canContinue) {
          // Get ink to generate the next paragraph
          nextLines.push(story.Continue());
        }
        store.state.currentLines = nextLines;

        store.state.currentChoices = story.currentChoices.map(choice => {
          const { text, index } = choice;
          return { text, index };
        });
      }
    },
    async chooseChoice(index) {
      story.ChooseChoiceIndex(index);
      await store.actions.loadNextLines();
    },
    async resetStory() {
      story.ResetState();
      await store.actions.loadNextLines();
    }
  },
  plugins: [
    {
      actions: {
        after(storeName, actionName, storeState) {
          console.log('action is finished, this is my store : ', storeState);
        }
      }
    }
  ]
};

const reactiveStore = new VueReactiveStore(store);

export default reactiveStore;
