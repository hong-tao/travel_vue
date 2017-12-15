<template>
    <div class='parent'>
        <div class='header'>
            <backtrack></backtrack>
            <span>设置</span>
        </div>
        <div class="main">
            <ul>
                <li><span>个人资料</span><span class='el-icon-arrow-right'></span></li>
                <li><span>密码设置</span><span class='el-icon-arrow-right'></span></li>
                <li><span>第三方管理</span><span class='el-icon-arrow-right'></span></li>
            </ul>
        </div>
        <div class="exit">
            <input type="button" value='退出登录' @click='exitclick'/>
        </div>
    </div>
    
</template>

<script type="text/javascript">
    import backtrack from '../../components/backtrack/backtrack.vue'

    export default {
        components:{
            backtrack,
        },
        methods:{
            exitclick:function(){
                var token = window.localStorage.removeItem('token');
                this.$router.push({name:'information'})
            }
        }
    }
</script>

<style type="text/css" scoped>
    .parent{background: #F5F5F5;}
    .header{height:1.693rem;background: #fff;padding-left:0.267rem;}
    .header span{font-size:0.573rem;}
    .header div{display:inline-block;padding-top:0.267rem;}
    .header>span{margin-left:3.067rem;}
    .main{height:3.467rem;background: #fff;margin-top:0.267rem;padding-left:0.533rem;}
    .main ul li{height:1.147rem;line-height: 1.147rem;font-size:0.4rem;border-bottom:0.015rem solid #ccc;padding-left:0.267rem;}
    .main ul li span:last-child{float: right;margin-top:0.4rem;font-size:0.4rem;color:#CECED0;margin-right:0.4rem;}
    .exit input{height:1.173rem;background: #fff;text-align: center;line-height: 1.173rem;color:#FF1F30;border:0;width:100%;font-size:0.4rem;margin-top:0.533rem;border-bottom:0.015rem solid #ccc;}
</style>