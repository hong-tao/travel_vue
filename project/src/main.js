import Vue from 'vue'
import app from './app'
import ElementUI from 'element-ui'
import VueRouter from 'vue-router'
import routes from './routers/index.js'
import 'element-ui/lib/theme-chalk/index.css'
import 'font-awesome/css/font-awesome.min.css'

Vue.use(ElementUI)
Vue.use(VueRouter)

const router = new VueRouter({
  routes
});

// 判断token
router.beforeEach((to, from, next) => {
  if (to.path == '/login') {
    sessionStorage.removeItem('token');
  }
  let token = sessionStorage.getItem('token');
  if (!token && to.path != '/login') {
    next({ path: '/login' })
  } else {
    next()
  }
});
new Vue({
  el: '#app',
  router,
  render: h => h(app)
});
