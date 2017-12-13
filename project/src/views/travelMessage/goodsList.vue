<template>
  <section>
    <Common :controlType="controlType"></Common>
  </section>
</template>

<script>
  import Common from './listCommon/Common.vue'

  export default {
    components:{
      Common
    },
    data(){
      return {
        controlType: 'up'
      }
    }
  }
</script>