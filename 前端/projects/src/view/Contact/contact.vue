<template>
    <div class='main'>
        <div class="header">
            <backtrack></backtrack>
            <span>常用联系人</span>
        </div>
        <div class="mainpart">
            <ul>
                <li v-for='(obj,index) in dataset' @click='backorder'>
                    <span>{{obj.realname}}</span>
                    <span>{{obj.phone}}</span>
                    <p>{{obj.email}}</p>
                </li>
            </ul>
        </div>
        <div class="footer">
            <input type="button" value='新增游客' @click='myclick'/>
        </div>
    </div>
</template>

<script type="text/javascript">
    import backtrack from '../../components/backtrack/backtrack.vue'
    import qs from 'qs'
    import axios from 'axios'
    export default {
        data:function(){
            return {
                dataset:[]
            }
        },
        components:{
            backtrack,
        },
        methods:{
            myclick:function(){
                this.$router.push({name:'append'})
            },
            backorder:function(){
                console.log(1)
                this.$router.push({name:'goodslist'})
            }
        },
        mounted:function(){
            var nick = window.localStorage.getItem('token').split('&')[1];
            axios({
                method:'post',
                url:'http://localhost:888/php/contact.php',
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                },
                data:qs.stringify({username:nick})
            }).then(res=>{
                console.log(res)
                this.dataset = res.data;
            })
        }
    }
</script>

<style type="text/css" scoped>
    .header{height:0.933rem;}
    .header div{display:inline-block;}
    .header{font-size:0.573rem;padding-left:0.4rem;padding-top:0.533rem;}
    .header>span{margin-left:2.8rem;}
    .main{display:flex;flex-direction: column;height:17.693rem;}
    .mainpart{flex:1;overflow:hidden;}
    .footer{height:1.067rem;}
    .footer input{display:block;width:100%;font-size:0.8rem;height:100%;background: #FED700;border:0;}
    .mainpart{margin-top:0.667rem;}
    .mainpart ul li{height:2.667rem;border-bottom: 1px solid #ccc;;padding-left:0.667rem;}
    .mainpart ul li span{font-size:0.4rem;}
    .mainpart ul li p{font-size:0.4rem;margin-top:0.267rem;}
</style>