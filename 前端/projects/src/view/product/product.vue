<template>
	<div>
		<h2>这是一个注册组件</h2>
		登陆<input type="text" />
		密码<input type="password" />
		<p v-text="num"></p>
		<button @click="increate">组件通信按纽</button>
		<datagrid></datagrid>
		<bottombar></bottombar>
	</div>
</template>

<script>
	import datagrid from '../../components/datagrid/datagrid.vue'
	import bottombar from '../../components/bottombar/bottombar.vue'
	
	import store from '../../store/index'
	
	
	
	
	export default {
		name:'product',
		data(){
			return {
				num : 0
			}
		},
		components :{
			datagrid,
			bottombar
		},
		methods : {
			increate(){
				
//				 this.$store.commit('xxx')
				store.dispatch('increment');
				console.log(this.$store);
				console.log(store.state);
				this.num = store.state.login.count;
			}
		}
	}
</script>