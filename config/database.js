// config/database.js

var mysql = require('mysql');
var connection = require('express-myconnection');
var options = {
	connectionLimit : 10,
	timeout: 30000, // 30s
	host : 'localhost', 
	user : 'root',
	password : '',
	port : 3306, //port mysql
	database : ''
};
module.exports.options = options ;

var pool  = mysql.createPool(options);

exports.getConnection = function(callback) {
  pool.getConnection(function(err, conn) {
    if(err) {
	  console.log('\n ****Error in mysql****');
      //return callback(err);
	  if (err) throw err;
    }
	//console.log('\n ****pool getConnection****');
    callback(err, conn);
  });
};


/*var mysql = require('mysql');
var connection = mysql.createConnection({
	connectionLimit : 10,
	host : 'localhost', //'localhost',
	user : 'msh',
	password : '7838406',
	port : 3306, //port mysql
	database : 'taavondb'
});

connection.connect(function(err) {
    if (err) throw err;
});

module.exports = connection;*/
