<template>
	<div>
		<div class="header">
			<backtrack></backtrack>
			<ul>
				<li>账号登录</li>
				<li>手机验证码登录</li>
			</ul>
		</div>
		<div class='main'>
			<form>
				<label for="name"><i></i></label>
				<input type="text" placeholder='手机号码/会员账号' id='name'/>
				<label for="psd"><i></i></label>
				<input type="password" placeholder='请输入密码' id='psd'/>
				<input type="button" value='登录' id='btn'/>
			</form>
			<div class='main_b'>
				<span>快速注册</span>
				<span>忘记密码</span>
			</div>
		</div>
	</div>
</template>

<script>
	import backtrack from '../../components/backtrack/backtrack.vue'
	export default {
		data:function(){
			return {

			}
		},
		components:{
			backtrack,
		}
	}
</script>

<style type="text/css" scoped>
	.header{
		height:3.2rem;
		background: #FFE22C;
	}
	.header span{
		padding-left:0.267rem;
		margin-top:0.533rem;
	} 
	.header ul li{
		margin-top:0.76rem;
		float: left;
		font-size:0.48rem;
		padding:0 1.0rem;
	}
	.main{
		width:8.947rem;
		margin:0 auto;
		padding-top:0.52rem;
	}
	form input{
		display:inline-block;
		height:1.333rem;
		width:100%;
		border:0;
		border-bottom:0.013rem solid #ccc;
		font-size:0.453rem;
		padding-left:0.587rem;
	}
	form{
		margin-bottom:0.733rem;
	}
	#btn{
		margin-top:1.333rem;
		background: #FFD800;
		border-radius: 0.667rem;
		padding-left:0px;
	}
	.main span{
		font-size:0.373rem;
		padding:0 0.467rem;
	}
	.main span:first-child{
		border-right:1px solid #000;
	}
	.main .main_b{
		padding-left:0.4rem;
	}
</style>