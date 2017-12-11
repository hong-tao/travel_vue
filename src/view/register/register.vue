<template>
	<div>
		<div class="header">
             <backtrack></backtrack>  
             <span>注册</span>   
        </div>
        <form>
            <input type="text" placeholder='请输入手机号码或昵称' v-model='username'/>
            <input type="password" placeholder='请输入密码' v-model='password'/>
            <input type="text" placeholder='请输入验证码' v-model='code'/>
            <securityCode></securityCode>
            <input type="button" value='注册' id='btn' @click = 'btnclick'/>
        </form>
	</div>
</template>

<script>
    import backtrack from '../../components/backtrack/backtrack.vue'
    import securityCode from '../../components/securityCode/securityCode.vue'
    import axios from 'axios';
    import qs from 'qs'
	export default{
        data:function(){
            return {
                username:'',
                password:'',
                code:''
            }
        },
		components:{
            backtrack,
            securityCode,
        },
        methods:{
            btnclick:function(){
                var coding = document.querySelector('p');
                if(this.code===coding.innerHTML.toLowerCase()){
                    axios({
                        method:'POST',
                        url:'http://localhost:888/php/register.php',
                        data:qs.stringify({username:this.username,password:this.password}),
                        headers: {
                            'Content-Type': 'application/x-www-form-urlencoded'
                        }
                    }).then(res=>{
                        console.log(res)
                        if(res.data){
                            this.$router.push({name:'login'})
                        }
                    })
                }
            }
        }
	}
</script>

<style type="text/css" scoped>
    .header{height:1.2rem;background: #FFD800;font-size:0.533rem;padding-top:0.4rem;padding-left:0.267rem;margin-bottom: 0.827rem;}
    .header div{display:inline-block;}
    .header span{margin-left:3.5rem;}
    form{width:8.933rem;margin:0 auto;}
    input{height:1.333rem;border:0;border-bottom:0.013rem solid #ccc;font-size:0.44rem;line-height:1.333rem;}
    input:first-child{width:8.933rem;}
    p{display:inline-block;font-size:0.667rem;text-align:center;line-height: 1.067rem;}
    #btn{display:inline-block;width:8.933rem;height:1.333rem;background: #FFD800;text-align:center;margin-top:0.293rem;border-radius:0.667rem;}
</style>