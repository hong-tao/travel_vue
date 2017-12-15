<template>
    <div>
        <div class="header">
            <backtrack></backtrack>
            <span>收银台</span>
        </div>
        <div class="main1">
            <p>待支付金额<span>￥{{money}}</span></p>
            <p>订单编号<span>{{ordernumber}}</span></p>
        </div>
        <div class="footer">
            <!-- <input type="button" value='支付' @click='myclick'/> -->
            <el-button
                type="primary"
                @click="openFullScreen"
                v-loading.fullscreen.lock="fullscreenLoading" class='zhifu' v-if='show'>
                支付
            </el-button>
            <el-button class='zhifu' v-if='show1'  disabled="disabled">已支付完成</el-button>
        </div>
    </div>
</template>
<script type="text/javascript" scoped>
    import backtrack from '../../components/backtrack/backtrack.vue';
    import qs from 'qs'
    import axios from 'axios'
    export default {
        data:function(){
            return {
                money:'',
                ordernumber:'',
                fullscreenLoading: false,
                show:true,
                show1:false
            }
        },
        components:{
            backtrack,
        },
        methods:{
            myclick:function(){
                axios({
                    method:'POST',
                    url:'http://localhost:888/php/remove.php',
                    data:qs.stringify({ordernumber:this.ordernumber,status:1}),
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded'
                    }
                }).then(res=>{
                    console.log(res)
                    
                })    
            },
            openFullScreen() {
               this.fullscreenLoading = true;
               axios({
                   method:'POST',
                   url:'http://localhost:888/php/remove.php',
                   data:qs.stringify({ordernumber:this.ordernumber,status:1}),
                   headers: {
                       'Content-Type': 'application/x-www-form-urlencoded'
                   }
               }).then(res=>{
                   if(res.data){
                       setTimeout(() => {
                         this.fullscreenLoading = false;
                         this.show=false;
                         this.show1 = true
                         this.$router.push({name:'order'})
                       }, 2000);
                   }
               })
               
            }
        },
        mounted:function(){
            this.ordernumber = this.$route.params.productid;
            var myname = window.localStorage.getItem('token').split('&')[1]
            axios({
                method:'POST',
                url:'http://localhost:888/php/order.php',
                data:qs.stringify({myname:myname,ordernumber:this.ordernumber}),
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            }).then(res=>{
                console.log(res)
                this.money = res.data[0].price
            })
        }
    }
</script>

<style type="text/css">
    html,body{height:100%;}
    .header{height:0.933rem;}
    .header div{display:inline-block;}
    .header{font-size:0.573rem;padding-left:0.4rem;padding-top:0.533rem;}
    .header>span{margin-left:2.8rem;}
    .main1{margin-top:0.8rem;font-size:0.533rem;}
    .main1 p{border-top:0.013rem solid #ccc;height:1.333rem;line-height: 1.333rem;padding-left:0.4rem;}
    .main1 p span{float: right;margin-right:0.4rem;color:#FFBF00;}
    .main1 p:nth-of-type(2) span{font-size:0.4rem;color:#000;}
    .footer input{position: absolute;bottom:0.0rem;width:100%;display:block;font-size:0.667rem;background: #FFFF26;height:1.333rem;}
    .footer .zhifu{position: absolute;bottom:0.0rem;width:100%;display:block;display:block;font-size:0.667rem;height:1.333rem;}
</style>