<template>
	<div class='first'>
		<div class="header1">
			<span>广州</span>
			<div class="import">
				<i class='el-icon-search'></i>
				<input type="text" />
				<i class='el-icon-menu'></i>
			</div>
			<i class='el-icon-phone'></i>
		</div>
		<banner></banner>
		<div class='main'>
			<div class="main_h">
				<ul>
					<li v-for='(value,index) in dataset' @click='goodslistclick'>
						<img :src=value />
					</li>
				</ul>
			</div>
			<div class="stem">
				<ul>
					<li><img src='../../assets/limit/1.jpg'/></li>
					<li><img src='../../assets/limit/2.jpg'/></li>
					<li><img src='../../assets/limit/4.jpg'/></li>
				</ul>
			</div>
		</div>
		<div class="footer">
			<ul>
				<li><i class='el-icon-news'></i><span>首页</span></li>
				<li @click='hotelclick'><i class='el-icon-date'></i><span>酒店</span></li>
				<li><i class='el-icon-picture-outline'></i><span>支付</span></li>
				<li @click='information'><i class='el-icon-setting'></i><span>我的</span></li>
			</ul>
		</div>
	</div>
</template>
	
<script type="text/javascript">
	import banner from '../../components/banner/banner1.vue';
	export default {
		data:function(){
			return {
				dataset:['../../src/assets/gty/g1.jpg','../../src/assets/gty/g2.jpg','../../src/assets/gty/g3.jpg','../../src/assets/gty/g4.jpg','../../src/assets/gty/g5.jpg','../../src/assets/gty/g6.jpg','../../src/assets/gty/g7.jpg','../../src/assets/gty/g8.jpg','../../src/assets/gty/g9.jpg','../../src/assets/gty/g10.jpg','../../src/assets/gty/g11.jpg','../../src/assets/gty/g12.jpg','../../src/assets/gty/g13.jpg','../../src/assets/gty/g14.jpg']
			}
		},
		components:{
			banner,
		},
		methods:{
			information:function(){
				this.$router.push({name:'information'})
			},
			goodslistclick:function(){
				this.$router.push({name:'goodslist'})
			},
			hotelclick:function(){
				this.$router.push({name:'hotel'})
			}
		}
	}	
</script>

<style type="text/css" scoped>
	html,body{height:100%;}
	.first{display:flex; flex-direction:column;height:100%;}
	.header1{display:flex;justify-content:space-around;text-align:center;background: #FFFF00;height:1.333rem;line-height: 1.333rem;}
	.import{width:5.627rem;border:0.013rem solid #ccc;background: rgba(221,221,221,.2);font-size:0.533rem;border-radius: 0.667rem;}
	.import input{border:0;display:inline-block;width:4.133rem;background: rgba(221,221,221,.2);}
	.header1 span{font-size:0.533rem;}
	.header1 i{font-size:0.533rem;margin-top:0.4rem;}
	.el-carousel{margin-bottom:0.267rem;}
	.main{flex:1;overflow:auto;height:10.667rem;}
	.main_h ul li{float: left;margin-right:0.133rem;}
	.stem{margin-top:-0.533rem;}
	.stem ul li{float: left;}
	.footer{height:1.333rem;}
	.footer ul{display:flex; justify-content:space-around;}
	.footer ul li{flex:1;text-align: center;}
	.footer ul li i{display:block;}
	.footer ul li span{display:block;font-size:0.4rem;}
</style>