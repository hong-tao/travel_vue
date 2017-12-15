<template>
  <el-carousel indicator-position="outside">
    <el-carousel-item v-for="item in img" :key="item">
      <h3 ></h3>
    </el-carousel-item>
  </el-carousel>
</template>

<script>
  export default {
      data(){
         return   {img:['<img src="../../img/jd1.jpg"/>','<img src="../../../img/jd2.jpg"/>','<img src="../../../img/jd3.jpg"/>','<img src="../../../img/jd4.jpg"/>']
                  }
      }
            
      
  }
</script>


<style>
  .el-carousel__item h3 {
    color: #475669;
    font-size: 18px;
    opacity: 0.75;
    line-height: 300px;
    margin: 0;
  }
  
  .el-carousel__item:nth-of-type(1) {
    background:url('../../../img/jd1.jpg') no-repeat 0 0;
  }


  
  .el-carousel__item:nth-of-type(2) {
    background-color: #d3dce6;
    background:url('../../../img/jd2.jpg') no-repeat 0 0;
  }

  .el-carousel__item:nth-of-type(3) {
    background-color: #d3dce6;
    background:url('../../../img/jd3.jpg') no-repeat 0 0;
  }

  .el-carousel__item:nth-of-type(4) {
    background-color: #d3dce6;
    background:url('../../../img/jd4.jpg') no-repeat 0 0 ;
  }

  
</style>
