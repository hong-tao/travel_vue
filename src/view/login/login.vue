<template>
	<div>
		<div class="header">
			<backtrack></backtrack>
			<ul>
				<li>账号登录</li>
			</ul>
		</div>
		<div class='main'>
			<form>
				<label for="name"><i></i></label>
				<input type="text" placeholder='手机号码/会员账号' id='name' v-model='username'/>
				<label for="psd"><i></i></label>
				<input type="password" placeholder='请输入密码' id='psd' v-model='password'/>
				<input type="button" value='登录' id='btn' @click='btnclick'/>
			</form>
			<div class='main_b'>
				<span @click='regclick'>快速注册</span>
				<span>忘记密码</span>
			</div>
		</div>
	</div>
</template>

<script>
	import backtrack from '../../components/backtrack/backtrack.vue'
	import axios from 'axios'
	import qs from 'qs'
	export default {
		data:function(){
			return {
				username:'',
				password:''
			}
		},
		components:{
			backtrack,
		},
		methods:{
			regclick:function(){
				this.$router.push({name:'register'})
			},
			btnclick:function(){
				axios({
					method:'POST',
					url:'http://localhost:888/php/login.php',
					data:qs.stringify({
						username:this.username,
						password:this.password
					}),
					headers: {
                        'Content-Type': 'application/x-www-form-urlencoded'
                    }
				}).then(res=>{
					// var params = Boolean(res.data.trim())
					if(res.data){
						var token = res.data.token+'&'+res.data.username
						window.localStorage.setItem('token',token)
						this.$router.push({name:'information'})					
					}
				})
			}
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
		margin-left:2.667rem;
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
		padding-left:0.0rem;
	}
	.main span{
		font-size:0.373rem;
		padding:0 0.467rem;
	}
	.main span:first-child{
		border-right:0.013rem solid #000;
	}
	.main .main_b{
		text-align:center;
	}
</style>