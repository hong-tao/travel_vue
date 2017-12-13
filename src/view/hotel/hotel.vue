<template>
    
    <div class="bigbox">
        <div class="header">
            <backtrack></backtrack>
        </div>
         <banner1></banner1>
         <check></check>
    </div>
   
</template>

<script>

    import banner1 from './hotelcom/banner1.vue'
    import check from './hotelcom/check.vue'
    import backtrack from '../../components/backtrack/backtrack.vue' 
  	export default{
  		  name:'hotel',
            data(){
                  return{
                      num:0
                  }
            },
            components : {
                  banner1,
                  check,
                  backtrack
                  
            }
  	}
</script>

<style lang="scss" scoped>

        .bigbox{
            width: 100%;

        }
        .header{position:absolute;z-index: 222;font-size:0.8rem;}


</style>