<template>
  <div class="home" v-if="storyContent">
    <Story :storyContent="storyContent" />
  </div>
</template>

<script>
// @ is an alias to /src
import Story from "@/components/Story.vue";
import storyContent from "@/story.ink";

console.log(storyContent);

export default {
  name: "home",
  components: {
    Story
  },
  data() {
    return { storyContent: storyContent };
  },
  created() {}
};
</script>
