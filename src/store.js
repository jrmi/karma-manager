// src/store.js
import VueReactiveStore from 'vue-reactive-store';
import { Story } from 'inkjs';

let story = null;

let nextId = 0;

export const getGlobalVars = variablesState => {
  const result = {};
  variablesState._globalVariables.forEach((valueObj, key) => {
    result[key] = valueObj.value;
  });
  return result;
};

export const getTags = tags =>
  tags.reduce(
    (acc, tag) => ({ ...acc, [tag.split(': ')[0]]: tag.split(': ')[1] }),
    {}
  );

const store = {
  state: {
    currentLines: [],
    currentChoices: [],
    storyLoaded: false,
    currentVariables: {},
    currentTags: [],
    currentStory: {},
    karma: 0,
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
      //if (!store.state.storyLoaded) {
      store.state.currentStory = storyContent;
      story = new Story(storyContent);
      story.state.variablesState.$('karma', store.state.karma);
      await store.actions.loadNextLines();
      store.state.storyLoaded = true;
      //}
    },
    async loadNextLines() {
      if (story.canContinue) {
        const nextLines = [];
        while (story.canContinue) {
          // Get ink to generate the next paragraph
          nextLines.push({
            line: story.Continue(),
            tags: getTags(story.currentTags),
            key: nextId++
          });
        }
        store.state.currentLines = nextLines;

        store.state.currentChoices = story.currentChoices.map(choice => {
          const { text, index } = choice;
          return { text, index };
        });

        // Get variable values
        store.state.currentVariables = getGlobalVars(story.variablesState);
      }
    },
    async chooseChoice(index) {
      story.ChooseChoiceIndex(index);
      await store.actions.loadNextLines();
    },
    async goto(path) {
      story.state.callStack.Push(0, this.evaluationStack.length); // Push type tunnel
      story.ChoosePathString(path);
      await store.actions.loadNextLines();
    },
    async resetStory() {
      store.state.storyLoaded = false;
      store.state.currentTags = [];
      store.state.currentVariables = {};
      await store.actions.loadStory(store.state.currentStory);
      await store.actions.loadNextLines();
    }
  },
  plugins: [
    {
      actions: {
        after(storeName, actionName, storeState) {
          console.log('Action is finished, this is my store: ', storeState);
        }
      }
    }
  ]
};

const reactiveStore = new VueReactiveStore(store);

export default reactiveStore;
