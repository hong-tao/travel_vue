<template>
    <div>
        <div class="header">
            <backtrack></backtrack>
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
                <li v-for='(obj,index) in dataset'>
                    <div class='m_head'>
                        <span class='ordernums'>{{obj.ordernumber}}</span>
                        <span v-if='obj.status===0'>进行中</span>
                        <span v-else-if='obj.status===1'>待出行</span>
                        <i class='el-icon-delete' @click='removes'></i>
                    </div>
                    <img :src='obj.images'/>
                    <div class='m_img'>
                        <span>{{obj.product}}</span>
                        <span>出发日期:{{obj.starttime}}</span>
                        <span>价格:{{obj.price}}</span>
                    </div>
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
               status:'new',
               status1:''
            }
        },
        components:{
            backtrack,
        },
        methods:{
            order1:function(){
                console.log(1)
            },
            order2:function(event){
                this.status = '';
                axios({
                    method:'POST',
                    url:'http://localhost:888/php/order.php',
                    data:qs.stringify({status:'0'}),
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded'
                    }
                }).then(res=>{
                    this.dataset = res.data
                })
            },
            order3:function(){
                console.log(3)
            },
            order4:function(){
                console.log(4)
            },
            removes:function(event){
                var a = event.target.parentNode.parentNode
                console.log(a)
                var orderId = jQuery('.ordernums').html()
                axios({
                    method:'POST',
                    data:qs.stringify({ordernumber:orderId}),
                    url:'http://localhost:888/php/remove.php',
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded'
                    }
                }).then(res=>{
                    jQuery(a).remove()
                })
            }
        },
        mounted:function(event){
            axios({
                method:'GET',
                url:'http://localhost:888/php/order.php',
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            }).then(res=>{
                this.dataset = res.data
            })
        }
    }
</script>

<style type="text/css" scoped>
    .active{background: #FFFF4D;}
    .header div{display:inline-block;}
    .header{font-size:0.573rem;padding-left:0.4rem;padding-top:0.533rem;}
    .header>span{margin-left:2.8rem;}
    .nav ul{display:flex;}
    .nav ul li{flex:1;float: left;text-align: center;}
    .nav ul li span{display:inline-block;font-size:0.4rem;padding:20px;border-radius: 50%;}
    /*background: #FFFF4D;*/
    .main ul li{height:4.0rem;border-bottom: 0.013rem solid #ccc;}
    .main img{display:inline-block;width:4.0rem;height:2.667rem;float: left;}
    .main ul li span{font-size:0.4rem;display:inline-block;}
    .main ul li .m_img{float: right;width:5.293rem;height:2.667rem;position: relative;}
    .main ul li .m_img span:nth-of-type(3){position: absolute;top:1.333rem;left:0.0rem;}
    .main .m_head{padding-left:0.267rem;}
    .main .m_head span:nth-of-type(2){margin-left:4.0rem;}
    .main .m_head i{font-size:0.467rem;}
    .el-button.is-round{padding:0.28rem 0.4rem;font-size:0.413rem;}
</style>