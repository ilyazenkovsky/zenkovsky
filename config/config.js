require("dotenv").config();

module.exports = {
  development: {
    username: process.env.MY_USERNAME,
    password: process.env.MY_PASSWORD,
    database: process.env.MY_DATABASE,
    host: process.env.MY_HOST,
    port: process.env.MY_PORT,
    dialect: "mysql",
  },
};
