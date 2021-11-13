const mongoose = require('mongoose');
const dotenv = require("dotenv")
dotenv.config()

const url = `mongodb://${process.env.DB_HOST}:${process.env.DB_PORT}/produtos`
//const url = `mongodb://dbmongo:27017/produtos`

mongoose.connect(url, { useNewUrlParser: true,useUnifiedTopology: true,});

module.exports = mongoose;