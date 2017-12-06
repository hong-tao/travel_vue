import Vue from 'vue';
//首字母大写,实例构造函数
import VueRouter from 'vue-router';

Vue.use(VueRouter);


import loginView from '../view/login/login.vue';
import registerView from '../view/register/register.vue';
import productView from '../view/product/product.vue';

const router = new VueRouter({
	routes: [
		{
			path: '/',
      		redirect: '/login'
		},
		{
			path:'/login',
			component:loginView,
			name:'login'
		},
		{
			path:'/register',
			component:registerView,
			name:'register'
		},
		{
			path:'/product',
			component:productView,
			name:'product'
		},
//		{
//			path:'*',
//			redirect: '/login'
//		}
	]
});
//本身就是实例就无需暴露对象,或者可以另外一种写法
export {router};
//export default router;

