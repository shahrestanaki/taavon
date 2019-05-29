var bcrypt = require('bcrypt-nodejs');
var moment = require('moment-timezone');
var pool = require('../../config/database');
var coreJs  = require('../core');
var createReslt  = coreJs._createReslt;
var validator = require('../validator');
var formidable = require('formidable');
var fs = require('fs');
var myjs = require('../../public/js/my');

exports.form = function(req, res){
	var user = req.user;
	//console.log("\n fff  "+req.cookies('XSRF-TOKEN','dfgh'));
	res.cookie('XSRF-TOKEN', req.csrfToken());
	if(user.rules == 2){
		res.render('users/mydashboard', {data:user});
	}else{
		res.render('admin/dashboard', {data:user});
	}
	
};

/* dashboard changepass */
exports.changepass = function(req,res){
	var input = JSON.parse(JSON.stringify(req.body));
	var userId = req.user.id;
	var data = {
		password : bcrypt.hashSync(input.password, null, null), 
		changedate : moment(new Date()).format("YYYY-MM-DD HH:mm:ss"),
		edituser : userId,
    };
	//-------------- validator
	var response = validator.dashboard_admin('changepass',null,res,input.password,null);
	if(response.result != true) {res.send(response.msg);return ;}
	
    pool.getConnection(function (err, connection) {
		var checkPassSql = "select us.password from taa_users us where us.id = ?";
		var updatePassSql = "UPDATE taa_users set ? WHERE id = ?";
		var query = connection.query(checkPassSql,[userId], function(err, rows) {
			if (err){
				var test = coreJs._getErrMessage(err,'dashboard changepass-checkPass','دریافت رمز عبور پیشین',query.sql);
				res.status(test.status).send(test.msg);
				return ; 
			}			
			bcrypt.compare(input.oldpassword, rows[0].password, function(err, result) {
				if( result == true){
					var query2 = connection.query(updatePassSql,[data,userId], function(err, rows) {
						console.log('\n updatePassSql');
						connection.release();
						if (err){
							var test = coreJs._getErrMessage(err,'dashboard changepass Submit Pass','تغییر رمز عبور',query2.sql);
							res.status(test.status).send(test.msg);
							return ; 
						}
						res.setHeader('Content-Type', 'text/plain');
						res.end(JSON.stringify('success', null, 2));
					});
				}else{
					res.status(422).send('رمز پیشین وارد شده صحیح نمی باشد !'); 
				}
			});				
		});
    });
};

/* loginchart */
exports.loginchart = function(req, res){
    pool.getConnection(function (err, connection) {
		var sql = " select * from vi_taa_loginchart ";
        var query = connection.query(sql, function(err, rows) {
			connection.release();
			if (err){
				var test = coreJs._getErrMessage(err,'loginchart','سابقه ورود کاربر',query.sql);
				res.status(test.status).send(test.msg);
				return ; 
			}
			//var jsonObj = createReslt(req,rows);
			res.json(rows);
		});
    });
};

/* upload file for avatar */
exports.avatar = function(req, res){
	var userId = req.user.id;
    var form = new formidable.IncomingForm();
    form.parse(req);
 
    form.on('fileBegin', function (name, file){/* save file */
		//var name = name.split('.')[0];
		var suffix = name.split('.')[1];
		newName = userId + global.changIdForHack + "." + suffix;
		var test = myjs.validateAvatar(suffix,form.bytesExpected/1000);
		if(test == true){
			file.path = "public/"+global.avatarUrl + newName ;
			form.on('file', function (name, file){/* load file */
				pool.getConnection(function (err, connection) {
					var sql = " UPDATE `taa_users` SET `avatar` = '"+global.avatarUrl + newName+"' WHERE `id` = " + userId;
					var query = connection.query(sql, function(err, rows) {
						connection.release();
						if (err){
							var test = coreJs._getErrMessage(err,'exports.avatar','آپلود عکس کاربر با خطای دیتابیس مواجه شد',query.sql);
							res.status(test.status).send(test.msg);
							return ; 
						}
						res.status(200).send(global.avatarUrl + newName); 
					});
				});			
			});		
		}else{
			var msg = test;
			res.status(422).send(msg);			
 		}
    });
};

 

