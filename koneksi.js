var mysql= require('mysql');

//buat koneksi databse
const conn = mysql.createConnection({
    host:'localhost',
    user:'rot',
    password:'',
    database:'dbrestapi'

});

conn.connect((err)=>{
    if(err) throw  err;
    console.log("Mysql terkoneksi");

});

module.exports = conn;