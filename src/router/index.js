import Vue from 'vue';
//首字母大写,实例构造函数
import VueRouter from 'vue-router';

Vue.use(VueRouter);


import loginView from '../view/login/login.vue';
import registerView from '../view/register/register.vue';
import productView from '../view/product/product.vue';
import detailsView from '../view/details/details.vue';
import goodslistView from '../view/goodslist/goodslist.vue';
import homeView from '../view/home/home.vue';
import hotelView from '../view/hotel/hotel.vue';
import informationView from '../view/information/personal_information.vue'


const router = new VueRouter({
	routes: [
		{
			path:'/login',
			component:loginView,
			name:'login'
		},
		{
			path:'/details',
			component:detailsView,
			name:'details'
		},
		{
			path:'/information',
			name:'information',
			component:informationView
		},
		{
			path:'/goodslist',
			component:goodslistView,
			name:'goodslist'
		},
		{
			path:'/hotel',
			component:hotelView,
			name:'hotel'
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
		{
			path:'/'
		},
		{
			path:'*',
			redirect: '/login'
		}
	]
});
//本身就是实例就无需暴露对象,或者可以另外一种写法
export {router};
//export default router;

