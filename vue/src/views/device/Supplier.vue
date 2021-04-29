<template>
<div>
  <el-table :data="tableData" style="width: 100%" max-height="1000">
    <el-table-column fixed="left" type="index" width="50" label="序号"></el-table-column>
    <el-table-column prop="name" label="供应商名称" width="auto"></el-table-column>
    <el-table-column prop="address" label="地址" width="auto"></el-table-column>
    <el-table-column prop="telphone" label="手机号码" width="auto"></el-table-column>
    <el-table-column fixed="right" prop="remarks" label="备注" width="auto"></el-table-column>
    <el-table-column fixed="right" label="操作" width="120">
      <template #default="scope">
        <el-button @click.native.prevent="deleteRow(scope.$index, tableData)" type="text" size="small">
          删除
        </el-button>
      </template>
    </el-table-column>
  </el-table>
  <div class="block">
      <el-pagination @size-change="handleSizeChange" @current-change="handleCurrentChange" :current-page="currentPage" :page-sizes="[5, 10, 20, 50]" :page-size="10"
        layout="total, sizes, prev, pager, next, jumper" :total="total">
      </el-pagination>
    </div>
</div>


</template>

<script>
import { querySupplier } from "../../api/administration/device";
export default {
  data() {
    return {
      tableData: [],
      total:0,
      page:{
        limit:5,
        page:1
      }
    };
  },
  created() {
    this.getData();
  },
  methods: {
    getData() {
      querySupplier(this.page).then(res => {
        this.tableData = res.rows
        this.total = res.count
        console.log(res);

      });
    },
    deleteRow(index, rows) {
      rows.splice(index, 1);
    },
    handleSizeChange(val) {
      console.log(`每页 ${val} 条`);
      this.page.limit = val;
      this.getData()
    },
    handleCurrentChange(val) {
      console.log(`当前页: ${val}`);
      this.page.page = val;
      this.getData()
    }
  }
};
</script>