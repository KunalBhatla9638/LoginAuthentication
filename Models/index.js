const { Sequelize } = require("sequelize");

const sequelize = new Sequelize("try", "root", "", {
  host: "localhost",
  logging: false,
  dialect: "mysql",
});

module.exports = sequelize;
