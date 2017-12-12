<template>
  <section>
    <!-- 工具栏 -->
  	<el-row :gutter="20" class="toolButton">
  	  <el-col :span="12">
  	  	<div class="grid-content bg-purple">
  	  	  <el-col :span="16">
  	  		<div class="grid-content bg-purple">
  	  		  <el-input v-model.trim="input" placeholder="请输入关键字"></el-input>
  	  		</div>
  	  	  </el-col>
  	  	  <el-col :span="8">
  	  		<div class="grid-content bg-purple">
  	  		  <el-button type="primary" @click="searchItem" :loading="loading">搜索</el-button>
  	  		</div>
  	  	  </el-col>
  	  	</div>
  	  </el-col>
  	</el-row>

    <!-- 生成数据结构 -->
  	<el-table
  	  ref="multipleTable" stripe
  	  tooltip-effect="dark"
      v-loading="listLoading"
      :data="orderMessage"
  	  style="width: 100%;margin-top:15px;">
      <el-table-column type="selection" align="center"></el-table-column>
      <el-table-column :label="key" prop="name" align="center" v-for="(value, key) in keyData" v-if="fitlerItem.indexOf(key) < 0">
        <template slot-scope="scope">{{scope.row[key]}}</template>
      </el-table-column>
      <el-table-column prop="name" label="操作" align="center">
        <template scope="scope">
        </template>
      </el-table-column>
  	</el-table>
  </section>
</template>

<script>
  	import { getOrders } from '../../api/api'

  	export default {
	    data() {
	      	return {
		      	fitlerItem: ['imgurl', 'add_time', 'sale_price', 'categoery', 'state'],
		      	dataType: '',
		      	loading: false,
		        listLoading: false,
		        orderMessage: [],
		        keyData:{},
		        input: '' //搜索框输入
	      	}
	    },
	    methods: {
	      	getOrders(title){
	      		this.loading = true;
	        	let params = new URLSearchParams();
		      	if(title != undefined){
		      		params.append('title', title);
		      	}
		        getOrders(params).then(res => {
		      	  	this.loading = false;
		          	this.keyData = res[0];
		          	this.orderMessage = res;
		        });
	      	},
	      	searchItem(){
	      		if(this.input == '') return;
	      		this.getOrders(this.input)
	      	}
	  	},
	    //// 初始化
	    // mounted(){
	    //   	this.getOrders();
	    // }
  	}
</script>