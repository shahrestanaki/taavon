var coreJs  = require('../core');
var createSql  = coreJs._createSql;
var createReslt  = coreJs._createReslt;
var bcrypt = require('bcrypt-nodejs');
var moment = require('moment-timezone');
var pool = require('../../config/database');
var validator = require('../validator');

 /* use for show form first time*/
exports.form = function(req, res){
	var user = req.user;
	res.render('admin/userslist', {data:user});
};

 /* get list of data in form */
exports.list = function(req, res){
	var query = require('url').parse(req.url,true).query;
	//-------------- validator
	var data = new Array();
	data.push(query.searchField);
	data.push(query.searchString);
	var response = validator.global('list',null,res,data,null);
	if(response.result != true) {res.send(response.msg);return ;}

	var sql = createSql(req , "vu.*" , "vi_taa_userlist" , "vu" , "" );
	pool.getConnection(function(err,connection){
        var query = connection.query(sql ,function(err,rows){
			connection.release();
            if(err){
				var test = coreJs._getErrMessage(err,'list user','لیست کاربران',query.sql);
				res.status(test.status).send(test.msg);
				return ;
			}
			var jsonObj = createReslt(req,rows);
			res.json(jsonObj);
        });
    });
};

/* put date for edit record */
exports.edit = function(req,res){
	var input =  req.body;
    //var id = validator.isInt(input.id) ? $('#myModal').modal('show') : input.id ;
	var id = input.id;
	var data = {
		name : input.name,
		famili    : input.famili,
		username : input.username,
		status   : input.statusname, 
		rules   : input.rulesname,
		changedate :  moment(new Date()).format("YYYY-MM-DD HH:mm:ss"),
		edituser : req.user.id,
	};
	//-------------- validator
	var response = validator.userList('edit-input',null,res,data,null);
	if(response.result != true) {res.send(response.msg);return ;}
	
	response = validator.userList('edit-lock',null,res,data,id);
	if(response.result != true) {res.send(response.msg);return ;}
	//--------------
    pool.getConnection(function (err, connection) {
        var query = connection.query("UPDATE taa_users set ? WHERE id = ? ",[data,id], function(err, rows) {
			connection.release();
			if (err){
				var test = coreJs._getErrMessage(err,'edit user','ویرایش کاربران',query.sql);
				res.status(test.status).send(test.msg);
				return ;
			}
				res.setHeader('Content-Type', 'text/plain');
				//res.write('edit Successfully')
				res.end(JSON.stringify('success', null, 2));
			});
    
    });
};

/* put password for edit password */
exports.changepass = function(req,res){
	var input = JSON.parse(JSON.stringify(req.body));
	var id = input.id;	
	var data = {
		password : bcrypt.hashSync(input.password, null, null), 
		changedate : moment(new Date()).format("YYYY-MM-DD HH:mm:ss"),
		edituser : req.user.id,
    };
	//-------------- validator
	var response = validator.userList('changepass',null,res,input.password,null);
	if(response.result != true) {res.send(response.msg);return ;}
		
    pool.getConnection(function (err, connection) {
        var query = connection.query("UPDATE taa_users set ? WHERE id = ?",[data,id], function(err, rows) {
			connection.release();
			if (err){
				var test = coreJs._getErrMessage(err,'edit password','ویرایش رمز عبور',query.sql);
				res.status(test.status).send(test.msg);
				return ;
			}
			res.setHeader('Content-Type', 'text/plain');
			res.end(JSON.stringify('success', null, 2));
        });
    });
};

/* Save new user */
exports.save = function(req,res){
    var input = JSON.parse(JSON.stringify(req.body));
	var data = {
		name : input.name,
		famili    : input.famili,
		username : input.username,
		password : bcrypt.hashSync(input.password, null, null), 
		status   : input.statusname, 
		rules   : input.rulesname,
		createdate : moment(new Date()).format("YYYY-MM-DD HH:mm:ss"),
	};

	//-------------- validator
	var data2 = data;
	data2.password = input.password;
	var response = validator.userList('save-input',null,res,data2,null);
	if(response.result != true) {res.send(response.msg);return ;}
	
    pool.getConnection(function (err, connection) {
        var query = connection.query("INSERT INTO taa_users set ? ",data, function(err, rows){
			connection.release();
			if (err){
				var test = coreJs._getErrMessage(err,'Save new user','ثبت کاربر جدید',query.sql);
				res.status(test.status).send(test.msg);
				return ;
			}
			res.setHeader('Content-Type', 'text/plain');
			res.end(JSON.stringify('success', null, 2));
		});
    });
};

/* delete user */
exports.delete = function(req,res){
    var input = JSON.parse(JSON.stringify(req.body));
    var id = input.id;
	//-------------- validator
	var response = validator.userList('delete',req,res,null,id);
	if(response.result != true) {res.send(response.msg);return ;}
			
    pool.getConnection(function (err, connection) {
        var query = connection.query("DELETE FROM taa_users WHERE id = ? ",[id], function(err, rows){
		connection.release();
		if(err){
			var test = coreJs._getErrMessage(err,'delete user','حذف کاربر',query.sql);
			res.status(test.status).send(test.msg);
			return ;
		}
		res.setHeader('Content-Type', 'text/plain');
		res.end(JSON.stringify('success', null, 2));
        });
        
	});
};

 /* get list of Login log user */
exports.usersloglogin = function(req, res){
	var id =  require('url').parse(req.url,true).query.id;
	var sql2 = "select * from vi_taa_userloginlog log where log.userid = ? limit ?";
	pool.getConnection(function(err,connection){
        var query = connection.query(sql2 ,[id,global.loginLogShowCountAdmin],function(err,rows){
			connection.release();
            if(err){
				var test = coreJs._getErrMessage(err,'get list of Login log user','اطلاعات ورود و خروج کاربر',query.sql);
				res.status(test.status).send(test.msg);
				return ;
			}
			var jsonObj = createReslt(req,rows);
			res.json(jsonObj);
        });
    });
};

/* Eject the user */
exports.ejectuser = function(req,res){
    var input = JSON.parse(JSON.stringify(req.body));
    var id = input.id;
	//-------------- validator
	var response = validator.userList('ejectuser',req,res,null,id);
	if(response.result != true) {res.send(response.msg);return ;}	

    pool.getConnection(function (err, connection) {
        var query = connection.query("DELETE FROM sessions WHERE data like '%passport\":{\"user\":?%'",[id], function(err, rows){
			connection.release();
			if(err){
				var test = coreJs._getErrMessage(err,'Eject the user','اتمام جلسه کاری کاربر',query.sql);
				res.status(test.status).send(test.msg);
				return ;
			}
			res.setHeader('Content-Type', 'text/plain');
			res.end(JSON.stringify('success', null, 2));
		});
	});
};

 /* get list light of user for others form */
exports.userlistlight = function(req, res){
	//-------------- validator
	var data = new Array();
	data.push(req.query.search);
	var response = validator.global('list',null,res,data,null);
	if(response.result != true) {res.send(response.msg);return ;}	
	
	var sql = " select v.id , v.fullname from vi_taa_userlist v where v.fullname like '%"+req.query.search+"%'";
	pool.getConnection(function(err,connection){
        var query = connection.query(sql,function(err,rows){
			connection.release();
            if(err){
				var test = coreJs._getErrMessage(err,'list light of user','جستجوی کاربر',query.sql);
				res.status(test.status).send(test.msg);
				return ;
			}
			var jsonObj = createReslt(req,rows);
			res.json(jsonObj);
        });
    });
};


 