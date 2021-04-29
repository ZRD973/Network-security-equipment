'use strict';

module.exports = app => {
  const { STRING, INTEGER } = app.Sequelize;

  const Supplier = app.model.define('supplier', {
    supplier_id: { type: INTEGER, primaryKey: true, autoIncrement: true },
    name: STRING(255),
    telphone:STRING(255),
    address:STRING(255),
    remarks:STRING(255),
  },{
    createdAt:false,
    updatedAt:false
  });

  Supplier.associate = function () {
    Supplier.hasMany(app.model.Dev.Device, { foreignKey: 'supplier_id' })
  }

  return Supplier;
};
