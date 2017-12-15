<template>
	<div class="listBox"  v-loading="loading">
        <div class="header">
            <backtrack></backtrack>
            <span>自由行</span>
        </div>
		<el-carousel indicator-position="none" arrow="never" height='250px' width="100%">
            <el-carousel-item v-for="(item,idx) in imgs" :key="item">
                <img :src="item" />
            </el-carousel-item>
        </el-carousel>
        <div class="list">
            <div id="Listcontent">
                <ul>
                    <li v-for="(val,idx) in dataset" class="listLi" @click='turnTo(dataset[idx].productID)'>
                        <img :src="dataset[idx].url.split(',')[0]" alt="" class="listImg" />
                        <h4>{{dataset[idx].name}}</h4><br />
                        <div>
                            <span v-for="(value) in dataset[idx].theme.split(',')"
                            v-if="value" class="ziying">{{value}}</span>
                        </div>
                        <p class="price"><span>￥</span>{{dataset[idx].price}}</p>
                    </li>
                    
                </ul>
            </div>
        </div>
	</div>
</template>

<script>
    import axios from 'axios';
    import qs from 'qs';
    import backtrack from '../../components/backtrack/backtrack.vue';
	export default{
		data(){
		    return{
		        kind:"跟团游",
		        loading:false,
		        dataset:'',
		        imgs:["src/view/details/img/list1.jpg","src/view/details/img/list2.jpg","src/view/details/img/list3.jpg",
		        "src/view/details/img/list4.jpg","src/view/details/img/list5.jpg","src/view/details/img/list6.jpg"]
		    }  
		},
		methods:{
		   turnTo:function(productID){
		       this.$router.push({name:'details',
		       params:{productID:productID}})
		   }
		},
		
		beforeMount:function(){
		    this.loading = true,
		    axios({
                    url: 'http://localhost:888/php/goodslist.php?kind='+this.kind,
                    method: 'post',
                    data: qs.stringify({
                        productID: this.productID
                    }),
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded'
                    }
                }).then(res => {
                    this.loading=false;
                    this.dataset = res.data.data; 
                 
                })
          
		},
        components:{
            backtrack,
        }
	}
</script>

<style lang="scss" scoped>
    /*.listBox{height: 2000px;}*/
    .header{height:0.933rem;background: #FFFF00;}
    .header div{display:inline-block;}
    .header{font-size:0.573rem;padding-left:0.4rem;padding-top:0.133rem;}
    .header>span{margin-left:2.8rem;}
    img{width: 100%;height: 2.667rem;}
    .listsTitle{display: block;text-align: center;height: 0.333rem;
        line-height:0.333rem;width: 25%;border-radius: 0.187rem;float:left;color:#000;}
    .active{background: #ffb12e;}
    .listLi{height: 2.0rem;widows: 100%;border-bottom: 0.013rem solid #ccc;margin-bottom: 0.133rem;position:relative;}
    .listImg{width: 40%;height: 100%;float: left;margin-right: 4%;}
    h4{font-size: 0.4rem;float:left;overflow: hidden;white-space: nowrap;
            width: 55%;text-overflow: ellipsis;margin: 0.133rem 0;}
    .listLi>div{position:absolute;left:350px;top:20px;}
    .ziying{position: relative;display: inline-block;height: 0.187rem;line-height: 0.187rem;
    font-size: 0.4rem;padding: 0 0.067rem;font-style: normal;color: #ff5c47;margin-left: 0.067rem;}
    /*.ziying::after{
        position: absolute;left: 0;top: 0;content: '';width: 250%;height: 400%;border-radius: 0.187rem;
        -webkit-transform: scale(.5);transform: scale(.5);-webkit-transform-origin: top left;transform-origin: top left;
        border: 0.013rem solid red;
    }*/
    .price{
        text-align: right;color: #ff8c00;font-size:0.533rem;font-weight: bold;margin: 0.133rem 10px;
        span{font-size: 0.4rem;}
    }
    
</style>