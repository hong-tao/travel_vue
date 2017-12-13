<template>
	<div class="bottomBar">
		<ul>
			<li>
				<i class="fa fa-grav"></i>
				<!-- <router-link></router-link> -->
				<span>首页</span>
			</li>
			<li>
				<i class="fa fa-calendar"></i>
				<span>行程</span>
				<!-- <router-link></router-link> -->
			</li>
			<li>
				<i class="fa fa-rmb"></i>
				<span>支付</span>
				<!-- <router-link></router-link> -->
			</li>
			<li>
				<i class="fa fa-user-o"></i>
				<span>我的</span>
				<!-- <router-link></router-link> -->
			</li>
		</ul>
	</div>
</template>

<script>
	export default{
		
	}
</script>

<style lang="scss" scoped>
	.bottomBar{
	     width: 100%;
	     height: 0.68rem;
	     position: fixed;
	     left:0;
	     bottom:0;
	     right:0;
	     background-color: white;
	     ul{
	         width: 100%;
	         display:flex;
	         li{
	             flex:1;
	             text-align: center;
	             line-height: 0.68rem;
	             font-size:0.21333333333333335rem;
	        }
	    }
	}
 
</style>