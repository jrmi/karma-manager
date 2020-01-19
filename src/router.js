import Vue from 'vue';
import Router from 'vue-router';
import Home from './views/Home.vue';
import Intro from './views/Intro.vue';
import End from './views/End.vue';
import Cover from './views/Cover.vue';

Vue.use(Router);

export default new Router({
  routes: [
    {
      path: '/',
      name: 'cover',
      component: Cover
    },
    {
      path: '/intro',
      name: 'intro',
      component: Intro
    },
    {
      path: '/story',
      name: 'story',
      component: Home
    },
    {
      path: '/end',
      name: 'end',
      component: End
    },
    {
      path: '/about',
      name: 'about',
      // route level code-splitting
      // this generates a separate chunk (about.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: () =>
        import(/* webpackChunkName: "about" */ './views/About.vue')
    }
  ]
});
