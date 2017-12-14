import login from '../views/login/login.vue'
import NotFound from '../views/404.vue'
import home from '../views/home.vue'
import goodsList from '../views/travelMessage/goodsList.vue'
import outOfStock from '../views/travelMessage/outOfStock.vue'
import hotel from '../views/travelMessage/hotelList.vue'
import orderMessage from '../views/orderForm/orderMessage.vue'
import customerServices from '../views/systemManagement/customerServices.vue'
import feedBack from '../views/systemManagement/feedBack.vue'
import browsingHistory from '../views/systemManagement/browsingHistory.vue'

let routes = [
    {
        path: '/login',
        component: login,
        name: '',
        hidden: true
    },
    {
        path: '/404',
        component: NotFound,
        name: '',
        hidden: true
    },
    {
        path: '/',
        component: home,
        name: '旅游管理',
        iconCls: 'el-icon-message',//图标样式class
        children: [
            { path: '/goodsList', component: goodsList, name: '上架信息' },
            { path: '/outOfStock', component: outOfStock, name: '下架信息' },
            { path: '/hotel', component: hotel, name: '酒店信息' }
        ]
    },
    {
        path: '/',
        component: home,
        name: '订单管理',
        iconCls: 'fa fa-address-card',
        // leaf: true,//只有一个节点
        children: [
            { path: '/orderMessage', component: orderMessage ,name: '订单信息'}
        ]
    },
    {
        path: '/',
        component: home,
        name: '系统管理',
        iconCls: 'fa fa-id-card-o',
        children: [
            { path: '/customerServices ', component: customerServices, name: '客户服务' },
            { path: '/feedBack', component: feedBack, name: '客户反馈' },
            { path: '/browsingHistory', component: browsingHistory, name: '浏览记录' }
        ]
    },
    {
        path: '*',
        hidden: true,
        redirect: { path: '/404' }
    }
];

export default routes;