'use strict';

const Controller = require('egg').Controller;

class KnowledgeController extends Controller {
  // 获取安全知识
  async page() {
    const { ctx } = this;
    const query = ctx.query;
    ctx.validate({
      limit: { type: 'string', required: true },
      page: { type: 'string', required: true },
    }, query);
    console.log(query);
    ctx.body = await ctx.service.kno.knowledge.page(query);
  }

    // 添加安全知识
    async createKnowledge() {
      const { ctx } = this;
      const body = ctx.request.body;
      ctx.body = await ctx.service.kno.knowledge.createKnowledge( body );
  }

  // 查找安全知识详情
  async getKnowledge() {
    const { ctx } = this;
    const { id } = ctx.query;
    ctx.body = await ctx.service.kno.knowledge.getKnowledge(id);
  }
}

module.exports = KnowledgeController;
