import Vue from 'vue'
import App from './App.vue'
import Vuex from 'vuex'
Vue.use(Vuex)



//使用路由
import {router} from './router/index'; 
//使用vuex通信
import store from './store/index'


//使用重置样式
import 'normalize.css'

//全局使用jquery
import jQuery from 'jquery'
window.$ = jQuery

new Vue({
  el: '#app',
  //vue的路由属性
  router,
  store,
  render: h => h(App)
});
