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
         return   {img:['<img src="../../assets/ban1.jpg"/>','<img src="../../assets/ban2.jpg"/>','<img src="../../assets/ban3.jpg"/>']
                  }
      }
            
      
  }
</script>


<style>
  .el-carousel{
    height:4.0rem;
  }
  .el-carousel__item h3 {
    color: #475669;
    font-size: 0.24rem;
    opacity: 0.75;
    line-height: 4.0rem;
    margin: 0;
  }
  
  .el-carousel__item:nth-of-type(1) {
    background:url('../../assets/ban1.jpg') no-repeat 0 0;
  }


  
  .el-carousel__item:nth-of-type(2) {
    background-color: #d3dce6;
    background:url('../../assets/ban2.jpg') no-repeat 0 0;
  }

  .el-carousel__item:nth-of-type(3) {
    background-color: #d3dce6;
    background:url('../../assets/ban3.jpg') no-repeat 0 0;
  }


  
</style>
