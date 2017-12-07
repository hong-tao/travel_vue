<template>
    <div class='bigBox'>
        <div class="top">
            <div class="top1">
                <i class="el-icon-arrow-left"></i> 
                <i class="el-icon-setting"></i> 
                <i class="el-icon-bell"></i> 
            </div>
            <div class="top2">
                <img src='../../assets/img/adf.txt.jpg' />
                <span @click='myclick'>登录/注册</span>
            </div>
        </div>
        <div class="main">
            <div class="main_t">
                <span>积分：<i>0</i></span>
                <span>优惠券：<i>0</i></span>
            </div>
            <div class="main_c">
                <ul>
                    <li><i class='el-icon-tickets'></i><span>待付款</span></li>
                    <li><i class='el-icon-goods'></i><span>待出行</span></li>
                    <li><i class='el-icon-edit-outline'></i><span>待评价</span></li>
                    <li><i class='el-icon-document'></i><span>我的订单</span></li>
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
    export default {
        methods:{
            myclick:function(){
                this.$router.push({name:'login'})
            }
        }
    }
</script>

<style type="text/css">
    
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
    .top1 i:nth-of-type(2),.top1 i:nth-of-type(3){
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