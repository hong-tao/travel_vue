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
            <div class="main_person" @click='incontact'>
                <span>{{message}}</span>
                <i class='el-icon-arrow-right'></i>
            </div>
            <div class="main_price">
                <span>成人:￥<i>{{price}}</i>/人</span>
                <el-input-number v-model="num1" @change="handleChange" :min="1" :max="10" label="描述文字"></el-input-number>
            </div>
            <div class="tourist">
                <div class="tourist_f">
                    <p>游客信息后补</p>
                    <p>若选择资料后补，需要后续联系客服进行补录</p>
                </div>
                <div class="tourist_s">
                    <el-switch
                      v-model="value2"
                      active-color="#13ce66"
                      inactive-color="#ff4949" class='tourist_two'>
                    </el-switch>
                </div>
            </div>
            <div class="bill">
                <h4>发票信息</h4>
                <span>支付成功之后，可通过会员中心-选择订单-查看详情-补开发票-申请发票</span>
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
                total_price:'',
                message:'请填写联系人',
                productid:'',
                startaddress:'',
                status:0,
                imgurl:"",
                value1: true,
                value2: true
            };
        },
        methods: {
          handleChange(value){
            this.total_price = value*this.price;
          },
          totalclick:function(){
            var myname = window.localStorage.getItem('token').split('&')[1]
            axios({
                method:'POST',
                url:'http://localhost:888/php/createOrder.php',
                data:qs.stringify({
                    productid:this.productid,
                    date:this.date,
                    descriptName:this.descriptName,
                    num1:this.num1,
                    message:this.message,
                    total_price:this.total_price,
                    status:this.status,
                    image:this.imgurl,
                    myname:myname

                }),
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            }).then(res=>{
                console.log(res)
                this.$router.push({name:'payment',params:{productid:this.productid}})
            })
          },
          incontact:function(){
            this.$router.push({name:'contact'})
          }
        },
        components:{
            backtrack,
        },
        mounted:function(){
            this.productid = this.$route.params.productid;
            // console.log(this.productid)
            var nick = window.localStorage.getItem('token').split('&')[1];
            axios({
                method:'POST',
                url:'http://localhost:888/php/orderFillin.php',
                data:qs.stringify({productID:this.productid}),
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                }
            }).then(res=>{
                console.log(res)
                this.startaddress = res.data[0].origin;
                this.imgurl = res.data[0].url.split(',')[0];
                console.log(this.imgurl)
                this.date = res.data[0].date;
                this.descriptName = res.data[0].descriptName;
                this.price = res.data[0].price;
                this.total_price = this.num1*res.data[0].price;
            })
            axios({
                method:'post',
                url:'http://localhost:888/php/contact.php',
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                },
                data:qs.stringify({username:nick})
            }).then(res=>{
                console.log(res.data)
                this.message = res.data[0].realname+res.data[0].phone;
            })


        }
    }
</script>

<style type="text/css" scoped>
    .header{height:1.413rem;}
    .header div{display:inline-block;}
    .header{font-size:0.573rem;padding-left:0.4rem;padding-top:0.533rem;}
    .header>span{margin-left:2.8rem;}
    .main{height:15.067rem;}
    .main .main_h{height:2.667rem;background: #FEE004;margin-top:0.533rem;padding-left:0.467rem;padding-top:0.52rem;}
    .main_h p{font-size:0.4rem;margin-bottom:-0.4rem;}
    .main_h span{font-size:0.4rem;}
    .main .main_person{height:1.907rem;border-bottom: 0.013rem solid red;border-top:0.013rem solid red;margin-top:0.667rem;padding-top:0.24rem;padding-left:0.4rem;}
    .main_person span{font-size:0.4rem;color:#000;}
    .main_person i{font-size:0.4rem;color:#000;margin-right:0.4rem;float: right;margin-top:0.6rem;}
    .main_price{font-size:0.373rem;margin-top:0.005rem;height:2.0rem;line-height: 1.36rem;padding-left:0.4rem;border-top:0.267rem solid #ccc;border-bottom:0.267rem solid #ccc;}
    .main_price>div{float: right;margin-right:0.4rem;margin-top:0.467rem;font-size:0.533rem;}
    .main_price span>i{font-style: normal;}
    .tourist_f{float: left;width:7.067rem;font-size:0.4rem;padding-left:0.4rem;}
    .tourist_f p{height:0.76rem;line-height: 0.76rem;}
    .tourist_f p:first-child{font-weight:bold;}
    .tourist_s{height:3.067rem;border-bottom:0.267rem solid #ccc;}
    .el-switch{float: right;margin-right:1.333rem;margin-top:1.067rem;}
    .tourist_two{display:inline-block;height:0.667rem;}
    .bill h4{display:inline-block;height:1.147rem;line-height: 1.147rem;font-size:0.4rem;}
    .bill span{float: right;font-size:0.333rem;width:8.0rem;height:1.147rem;line-height: 0.36rem;margin-top:0.4rem;}
    .order{display:flex;flex-direction: column;}
    .total{height:1.307rem;padding-left:0.017rem;}
    .total span{font-size:0.467rem;line-height: 1.307rem;float: left;margin-left:0.4rem;}
    .total input{float: right;font-size:0.467rem;padding:0.333rem 0.667rem;background: #FED700;border:0;}
    .total i{font-style: normal;}
</style>