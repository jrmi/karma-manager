<template>
  <div id="app">
    <div id="nav">
      <router-link to="/">Accueil</router-link> |
      <router-link to="/about">À propos…</router-link>
    </div>
    <div class="content">
      <router-view />
    </div>
  </div>
</template>

<style>
#app {
  font-family: "Avenir", Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  color: #dbdbdb;
}
#nav {
  padding: 30px;
}

#nav a {
  font-weight: bold;
  color: #fc2f7091;
}

#nav a.router-link-exact-active {
  color: #fc2f70;
}

.content {
  display: block;
  max-width: 1024px;
  margin: 0 auto;
  padding: 20px;
  color: #ddd;
  font-size: 16pt;
  font-family: "Gentium Book Basic", serif;
  display: flex;
  justify-content: space-between;
}

@media (max-width: 1024px) {
  .content {
    width: 100vw;
  }
}

a {
  text-decoration: none;
  color: #fc2f70;
}

a:hover {
  color: #ff4b84;
}

body {
  font-family: sans-serif;
  font-weight: lighter;
}
</style>
