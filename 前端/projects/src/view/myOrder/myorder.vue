<template>
    <div class='first'>
        <div class="header">
            <p class='el-icon-arrow-left' @click='myclick'></p>
            <span>我的订单</span>
        </div>
        <div class="nav">
            <ul>
                <li>
                    <span @click='order1'>
                        <el-badge class="item">
                            <el-button round>全部</el-button>
                        </el-badge>
                    </span>
                </li>
                <li>
                    <span @click='order2'>
                        <el-badge :value='status' class="item">
                            <el-button round>待付款</el-button>
                        </el-badge>
                    </span>
                </li>
                <li>
                    <span @click='order3'>
                        <el-badge :value='status1' class="item">
                            <el-button round>待出行</el-button>
                        </el-badge>
                    </span>
                </li>
                <li>
                    <span @click='order4'>
                        <el-badge  class="item">
                            <el-button round>待评价</el-button>
                        </el-badge>
                    </span>
                </li>
            </ul>
        </div>
        <div class="main">
            <ul v-if='dataset.length > 0'>
                <li v-for='(obj,index) in dataset' @click='payment'>
                    <div class='m_head'>
                        <span class='ordernums'>{{obj.ordernumber}}</span>
                        <span>{{message[obj.status]}}</span>
                        <i class='el-icon-delete' @click='removes'></i>
                    </div>
                    <img :src='obj.images'/>
                    <div class='m_img'>
                        <span>{{obj.product}}</span>
                        <span>{{obj.starttime}}</span>
                    </div>
                    <span class='price'>价格:{{obj.price}}</span>
                </li>
            </ul>
        </div>
    </div>
</template>
<script type="text/javascript">
    import backtrack from '../../components/backtrack/backtrack.vue';
    import qs from 'qs';
    import axios from 'axios';
    import jQuery from 'jquery';
    export default {
        data:function(){
            return {
               dataset:[],
               status:'',
               status1:'',
               message:{0:'进行中',1:'待出行',3:'已消费',4:'已取消'},
               myname:window.localStorage.getItem('token').split('&')[1]
            }
        },
        components:{
            backtrack,
        },
        methods:{
            order1:function(){
                axios({
                    method:'POST',
                    url:'http://localhost:888/php/order.php',
                    data:qs.stringify({myname:this.myname}),
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded'
                    }
                }).then(res=>{
                    this.dataset = res.data
                    var numbers = res.data[0].status;
                })
            },
            order2:function(event){
                axios({
                    method:'POST',
                    url:'http://localhost:888/php/order.php',
                    data:qs.stringify({status:'0',myname:this.myname}),
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded'
                    }
                }).then(res=>{
                    this.dataset = res.data
                    
                })
            },
            order3:function(){
                axios({
                    method:'POST',
                    url:'http://localhost:888/php/order.php',
                    data:qs.stringify({status:'1',myname:this.myname}),
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded'
                    }
                }).then(res=>{
                    this.dataset = res.data
                    
                })
            },
            order4:function(){
                console.log(4)
            },
            removes:function(event){
                var a = event.target.parentNode.parentNode
                var orderId = jQuery('.ordernums').html()
                axios({
                    method:'POST',
                    data:qs.stringify({ordernumber:orderId,status:4}),
                    url:'http://localhost:888/php/remove.php',
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded'
                    }
                }).then(res=>{
                    jQuery(a).remove()
                })
            },
            payment:function(){
                console.log('payment')
                // this.$router.push({path:"/orderdetail/"+this.dataset[0].ordernumber})
            },
            myclick:function(){
                this.$router.push({name:'home'})
            }
        },
        mounted:function(event){
            // var myname = window.localStorage.getItem('token').split('&')[1]
            axios({
                method:'POST',
                url:'http://localhost:888/php/order.php',
                data:qs.stringify({myname:this.myname}),
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            }).then(res=>{
                this.dataset = res.data
                console.log(this.dataset)
            //     var numbers = res.data[0].status;
            //     if(numbers==='0'){
            //         this.message = '进行中'
            //     }else if(numbers==='1'){
            //         this.message = '已支付'
            //     }else if(numbers==='2'){
            //         this.message = '待出行'
            //     }else if(numbers==='3'){
            //         this.message = '已消费'
            //     }else if(numbers==='4'){
            //         this.message = '已取消'
            //     }
            })
        }
    }
</script>

<style type="text/css" scoped>
    .first{display:flex;flex-direction:column;}
    .active{background: #FFFF4D;}
    .header{font-size:0.573rem;padding-left:0.4rem;padding-top:0.533rem;height:1.333rem;}
    .header p{float: left;;}
    .header span{float: right;margin-right:3.333rem;}
    .nav ul{display:flex;}
    .nav ul li{flex:1;float: left;text-align: center;}
    .nav ul li span{display:inline-block;font-size:0.4rem;padding:20px;border-radius: 50%;}
    .main{flex:1;overflow:auto;height:14.667rem;}
    .main ul li{border-bottom: 0.013rem solid #ccc;}
    .main img{display:inline-block;width:4.0rem;height:2.667rem;float: left;}
    .main ul li span{font-size:0.4rem;display:inline-block;}
    .main ul li .m_img{float: right;width:5.293rem;height:2.667rem;position: relative;}
    /*.main ul li .m_img span:nth-of-type(3){position: absolute;top:1.333rem;left:0.0rem;}height:4.0rem;*/
    .price{color:red;}
    .main .m_head{padding-left:0.267rem;}
    .main .m_head span:nth-of-type(2){margin-left:4.0rem;}
    .main .m_head i{font-size:0.467rem;}
    .el-button.is-round{padding:0.28rem 0.4rem;font-size:0.413rem;}
</style>