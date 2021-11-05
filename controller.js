'use strict';

var response = require('./res');
var connection = require('./koneksi');

exports.index = function (req,res){
    response.ok("Aplikasi RES API ku berjalan!",res)
};

//menampilkan semua data mahasiswa
exports.tampilsemuamahasiswa = function (req, res) {
    connection.query('SELECT * FROM mahasiswa', function (error, rows, fileds) {
        if (error) {
            console.log(error);
        } else {
            response.ok(rows, res)
        }
    });
};