'use strict';

const Controller = require('egg').Controller;

class SupplierController extends Controller {
  async page() {
    const { ctx } = this;
    const query = ctx.query;
    ctx.validate({
      limit: { type: 'string', required: true },
      page: { type: 'string', required: true },
    }, query);
    ctx.body = await ctx.service.dev.supplier.page(query);
  }
}

module.exports = SupplierController;
