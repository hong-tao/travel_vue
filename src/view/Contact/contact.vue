<template>
    <div class='main'>
        <div class="header">
            <backtrack></backtrack>
            <span>常用联系人</span>
        </div>
        <div class="mainpart"></div>
        <div class="footer">
            <input type="button" value='新增游客' @click='myclick'/>
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
            myclick:function(){
                console.log(1)
                this.$router.push({name:'append'})
            }
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

</style>