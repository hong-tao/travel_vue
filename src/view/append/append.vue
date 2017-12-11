<template>
    <div>
        <div class="header">
            <backtrack></backtrack>
            <span>新增联系人</span>
        </div>
        <div class="main">
            <form>
                <label>游客姓名：</label>
                <input type="text" placeholder='请填写姓名（必填）'/><br />
                <label>游客手机：</label>
                <input type="text" placeholder='请填写手机（必填）'/><br />
                <label>游客邮箱：</label>
                <input type="text" placeholder='请填写邮箱（必填）'/>
                <input type="button" value='保存' @click='myclick' id='btn'/>
            </form>
            
        </div>
    </div>
</template>

<script type="text/javascript">
    import backtrack from '../../components/backtrack/backtrack.vue'
    export default {
        components:{
            backtrack,
        }
    }
</script>

<style type="text/css" scoped>
    .header{height:0.933rem;}
    .header div{display:inline-block;}
    .header{font-size:0.573rem;padding-left:0.4rem;padding-top:0.533rem;}
    .header>span{margin-left:2.8rem;}
    .main{margin-top:1.0rem;padding-left:0.667rem;}
    .main label{font-size:0.533rem;}
    .main input{font-size:0.533rem;border:0;width:5.333rem;}
    #btn{margin-top:0.667rem;display:block;width:100%;margin-left:-0.4rem;border:0;background: #FDD900;}
</style>