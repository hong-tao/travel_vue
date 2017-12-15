<template>
        <div class="con">
            <div class="header1"  >
                <span>价格/等级</span>
                
            </div>

            <slider></slider>
            

        </div>

</template>


<script >
    import slider from './slider.vue'
    export default{
             components:{
                slider
             },
             data(){
               
                return {
                    status:false
                    
                }
             },
              props: ['status']


    }




</script>

<style lang="scss" scoped>
        .con{
            border:1px solid #ccc;
             background: rgba(255,255,255,.9);
             border-radius:0.13333333333333333rem;
        }
        .header1{
            height: 0.64rem;
            line-height: 0.64rem;
            font-size: 0.21333333333333335rem;
            color: #242424;
            text-align: center;
            position: relative;
            margin-bottom: 0.16rem;
 
        }


</style>