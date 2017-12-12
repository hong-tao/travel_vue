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
  	  <el-col :span="4">
  	  	<div class="grid-content bg-purple">
  	  	  <el-button type="primary" @click="addItem">添加</el-button>
  	  	</div>
  	  </el-col>
      <el-col :span="4">
  	  	<div class="grid-content bg-purple">
          <el-button type="warning" @click="selectType" :disabled="this.sels.length===0">批量{{controlMsg}}</el-button>
  	  	</div>
  	  </el-col>
      <el-col :span="4">
        <div class="grid-content bg-purple">
          <el-button type="danger" @click="removeSelect" :disabled="this.sels.length===0">批量删除</el-button>
        </div>
      </el-col>
  	</el-row>

    <el-dialog title="信息编辑" :visible.sync="dialogVisible" :before-close="handleClose" center>
      <el-form :model="editForm" label-width="80px" :rules="editFormRules" ref="editForm">
        <el-form-item :label="key"  prop="name" align="center" v-for="(value, key) in keyData" v-if="fitlerItem.indexOf(key) < 0">
          <el-input v-model="editForm[key]" auto-complete="off"></el-input>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button @click="dialogVisible = false">取消</el-button>
        <el-button type="primary" @click="btnSave" :data-type="dataType" close>提交</el-button>
      </div>
    </el-dialog>

    <!-- 生成数据结构 -->
  	<el-table
  	  ref="multipleTable" stripe
  	  tooltip-effect="dark"
      v-loading="listLoading"
      :data="travelDetail"
  	  style="width: 100%;margin-top:15px;"
  	  @selection-change="selsChange">
      <el-table-column type="selection" align="center"></el-table-column>
      <el-table-column :label="key" prop="name" align="center" v-for="(value, key) in keyData" v-if="fitlerItem.indexOf(key) < 0">
        <template slot-scope="scope">{{scope.row[key]}}</template>
      </el-table-column>
      <el-table-column prop="name" label="操作" align="center">
         <template scope="scope">
            <el-button type="primary" @click="editItem(scope.$index, scope.row)">编辑</el-button>
            <el-button type="warning" @click="shelveItem(scope.$index, scope.row)">{{controlMsg}}</el-button>
            <el-button type="danger" @click="removeItem(scope.$index, scope.row)">删除</el-button>
        </template>
      </el-table-column>
  	</el-table>
  </section>
</template>

<script>
  import { searchGoods, addGoods, editGoods, removeGoods, delGoods, shelveGoods, shelveSelectGoods} from '../../../api/api'

  export default {
    data() {
      return {
      	fitlerItem: [  'productID', 'hot', 'kind', 'url', 'descriptName', 'travelDays', 'productFeatures', 'date', 'packageID', 'planDay', 'planAbstract', 'planDetails', 'planHotel', 'planCatering', 'attention', 'scheduleMatter', 'scheduleTime1', 'scheduleTime2', 'scheduleFirst', 'scheduleSecond', 'scheduleThird', 'scheduleTip', 'scheduleThird2', 'scheduleForth', 'scheduleFifth', 'state'
        ],
      	dataType: '',
      	loading: false,
        listLoading: false,
        travelDetail: [],
        keyData:{},
        input: '',//搜索框输入
        sels: [],//列表选中项
        dialogVisible: false,//编辑框状态
        editFormRules: {//编辑框提示
          name: [
            { required: true, message: '不能为空', trigger: 'blur' }
          ]
        },
        //编辑界面数据
        editForm: {},
        controlMsg: ''
      }
    },
    props: ['controlType'],
    methods: {
  	  handleClose(done) {
        this.$confirm('确认关闭？').then(_ => {done(); }).catch(_ => {});
      },
      getItems(title){
        let params = new URLSearchParams();
        if(title != undefined){
      	 this.loading = true;
          params.append('title', title);
        }
        if(this.controlType == 'down'){
          params.append('type', 'downSearch');
        }else{
          params.append('type', 'upSearch');
        }
        searchGoods(params).then(res => {
          this.loading = false;
          this.keyData = res[0];
          this.travelDetail = res;
        });
      },
      searchItem(){
        if(this.input == '') return;
        this.getItems(this.input);
      },
      // 单条信息上/下架
      shelveItem(index, row){
        this.$confirm('确认下架该记录吗?', '提示', {
          type: 'warning'
        }).then(() => {
          this.listLoading = true;
          let params = new URLSearchParams();
          if(this.controlType == 'down'){
            params.append('type', 'shelve');
          }else{
            params.append('type', 'unShelve');
          }
          params.append('id', row.productID);
          shelveGoods(params).then((res) => {
            this.listLoading = false;
            if(res == true){
              this.$message({
                message: '下架成功',
                type: 'success'
              });
            }else{
              this.$message({
                message: '下架失败',
                type: 'fail'
              });
            }
            this.getItems();
          });
        }).catch(() => {});
      },
      // 单条信息删除
      removeItem(index, row){
        this.$confirm('确认删除该记录吗?', '提示', {
          type: 'warning'
        }).then(() => {
          this.listLoading = true;
          let params = new URLSearchParams();
          params.append('id', row.productID);
          params.append('type', 'remove');
          removeGoods(params).then((res) => {
            this.listLoading = false;
            if(res == true){
              this.$message({
                message: '删除成功',
                type: 'success'
              });
            }else{
              this.$message({
                message: '删除失败',
                type: 'fail'
              });
            }
            this.getItems();
          });
        }).catch(() => {});
      },
      // 多选
      selsChange: function (sels) {
        this.sels = sels;
      },
      // 批量删除
      removeSelect(){
        let ids = this.sels.map(item => item.productID);
        this.$confirm('确认删除选中记录吗？', '提示', {
          type: 'warning'
        }).then(() => {
          this.listLoading = true;
          let params = new URLSearchParams();
          params.append('ids', ids);
          params.append('type', 'dels');
          delGoods(params).then((res) => {
            this.listLoading = false;
            this.$message({
              message: '批量删除成功',
              type: 'success'
            });
            this.getItems();
          });
        }).catch(() => {});
      },
      // 批量上/下架
      selectType(){
        let ids = this.sels.map(item => item.productID);
        this.$confirm('确认下架选中记录吗？', '提示', {
          type: 'warning'
        }).then(() => {
          this.listLoading = true;
          let params = new URLSearchParams();
          params.append('ids', ids);
          if(this.controlType == 'down'){
            params.append('type', 'shelves');
          }else{
            params.append('type', 'unShelves');
          }
          shelveSelectGoods(params).then((res) => {
            this.listLoading = false;
            this.$message({
              message: '操作成功',
              type: 'success'
            });
            this.getItems();
          });
        }).catch(() => {});
      },
      // 添加
      addItem(index, row){
        this.dataType = 'add';
        this.dialogVisible = true;
        this.editForm = Object.assign({}, row);
      },
      // 编辑
      editItem(index, row){
        this.dataType = 'edit';
        this.dialogVisible = true;
        this.editForm = Object.assign({}, row);
      },
      // 保存编辑/添加
      btnSave(){
        this.loading = true;
        if(this.dataType == 'edit'){
          this.$confirm('确认提交吗？', '提示', {}).then(() => {
            let para = Object.assign({}, this.editForm);
            let params = new URLSearchParams();
            if(this.controlType == 'down'){
              para.state = 'down';
            }else{
              para.state = 'up';
            }
            params.append('id', this.editForm.productID);
            params.append('type', 'edit');
            params.append('datas', JSON.stringify(para));

            editGoods(params).then((res) => {
              this.loading = false;
              if(res == false){
                this.$message({
                message: '提交失败',
                type: 'success'
              });
              }
              this.$message({
                message: '提交成功',
                type: 'success'
              });
              this.dialogVisible = false;
              this.getItems();
            });
          });
        }else if(this.dataType == 'add'){
          this.$confirm('确认提交吗？', '提示', {}).then(() => {
            let para = Object.assign({}, this.editForm);
            delete para.id;
            let params = new URLSearchParams();
            if(this.controlType == 'down'){
              para.state = 'down';
            }else{
              para.state = 'up';
            }
            params.append('type', 'add');
            params.append('datas', JSON.stringify(para));

            addGoods(params).then((res) => {
              this.loading = false;
              if(res == false){
                this.$message({
                  message: '提交失败',
                  type: 'dager'
                });
              }
              this.$message({
                message: '提交成功',
                type: 'success'
              });
              this.dialogVisible = false;
              this.getItems();
            });
          });
        }
      }
    },
    // 初始化
    mounted(){
      if(this.controlType == 'down'){
        this.controlMsg = '上架';
      }else{
        this.controlMsg = '下架';
      }
      this.getItems();
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
</style>