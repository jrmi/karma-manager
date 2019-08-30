<template>
  <div class="home" v-if="storyContent">
    <Story :storyContent="storyContent" />
  </div>
</template>

<script>
// @ is an alias to /src
import Story from "@/components/Story.vue";
import storyContent from "@/story.ink";

export default {
  name: "home",
  components: {
    Story
  },
  data() {
    return { storyContent };
  },
  created() {}
};
</script>

<style >
@import url("https://fonts.googleapis.com/css?family=Open+Sans:300,700|Quattrocento:700");

body {
  font-family: "Open Sans", sans-serif;
  font-weight: lighter;
  background: #222;
}
</style>
