const mysql = require('mysql');
require('dotenv').config();

var connection = mysql.createConnection({

        port: process.env.DB_PORT,
        host: process.env.DB_HOST,
        database: process.env.DB_NAME,
        user: process.env.DB_USERNAME,
        password: process.env.DB_PASSOWRD,
        
})

connection.connect((err) =>{
    if (!err){
        console.log("Connected successfully !!");
    } else {
        console.log(err);
    }
});

module.exports = connection;