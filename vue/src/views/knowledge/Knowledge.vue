<template>
  <div class="knowledge">
    <el-button type="primary" icon="el-icon-plus" @click="addData" style="margin-top: 10px; box-sizing: border-box">新增</el-button>
    <el-table row-key="date" stripe ref="filterTable"  :data="tableData" style="width: 100%">
      <el-table-column prop="title" label="标题" width="500">
        <template #default="scope">
          <span @click="showDetail(scope.$index, scope.row)" class="title">{{
            scope.row.title
          }}</span>
        </template>
      </el-table-column>

      <el-table-column
        prop="created_at"
        label="日期"
        sortable
        width="200"
        column-key="date"
      >
      </el-table-column>

      <el-table-column
        prop="type"
        label="分类"
        width="200"
        filter-placement="bottom-end"
      >
        <template #default="scope">
          <el-tag
            :type="scope.row.tag === '安全知识' ? 'primary' : 'success'"
            disable-transitions
            >{{ scope.row.type }}</el-tag
          >
        </template>
      </el-table-column>

      <el-table-column prop="author" label="文章来源"> </el-table-column>
    </el-table>

    <div style="text-align: right; margin-top: 10px">
      <el-pagination
        @size-change="handleSizeChange"
        @current-change="handleCurrentChange"
        :current-page="1"
        :page-sizes="[10, 20, 50, 100]"
        :page-size="10"
        layout="total, sizes, prev, pager, next, jumper"
        :total="tableDataTotal"
      ></el-pagination>
    </div>
  </div>
</template>

<script>
import { page } from "../../api/administration/knowledge";
export default {
  created() {
    this.page();
  },
  data() {
    return {
      query: { limit: "10", page: "1" },
      tableData: [],
      tableDataTotal: 0,
    };
  },
  methods: {
    page() {
      page(this.query).then((res) => {
        this.tableData = res.rows;
        this.tableDataTotal = res.count;
      });
    },
    showDetail(index,row) {
      this.$router.push('/knowledge/detail?id='+row.id)
    },
    addData(){
      this.$router.push('/knowledge/add')
    },
    handleSizeChange(val) {
      this.query.limit = val;
      this.page();
    },
    handleCurrentChange(val) {
      this.query.page = val;
      this.page();
    },
  }
};
</script>

<style lang="scss" scoped>
.title {
  color: rgb(97, 150, 245);
  cursor: pointer;
}
</style>
