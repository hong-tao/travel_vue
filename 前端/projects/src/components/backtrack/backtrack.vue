<template>
    <div>
        <span class='el-icon-arrow-left' @click='myclick'></span>
    </div>
</template>

<script type="text/javascript">
    export default {
        methods:{
            myclick:function(){
                this.$router.go(-1)
            }
        }
    }

</script>

