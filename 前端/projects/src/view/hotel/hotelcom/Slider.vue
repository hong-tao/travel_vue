<template>
  <div class="hid"  >
    <span>酒店价格</span>
    <div class="block">
      <el-slider
        v-model="value9"
        range
        show-stops
        :max="10">
      </el-slider>
    </div>
    <span>酒店等级</span>
    <div >
        <el-button plain class="star">不限</el-button>
        <el-button type="primary" plain value="三星经济" class="star">三星经济</el-button>
        <el-button type="success" plain class="star">三星豪华</el-button>
        <el-button type="info" plain class="star">四星豪华</el-button>
        <el-button type="warning" plain class="star">五星超豪华</el-button>
        
    </div>

    <el-button style="padding:20px 130px">重置</el-button>
    <span type="warning" style="padding:20px 130px" class="confilm">确定</span>

    
  </div>
  
</template>

<script>
  export default {
    data() {
      return {
        value9: [0, 1000]
        
      }
    }
  }

  // $('.con').on('click','button',function(e){

  //     var target = e.target;
  //     var val = $(target).text();
  //      $('.price').val(val);
  //    console.log(666);
       
       

      
  //     $('.confilm').on('click',function(){
  //          $('.con').fadeOut();

  //     })
     
  // })
</script>

<style lang="scss" scoped>
      span{
          color: #707070;
          font-size: 0.18666666666666668rem ;
      }

      .el-slider__bar{
            background-color: #eb9e05;
            z-index: 99;
      }

      .confilm{
        font-size:14px;
        background: #d48e05;
      }


</style>