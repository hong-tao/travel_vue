<template>
    <div class='bigBox'>
        <div class="top">
            <div class="top1">
                <backtrack></backtrack>
                <!-- <i class="el-icon-arrow-left"></i>  -->
                <i class="el-icon-setting" @click='setclick'></i> 
                <i class="el-icon-location-outline" @click='homeclick'></i> 
            </div>
            <div class="top2">
                <img src='../../assets/img/adf.txt.jpg' />
                <span @click='myclick' v-if='show'>{{message}}</span>
            </div>
        </div>
        <div class="main">
            <div class="main_t">
                <span>积分：<i>0</i></span>
                <span>优惠券：<i>0</i></span>
            </div>
            <div class="main_c">
                <ul>
                    <li>
                        <el-badge :value="num1" class="item">
                          <el-button size="medium" class='one'><i class='el-icon-tickets' @click='obligation'></i></el-button>
                        </el-badge>
                        <span>待付款</span>
                    </li>
                    <li>
                        <el-badge :value="num2" class="item">
                          <el-button size="medium" class='one'><i class='el-icon-goods'></i></el-button>
                        </el-badge>
                        <span>待出行</span>
                    </li>
                    <li>
                        <el-badge :value="num3" class="item">
                          <el-button size="medium" class='one'><i class='el-icon-edit-outline'></i></el-button>
                        </el-badge>
                        <span>待评价</span></li>
                    <li>
                        <el-badge :value="num4" class="item">
                          <el-button size="medium" class='one'><i class='el-icon-document'></i></el-button>
                        </el-badge>
                        <span>我的订单</span></li>
                </ul>
            </div>
            <div class="main_b">
                <ul>
                    <li><i class='el-icon-star-on'></i><span>我的收藏</span></li>
                    <li><i class='el-icon-news'></i><span>自游通卡</span></li>
                    <li><i class='el-icon-tickets'></i><span>常用信息</span></li>
                    <li><i class='el-icon-sold-out'></i><span>推荐有礼</span></li>
                    <li><i class='el-icon-menu'></i><span>专属顾问</span></li>
                    <li><i class='el-icon-printer'></i><span>企业用户</span></li>
                </ul>
            </div>
        </div>
    </div>
</template>

<script type="text/javascript">
    import backtrack from '../../components/backtrack/backtrack.vue'
    import qs from 'qs'
    import axios from 'axios'
    export default {
        data:function(){
            return {
                show:'true',
                message:'登录/注册',
                token:window.localStorage.getItem('token'),
                num1:'',
                num2:'',
                num3:'',
                num4:""
            }
        },
        methods:{
            myclick:function(){
                if(this.message==='登录/注册'){
                    this.$router.push({name:'login'})
                }
            },
            setclick:function(){
                // let token = window.localStorage.getItem('token');
                if(this.token){
                    this.$router.push({name:'setting'})
                }else{
                    this.$router.push({name:'login'})
                }
            },
            obligation:function(){
                if(this.token){
                    this.$router.push({name:'order'})
                }else{
                    this.$router.push({name:'login'})
                }

            },
            homeclick:function(){
                this.$router.push({name:'home'})
            }
        },
        mounted:function(){
            let token = window.localStorage.getItem('token');
            if(token){
                let name = token.split('&')[1];
                this.message = name; 
                this.show = 'false';
            }
            
        },
        components:{
            backtrack,
        }
    }
</script>

<style type="text/css">
    .item{margin-top:-0.4rem;}
    .one{border:0;padding:0 0;}
    .bigBox{
        width:10.0rem;
        height:17.787rem;
        
        background: #EFEEF4;
    }
    .top{
        height:4.8rem;
        padding-top:0.813rem;
        background: #FFB023;
    }
    .top1{
        height:0.587rem;
        padding-left:0.493rem;
        padding-right:0.267rem;
        font-size:0.587rem;
        color:#fff;
    }
    .top1>div{display:inline-block;}
    .top1 i:nth-of-type(1),.top1 i:nth-of-type(2){
        float: right;
        margin-left:0.267rem;

    }
    .top2{
        height:3.387rem;
        line-height:3.387rem;

    }
    .top2 img{
        width:1.733rem;
        margin-top:0.413rem;
        
    }
    .top2 span{
        font-size:0.533rem;
        color:#fff;
        display:inline-block;
    }
    .main{
        height:9.333rem;

    }
    .main_t{
        padding-left:1.733rem;
        padding-right:1.493rem;
        height:1.627rem;
        background: #fff;


    }
    .main .main_t span{
        display:inline-block;
        height:1.627rem;
        line-height: 1.627rem;
        font-size:0.453rem;
    }
    .main .main_t span i{
        font-style: normal;
        color:#F99519;
    }
    .main .main_t span:nth-of-type(2){
        float: right;

    }

    .main .main_c{
        margin-top:0.227rem;
        text-align:center;
        padding-left:0.267rem;
        padding-top:0.52rem;
        height:2.44rem;
        background: #fff;
    }
    .main .main_c ul li{
        float: left;
        width:2.24rem;
    }
    .main .main_c ul li i{
        display:block;
        font-size:0.827rem;
        margin-bottom:0.28rem;
    }
    .main .main_c ul li span{
        display:block;
        font-size:0.32rem;
    }
    .main_b{
        height:4.8rem;
        margin-top:0.267rem;
        background: #fff;
        text-align:center;
        padding-left:0.267rem;
        padding-top:0.52rem;
    }
    .main_b ul li{
        float: left;
        width:2.24rem;
        height:2.4rem;
        text-align: center;
    }
    .main_b ul li i{
        display:block;
        font-size:0.773rem;
        margin-bottom:-0.267rem;
    }
    .main_b ul li span{
        font-size:0.333rem;
    }
</style>