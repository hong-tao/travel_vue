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
import securityCode from '../components/securityCode/securityCode.vue'
import personalSettingView from '../view/personalSettings/personalSetting.vue'
import myorderView from '../view/myOrder/myorder.vue'
import orderDetailView from '../view/orderDetails/orderDetail.vue'
import contactView from '../view/Contact/contact.vue'
import appendView from '../view/append/append.vue'
import paymentView from '../view/payment/payment.vue'
import hotelcheckView from '../view/hotelcheck/hotelcheck.vue'


const router = new VueRouter({
	routes: [
		{
			path:'/home',
			component:homeView,
			name:'home'
		},
		{
			path:'/hotelcheck/:star/:adr',
			component:hotelcheckView,
			name:'hotelcheck'
		},
		{
			path:'/login',
			component:loginView,
			name:'login'
		},
		{
			path:'/payment/:productid',
			component:paymentView,
			name:'payment'
		},
		{
			path:'/append',
			component:appendView,
			name:'append'
		},
		{
			path:'/contact',
			component:contactView,
			name:'contact'
		},
		{
			path:'/orderdetail/:productid',
			component:orderDetailView,
			name:'orderdetail'
		},
		{
			path:'/order',
			component:myorderView,
			name:'order'
		},
		{
			path:'/setting',
			component:personalSettingView,
			name:'setting'
		},
		{
			path:'/details',
			component:detailsView,
			name:'details'
		},
		{
			path:'/securityCode',
			component:securityCode,
			name:'securityCode'
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
			path:'/',
			redirect:'/home'
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

