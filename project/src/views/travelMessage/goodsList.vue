<template>
  <section>
    <common :controlType="controlType"></common>
  </section>
</template>

<script>
  import common from './listCommon/common.vue'

  export default {
    components:{
      common
    },
    data(){
      return {
        controlType: 'up'
      }
    }
  }
</script>