<template>
    <div id="box5">
        <div class="header">
            <backtrack></backtrack>
        </div>
        <banner1></banner1>
        <ul class="list">
            <li v-for="(obj, index) in dataset">
                <div class="list1"><img :src="obj.imgurl"/></div>
                <div class="list2">
                    <h3>{{obj.name}}</h3>
                    <p class="pp">{{obj.address}}</p>
                    <p class="pp1">￥{{obj.pirce}}</p>
                </div>
            </li>
        </ul>
    </div>



</template>


<script type="text/javascript">
    import banner1 from '../hotel/hotelcom/banner1.vue'
    import qs from 'qs';
    import axios from 'axios';
    import backtrack from '../../components/backtrack/backtrack.vue' 
    export default{
            data(){
                return {
                    dataset:[]
                }
            },

           mounted: function(){
                var star = this.$route.params.star;
                var adr = this.$route.params.adr;
                console.log(star,adr)
            
                 axios({
                    method:'post',
                    url:'http://localhost:888/php/query.php',
                    data:qs.stringify({'star':star,'adr':adr}),
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded'
                    }
                }).then(res=>{
                    this.dataset = res.data
                    console.log(res)
                })
           },
           components :{
                banner1,
                backtrack
           }


    }



    
</script>
<style lang="scss" scoped>
 *{
     box-sizing: border-box;
}
.header{position:absolute;z-index:999;font-size:0.8rem;}
 html,body{
     height: 100%;
     #box5{
         .list{
             li{
                 padding: 0.21333333333333335rem 0.21333333333333335rem 0.21333333333333335rem 0;
                 margin-left: 0.21333333333333335rem;
                 position: relative;
                 .list1{
                     width: 3.2rem;
                     height: 2rem;
                     position: relative;
                     float:left;
                     img{
                         display:inline-block;
                         width: 100%;
                         height: 100%;
                    }
                }
                 .list2{
                     height: 2rem;
                     padding-left: 0.6666666666666666rem ;
                     position: relative;


                     h3{
                         color: #45b167;
                         font-size: 0.4rem;
                         line-height: 0.21333333333333335rem;
                         margin-bottom: 0.3rem;
                         
                         text-overflow: ellipsis;
                    }
                     .pp{
                         font-size: 0.3rem;
                    }
                     .pp1{
                         position: absolute;
                         bottom: -0.10666666666666667rem;
                         right: 0;
                         color: #ff8c00;
                         font-size: 0.5rem;
                    }
                }
            }
        }
    }
}
 </style> 