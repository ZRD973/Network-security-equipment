'use strict';

const Service = require('egg').Service;

class KnowledgeService extends Service {
    // 获取安全知识
    async page(query) {
        const {  app, ctx } = this;
        const { limit, page } = query;
        try {
            return await ctx.model.Kno.Knowledge.findAndCountAll({
                limit: parseInt(limit),
                offset: (page - 1) * limit
            });
        } catch (error) {
            console.log(error);
            return false
        }
    }


    // 增加安全知识
    async createKnowledge( body ) {
        const { ctx } = this
        try {
            return await ctx.model.Kno.Knowledge.create({
                title: body.title,
                type: body.type,
                content: body.content,
                author: body.author
            })
        } catch (error) {
            console.log(error);
            return false
        }
    }

    // 查找安全知识详情
    async getKnowledge(id) {
        const { ctx } = this;
        try {
            return await ctx.model.Kno.Knowledge.findOne({
                where: { id }
            })
        } catch (error) {
            return false
        }
    }
}

module.exports = KnowledgeService;