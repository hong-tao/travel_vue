<template>
    <div class='order'>
        <div class="header">
            <backtrack></backtrack>
            <span>订单填写</span>
        </div>
        <div class="main">
            <div class="main_h">
                <p>{{descriptName}}</p>
                <span>{{date}}</span>
            </div>
            <div class="main_person">
                <span>请选择联系人</span>
                <i class='el-icon-arrow-right'></i>
            </div>
            <div class="main_price">
                <span>成人:￥<i>{{price}}</i>/人</span>
                <el-input-number v-model="num1" @change="handleChange" :min="1" :max="10" label="描述文字"></el-input-number>
            </div>
        </div>
        <div class="total">
            <span>总额:￥<i>{{total_price}}</i></span>
            <input type="button" value='提交订单' @click='totalclick'/>
        </div>
    </div>

</template>
<script type="text/javascript">
    import backtrack from '../../components/backtrack/backtrack.vue';
    import axios from 'axios';
    import qs from 'qs'
    export default {
        data:function(){
            return {
                num1:1,
                date:'',
                descriptName:"",
                price:'',
                total_price:''
            };
        },
        methods: {
          handleChange(value){
            this.total_price = value*this.price;
          },
          totalclick:function(){
            console.log(1)
          }
        },
        components:{
            backtrack,
        },
        mounted:function(){
            var productid = this.$route.params.productid;
            console.log(productid)
            axios({
                method:'POST',
                url:'http://localhost:888/php/orderFillin.php',
                data:qs.stringify({productID:productid}),
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            }).then(res=>{
                console.log(res)
                this.date = res.data[0].date;
                this.descriptName = res.data[0].descriptName;
                this.price = res.data[0].price;
                this.total_price = this.num1*res.data[0].price;
            })

        }
    }
</script>

<style type="text/css" scoped>
    .header{height:0.933rem;}
    .header div{display:inline-block;}
    .header{font-size:0.573rem;padding-left:0.4rem;padding-top:0.533rem;}
    .header>span{margin-left:2.8rem;}
    .main{flex:1;height:15.6rem;}
    .main .main_h{height:2.133rem;background: #FEE004;margin-top:0.533rem;}
    .main_h p{font-size:0.4rem;}
    .main_h span{font-size:0.4rem;}
    .main .main_person{height:1.907rem;border-bottom: 0.013rem solid red;border-top:0.013rem solid red;margin-top:0.667rem;padding-top:0.24rem;padding-left:0.4rem;}
    .main_person span{font-size:0.4rem;color:#DBDBDB;}
    .main_person i{font-size:0.4rem;color:#000;margin-left:6.4rem;}
    .main_price{font-size:0.373rem;margin-top:0.533rem;}
    .main_price>div{float: right;margin-right:0.4rem;}
    .main_price span>i{font-style: normal;}
    .order{display:flex;flex-direction: column;}
    .total{height:1.307rem;padding-left:0.017rem;}
    .total span{font-size:0.467rem;line-height: 1.307rem;float: left;margin-left:0.4rem;}
    .total input{float: right;font-size:0.467rem;padding:0.333rem 0.667rem;background: #FED700;border:0;}
    .total i{font-style: normal;}
</style>