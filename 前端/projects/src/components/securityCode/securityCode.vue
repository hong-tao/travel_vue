<template>
    <p class='code' @click='codeclick'>{{res}}</p>
</template>

<script type="text/javascript">
    import Codes from './securityCode.js';
    export default {
        data:function(){
            return {
                res:Codes()
            }
        },
        methods:{
            codeclick:function(){
                this.res = Codes()
            }
        }
    }

</script>

<style type="text/css">
    .code{
        width:2.667rem;
        height:1.067rem;
        background: skyblue;
    }
</style>