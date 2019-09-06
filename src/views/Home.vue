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
@import url("https://fonts.googleapis.com/css?family=Goudy+Bookletter+1911&display=swap");
@import url("https://fonts.googleapis.com/css?family=Gentium+Book+Basic&display=swap");

body {
  font-family: "Gentium Book Basic", serif;
  font-weight: lighter;
  background: #191919;
}
</style>
