<template>

    <div id="box">
        <div class="head">
            <input type="text" placeholder="目的地" disabled="disabled" />
            <span>广州</span>
            <i></i>
        </div>
        <div class="data">
            <div  class="data1">
                <span>入住</span><br/>
                <span>12月10日</span>
                <span>周四</span>
            </div >
            <div class="data2">一晚</div>
            <div class="data3">
                <span>离店</span><br/>
                 <span>12月11日</span>
                <span>周五</span>
            </div>
        </div>
        <div class="input1">
            <input type="text" placeholder="城市" class="check" v-model='b'/>
        </div>
        <div class="input2">
            <input type="text" placeholder="等级" v-on:click="counter" class="price" v-model =a>
        </div>
        <div type="button" class="btn" v-on:click='aj' >
            查找酒店
        </div>


    </div>

</template>

<script>
  import condition from './condition.vue'
  export default {
      data(){
            return {
                a:'',
                b:''
                
               


            }
      },
      methods: {
            counter: function(){
               
            },
            aj: function(){
              
               
             
               this.$router.push({name:'hotelcheck',params:{star:this.a,adr:this.b}});
               

                
            }

        },
        

       

  }

  
    
  

</script>

<style lang="scss" scoped>

        *{
            box-sizing: border-box;
        }

         #box{
     background: rgba(255,255,255,.9);
     border-radius:0.13rem;
     padding:0.26rem;
     margin:  0.26rem 0 0.26rem;
     position: relative;
     border:0.013rem solid #000;
     z-index: 2;
     height:9.333rem;
     .head{
         height: 1.0rem;
         line-height: 1rem;
         padding: 0 0.16rem;
         font-size: 0.4rem;
         color: #7d7d7d;
         position: relative;
         overflow: hidden;
         input{
             width: 0.8rem;
             background-color: transparent;
             color: #242424;
             opacity: 1;
        }
    }
     .data{
         height: 0.88rem;
         padding:0.10rem 0.26rem;
         font-size: 0.21rem;
         color: #7d7d7d;
         position: relative;
         overflow: hidden;
         div{
             float:left;
        }
         .data1{
            height:1.0rem;
             line-height: 0.32rem;
             text-align: center;
             font-size: 0.4rem;
             width: 36%;
             margin:0 0.26666666666666666rem;
             
        }
         .data2{
             display: inline-block;
             height: 0.667rem;
             line-height: 0.667rem;
             border-radius: 0.13rem;
             font-size: 0.4rem;
             color: #7d7d7d;
             border: 0.013rem solid #000;
             padding: 0 0.10rem;
             font-style: normal;
        }
         .data3{
             float:right;
             line-height: 0.32rem;
             text-align: center;
             font-size:0.4rem;
             width: 36%;
        }
    }
     .input1{
         line-height: 0.58rem;
         height:1.333rem;
         padding: 0 0.16rem;
         font-size: 0.533rem;
         color: #7d7d7d;
         position: relative;
         overflow: hidden;
         margin-top:0.4rem;
         input{
             color: #242424;
             border:0;
        }
    }
     .input2{
         line-height: 0.58rem;
         padding: 0 0.16rem;
         font-size: 0.533rem;
         color: #7d7d7d;
         position: relative;
         overflow: hidden;
         margin-bottom:1.333rem;
         input{
             color: #242424;
             vertical-align: middle;
             width: 100%;
             border: 0;
             outline: 0;
             margin-top: -0.04rem;
        }
    }
     .btn{
         line-height: 1.333rem;
         height:1.333rem;
         padding: 0 0.16rem;
         font-size: 0.4rem;
         color: #7d7d7d;
         position: relative;
         overflow: hidden;
         background-color: #ffd800;
         text-align: center;
         width: 90%;
         color: #434343;
         margin-left: 3%;
    }
     
}
 


</style>


