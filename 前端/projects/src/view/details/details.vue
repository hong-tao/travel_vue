<template>
    <div class="bigbox"  v-loading="loading">
        <div class="header">
            <backtrack></backtrack>
        </div>
        <div style="overflow: auto;height: 16.667rem;">
            <!--轮播图-->
            <el-carousel indicator-position="none" arrow="never" height='4.667rem' width="100%">
                <el-carousel-item v-for="(item,idx) in dataUrl" :key="item">
                    <img :src="item" />
                    <span>{{idx+1}}/n</span>
                </el-carousel-item>
            </el-carousel>
            <!--基本信息-->
            <div class="dt-info">
                <h3 class='dt3'><span>{{dataset.name}}</span></h3>
                <div><span class="showPrice">{{dataPrice[0]}}</span>人起</div>
                <p>{{dataset.descriptName}}</p>
            </div>
            <!--travel-info-->
            <ul class="travel-info">
                <li>出发地<span>{{dataset.origin}}</span></li>
                <li>目的地<span>{{dataset.destination}}</span></li>
                <li>供应商<span>广州广之旅国际旅行社股份有限公司</span><i class="ziying">自营</i></li>
            </ul>
            <ul class="theme">
               <li class="ziying" v-for="(val,idx) in dataTheme" style="float:left;color: coral;">{{val}}</li>
            </ul>
            <div style="padding-bottom: 12px;background: #CDCDCD;"></div>
            <!--日历-->
            <div class="dateSelector">
                <select name="dateSelector" v-model="selected" >
                    <option disabled value="">请选择</option>
                    <option v-for="(val,idx) in dataTravelDays" >{{val+'&nbsp;&nbsp;&nbsp;'+dataTravelPrices[idx]}}</option>
                </select>
                <span>{{selected}}</span>
            </div>
            <!--四大详情-->
            <div class="productDetails" >
                <div id="titles" @click = handleClick($event) style="height:0.8rem;font-size:0.4rem;
                    border-bottom: 0.027rem solid #ffb12e;background:#fff;padding: 0.133rem 0;"
                     :class="titlesFixed == true ? 'isFixed' :''">
                    <a href="#onePart" class="titlesChild active">产品特色</a>
                    <a href="#twoPart" class="titlesChild">行程介绍</a>
                    <a href="#threePart" class="titlesChild">预定须知</a>
                    <a href="#fourPart" class="titlesChild">注意事项</a>
                </div>
                <div class="contents">
                    <div class="contentsChild" id="onePart">
                        <h2>产品特色</h2>
                        <p id="cpts">
                            <p  v-for="(val,idx) in dataFeatures">{{val}}</p>
                        </p>
                    </div>
                    <div class="contentsChild" id="twoPart">
                        <h2>行程介绍</h2>
                        <div class="stroke-num bordbox">
                            <p id="cfrq">{{dataset.date}}</p>
                            <p id="tcbh">{{dataset.packageID}}</p>
                        </div>
                        <ul class="stroke-box">
                            <li v-for="(val,idx) in dataDays">
                                <p class="stroke-day">{{dataDays[idx]}}</p>
                                <h3 class="stroke-Abstract">{{dataAbstract[idx]}}</h3>
                                <p></p>
                                <p v-for="(val) in dataDetails[idx].split(';')">{{val}}</p>
                                <p></p>
                                <p><i class="el-icon-location" style="color: #ffb12e;"></i>{{dataHotel[idx]}}</p>
                                <p><i class="el-icon-time" style="color: #ffb12e;"></i>{{dataCatering[idx]}}</p>
                            </li>
                        </ul>
                        
                    </div>
                    <div class="contentsChild" id="threePart">
                        <h2>预定须知</h2>
                        <p></p>
                        <p>{{dataset.scheduleMatter}}</p>
                        <p></p><p></p>
                        <p>
                            <span style="font-family:微软雅黑,宋体,arial,sans-serif; font-size:0.213rem">{{dataset.scheduleTime1}}</span><br />
                            <span style="font-family:微软雅黑,宋体,arial,sans-serif; font-size:0.213rem">{{dataset.scheduleTime2}}</span>
                        </p>
                        <p></p><p></p>
                        <p>一、&nbsp;&nbsp; &nbsp;团费报价 ：<br>
                        &nbsp; &nbsp; &nbsp; &nbsp;元/成人； &nbsp; &nbsp; &nbsp; 元/小孩（不满12周岁）；
                         &nbsp; &nbsp; 元/婴儿（不满2周岁）；<br>全程酒店补单房差 元；不占床位减 
                         &nbsp; &nbsp; &nbsp; 元 （按国际规定成人必须占床）<br>
                        </p>
                        <p v-for="(val,idx) in dataScheduleFirst">{{val}}</p>
                        <p></p><p></p>
                        <p>二、行程标准：</p>
                        <p v-for="(val,idx) in dataScheduleSecond">{{val}}</p>
                        <p></p><p></p>
                        <p>三、友情提示：</p>
                        <p v-for="(val,idx) in dataScheduleThird">{{val}}</p>
                        <p></p><u>{{dataset.scheduleTip}}</u>
                        <p v-for="(val,idx) in dataScheduleThird2">&nbsp;&nbsp;{{val}}</p>
                        <p></p><p></p>
                        <p><u v-for="(val,idx) in dataScheduleForth">{{val}}</u></p>
                        <p v-for="(val,idx) in dataScheduleFifth">{{val}}</p>
                        
                    </div>
                    <div class="contentsChild" id="fourPart">
                        <h2>注意事项</h2>
                        <p v-for="(val,idx) in dataAttention">{{val}}</p>
                    </div>
                    
                </div> <!-- contents盒子-->
            </div>
            
        </div>
            <!--底部-->
            <div class="footer" @click='productNum()' >立即预定</div>
        
    </div>
</template>
<script>
    import axios from 'axios';
    import qs from 'qs';
    import backtrack from '../../components/backtrack/backtrack.vue' 
    export default {
        data() {
                return {
                    n: '',
                    dataUrl: '',
                    dataset: '',
                    dataPrice:'',
                    value8:'',
                    activeName2: 'first',
                    dataFeatures:'',
                    dataTheme:'',
                    dataDays:'',
                    dataAbstract:'',
                    dataDetails:'',
                    dataHotel:'',
                    dataCatering:'',
                    dataAttention:'',
                    dataScheduleFirst:'',
                    dataScheduleFifth:'',
                    dataScheduleSecond:'',
                    dataScheduleThird:'',
                    dataScheduleThird2:'',
                    dataScheduleForth:'',
                    productID:'',
                    titlesFixed:'',
                    dataTravelDays:'',
                    dataTravelPrices:'',
                    selected:'',
                    loading: false
                    
                    
                    
                }
            },
        methods: {
            handleClick :function($event){
                var titlesChild = document.querySelectorAll('.titlesChild');
                titlesChild.forEach(function(item){
                    item.classList.remove('active');
                })
                $event.srcElement.classList.add('active');
            },
            handleScroll(e){
                if (e.target.scrollTop > 580) {
                    this.titlesFixed = true;
                    document.querySelector('.contents').style.paddingTop = '70px';
                } else {
                    this.titlesFixed = false;
                    document.querySelector('.contents').style.paddingTop = '0px';

                }
            },
            productNum:function(){
                var token = window.localStorage.getItem('token');
                console.log(token)
                if(token){
                    this.$router.push({
                        name:'orderdetail',
                        params:{'productid':this.productID}
                    })
                }else{
                    this.$router.push({name:'login'})
                }

            }
             
            
        },
            created:function(){
                this.productID = this.$route.params.productID;
                this.loading = true;
                axios({
                    url: 'http://localhost:888/php/details.php?productID='+this.productID,
                    method: 'post',
                    data: qs.stringify({
                        productID: this.productID
                    }),
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded'
                    }
                }).then(res => {
                    this.loading = false;
                    this.dataset = res.data.data[0];
                    this.dataUrl = res.data.data[0].url.split(',');
                    //dataset为存在图片路径的数组
                    this.n = this.dataUrl.length;
                    this.dataPrice=this.dataset.travelPrice.split(',');
                    this.dataTheme = this.dataset.theme.split(',');
                    this.dataFeatures = this.dataset.productFeatures.split(',');
                    this.dataDays = this.dataset.planDay.split(',');
                    this.dataAbstract = this.dataset.planAbstract.split(',');
                    this.dataDetails = this.dataset.planDetails.split(',');
                    this.dataHotel = this.dataset.planHotel.split(',');
                    this.dataCatering = this.dataset.planCatering.split(',');
                    this.dataAttention = this.dataset.attention.split(',');
                    this.dataScheduleFirst = this.dataset.scheduleFirst.split(',');
                    this.dataTravelDays = this.dataset.travelDays.split(',');
                    this.dataTravelPrices = this.dataset.travelPrice.split(',');
                    this.dataScheduleFifth = this.dataset.scheduleFifth.split(',');
                    this.dataScheduleForth = this.dataset.scheduleForth.split(',');
                    this.dataScheduleThird = this.dataset.scheduleThird.split(',');
                    this.dataScheduleThird2 = this.dataset.scheduleThird2.split(',');
                    this.dataScheduleSecond = this.dataset.scheduleSecond.split(',');
                  
                })
            },
            mounted: function() {
                
                //监听scroll
                window.addEventListener('scroll', this.handleScroll,true);
               
            },
            destroyed () {
                window.removeEventListener('scroll', this.handleScroll,true)
            },
            components:{
                backtrack,
            }
    }
</script>

<style lang="scss" scoped>
    .header{position:absolute;z-index:999;font-size:0.8rem;}
    /*轮播图*/
    .bigbox{display: flex;flex-flow: column wrap;justify-content: flex-start;height: 100%;}
    img {
        text-align: center;
        vertical-align: middle;
        display: block;
        width:100%;
        height:100%;
    }
    /*html{font-size:1.0rem !important;width: 100%;-webkit-tap-highlight-color: transparent;height: 100%;}*/
    body{text-rendering: optimizeLegibility;-webkit-font-smoothing: antialiased;}
    *{ box-sizing: border-box;}
    .dateSelector{
     width: 100%;
     text-align: center;
     line-height: 0.266rem;
     select{
         width: 50%;
         height: 0.66rem;
         font-size: 0.4rem;
         padding: 0;
    }
     span{
         font-size:0.4rem;
    }
}
 .dt-info {
     padding: 0.133rem 0.213rem 0.13rem 0.213rem;
     position: relative;
     height: 3.6rem;
     .dt3{
         color: #45b167;
         /*overflow: hidden;*/
         text-overflow: ellipsis;
         /*display: -webkit-box;
         -webkit-line-clamp: 2;
         -webkit-box-orient: vertical;*/
         font-size:0.8rem;
         /*width: 4.5733rem;*/
         height: 1.333rem;
         span{
             color: #242424;
             font-size: 0.213rem;
             font-weight: bold;
        }
    }
     div{
         font-size:0.4rem;
         color: #ff8c00;
         /*margin-bottom: -0.066rem;*/
         span{
             font-size:0.667rem;
        }
    }
     p{
         color: #ff8c00;
         font-size:0.4rem;
         margin-top: 0.133rem;
         line-height: 0.533rem;
         margin: 0;
         height:1.333rem;
         /*overflow: hidden;*/
    }
}
 .travel-info{
     margin: 0.266rem 0.133rem;
     color:#7c7c7c;
     font-size:0.4rem;
     span{
         display: inline-block;
         margin-left: 0.4rem;
         color: #242424;
    }
}
 .ziying{
     position: relative;
     display: inline-block;
     height: 0.186rem;
     line-height: 0.186rem;
     font-size: 0.4rem;
     padding: 00.066rem;
     font-style: normal;
     color: #ff5c47;
     margin-left: 0.066rem;
}
 .ziying::after{
     position: absolute;
     left: 0;
     top: 0;
     content: '';
     width: 200%;
     height: 200%;
     border-radius: 0.186rem;
     -webkit-transform: scale(.5);
     transform: scale(.5);
     -webkit-transform-origin: top left;
     transform-origin: top left;
     border: 1px solid #ff5c47;
}
 .theme{
     margin: 0.13rem 0.133rem;
     height: 0.26rem;
}
/*产品详情*/
 .productDetails{
    /*吸顶菜单*/
     .isFixed{
         position:fixed;
         top:0;
         width:100%;
         background-color:#fff;
         z-index:999;
    }
     .titlesChild{
         display: inline-block;
         text-align: center;
         height:0.533rem;
         line-height:0.533rem;
         width: 25%;
         border-radius: 0.186rem;
         float:left;
         color:#000;
    }
     margin: 0.133rem;
     font-size: 0.133rem;
     h2{
         font-size: 0.667rem;
         font-weight: normal;
         margin-top: 0.2666rem;
         &:before{
             content: '';
             display: inline-block;
             width: 0.0266rem;
             height: 0.667rem;
             background-color: #ffb12e;
             vertical-align: -0.04rem;
             margin-right: 0.12rem;
        }
    }
     #cpts{
         margin: 0.26rem 0;
    }
     p{
         font-size:0.4rem;
         color: #434343;
         line-height: 0.4rem;
         margin-top: 0.133rem;
    }
     .active{
         background: #ffb12e;
    }
     .contentsChild:target{
         padding-top: 0.6rem;
    }
     .stroke-num{
         position: relative;
         padding: 0.04rem 0.16rem;
         margin-top: 0.2rem;
         font-size: 0.13rem;
         p{
             color: #ffb12e;
        }
    }
     .bordbox::before{
         border: 1px solid #ffb12e;
         content: '';
         position: absolute;
         top: 0;
         left: 0;
         width: 200%;
         height: 200%;
         transform: scale(.5);
         transform-origin: top left;
    }
     .stroke-box{
         padding: 0.213rem 0 0 0.2133rem;
         text-rendering: optimizeLegibility;
         -webkit-font-smoothing: antialiased;
    }
     .stroke-box li{
         color: #242424;
         font-family: '微软雅黑';
         word-wrap: break-word;
         font-weight: 400;
         position: relative;
         padding: 000.26rem 0.33rem;
         border-left: 0.013rem dashed #ffb12e;
         .stroke-day{
             position: absolute;
             top: 0;
             left: -0.213rem;
             background-color: #fff;
             width: 0.8rem;
             height: 0.8rem;
             line-height: 0.8rem;
             font-size: 0.533rem;
             color: #ffb12e;
             border: 0.013rem solid;
             border-radius: 50%;
             text-align: center;
        }
         .stroke-Abstract{
             color: #303131;
             font-size: 0.533rem;
             line-height: 0.533rem;
             margin: 0;
             padding: 0;
             margin-left:0.267rem
        }
         p{
             font-size: 0.4rem;
             line-height: 0.4rem;
             margin-top: 0.106rem;
        }
         i{
             margin-right: 0.133rem;
        }
    }
}
 .footer{
     height: 1.333rem;
     background: yellow;
     flex:1;
     text-align: center;
     line-height: 1.333rem;
     font-size: 0.533rem;
}
    
    
    
       
  
</style>