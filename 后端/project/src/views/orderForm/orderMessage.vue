<template>
  <section>
    <!-- 工具栏 -->
  	<el-row :gutter="20" class="toolButton">
  	  <el-col :span="16">
  	  	<div class="grid-content bg-purple">
  	  	  <el-col :span="12">
  	  		<div class="grid-content bg-purple">
  	  		  <el-input v-model.trim="input" placeholder="请输入关键字"></el-input>
  	  		</div>
  	  	  </el-col>
  	  	  <el-col :span="12">
  	  		<div class="grid-content bg-purple">
            <el-button type="primary" @click="searchItem" :loading="loading">搜索</el-button>
          </div>
  	  	  </el-col>
  	  	</div>
  	  </el-col>
      <el-col :span="8">
        <div class="grid-content bg-purple">
          <el-button type="primary" @click="refresh" :loading="loading">刷新</el-button>
        </div>
      </el-col>
  	</el-row>

    <!-- 生成数据结构 -->
  	<el-table
  	  ref="multipleTable" stripe
  	  tooltip-effect="dark"
      v-loading="listLoading"
      :data="orderMessage"
      :row-class-name="statusClassName"
  	  style="width: 100%;margin-top:15px;">
      <el-table-column :label="dataTypeChange[key]" prop="name" align="center" v-for="(value, key) in keyData" v-if="fitlerItem.indexOf(key) < 0">
        <template slot-scope="scope">{{scope.row[key]}}</template>
      </el-table-column>
  	</el-table>
  </section>
</template>

<script>
  	import { getOrder } from '../../api/api'

  	export default {
	    data() {
      	return {
	      	fitlerItem: ['ordernumber' , 'images', 'myname'],
	      	dataType: '',
          dataTypeChange: {
            starttime: '出发日期',
            product: '商品',
            personnumber: '人数',
            information: '用户信息',
            price: '订单价格',
            status: '订单状态'
          },
	      	loading: false,
	        listLoading: false,
	        orderMessage: [],
	        keyData:{},
	        input: '', //搜索框输入
          status: {//状态文字显示
            0: '待支付',
            1: '已支付',
            2: '待消费',
            3: '已消费',
            4: '已取消'
          }
      	}
	    },
	    methods: {
        // 根据状态改变颜色
        statusClassName({row}) {
          if (row.status == '待支付') {
            return 'warning-row';
          } else if (row.status == '已支付') {
            return 'success-row';
          } else if (row.status == '待消费') {
            return 'warning-row';
          } else if (row.status == '已消费') {
            return 'info-row';
          } else if (row.status == '已取消') {
            return 'danger-row';
          }
          return '';
        },
      	getOrders(title){
          let params = new URLSearchParams();
          if(title){
      		  this.loading = true;
            params.append('title', title);
	      	}
	        getOrder(params).then(res => {
            // 根据状态改变文字
            for(let obj of res){
              obj.status = this.status[obj.status];
            }
      	  	this.loading = false;
          	this.keyData = res[0];
          	this.orderMessage = res;
	        });
      	},
      	searchItem(){
      		if(this.input == '') return;
      		this.getOrders(this.input)
      	},
        refresh(){
          this.getOrders();
        }
	  	},
	    // 初始化
	    mounted(){
	      this.getOrders();
	    }
  	}
</script>

<style lang="scss">
  .el-row {
    &:last-child {
      margin-bottom: 0;
    }
  }

  .toolButton .el-button{
    width: 100%;
  }
  .el-table{
    .warning-row td:last-child {
      color: #eb9e05;
    }
    .success-row td:last-child {
      color: #67c23a;
    }
    .info-row td:last-child {
      color: #409eff;
    }
    .danger-row td:last-child {
      color: #fa5555;
    }
  }

</style>