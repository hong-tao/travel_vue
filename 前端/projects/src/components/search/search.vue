<template>
	<div class="searh">
		<div class="city">
			<span>广州</span>
			<i class="el-icon-caret-bottom"></i>
		</div>
		<div class="searchBox">
			<div>
				<i class="el-icon-search"></i>
				<input type="search" />
			</div>
		</div>
		<div class="lastTwo">
			<i class="fa fa-phone"></i>
		</div>
		<div class="last">
			<i class="fa fa-address-book"></i>
		</div>
	</div>
</template>

<script>
	export default {
		data(){
			return {
				
			}
		}
		
	}
</script>

<style lang="scss" scoped>
	.searh{
     height: 0.5866666666666667rem;
     background-color: #FFD800;
     display: flex;
     line-height: 0.5866666666666667rem;
     font-size:0.15rem;
     .city{
         width:0.6133333333333333rem;
         margin-left:0.21333333333333335rem;
         margin-right:0.10666666666666667rem;
         
    }
     .searchBox{
         flex:1;
         position:relative;
         div{
             line-height: 0.37333333333333335rem;
             width: 98%;
             position: absolute;
             top:0.13333333333333333rem;
             box-sizing: border-box;
             height: 0.37333333333333335rem;
             outline:none;
             background-color: white;
             border-radius: 0.18666666666666668rem 0.18666666666666668rem 0.18666666666666668rem 0.18666666666666668rem;
             i{
                 margin-left:0.13333333333333333rem;
                 margin-right:0.13333333333333333rem;
            }
             input{
                 width: 50%;
                 outline: none;
                 border: 0 none;
            }
        }
    }
     .last{
         width:0.4rem;
    }
     .lastTwo{
         padding-left:0.13333333333333333rem;
         width:0.26666666666666666rem;
    }
}
 
</style>

