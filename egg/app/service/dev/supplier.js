'use strict';

const Service = require('egg').Service;

class SupplierService extends Service {
    // 查询所有供应商
    async page(query) {
        const {  app, ctx } = this;
        const { limit, page } = query;
        const Op = app.Sequelize.Op;
        const where = {}
        if (query.name) {
            where.name = { [Op.like]: `%${query.name}%` }
        }
        try {
            return await ctx.model.Dev.Supplier.findAndCountAll({
                where,
                limit: parseInt(limit),
                offset: (page - 1) * limit
            });
        } catch (error) {
            console.log(error);
            return false
        }
    }
}

module.exports = SupplierService;