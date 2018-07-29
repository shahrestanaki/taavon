var coreJs  = require('../core');
var createSql  = coreJs._createSql;
var createReslt  = coreJs._createReslt;
var moment = require('moment-timezone');
var pool = require('../../config/database');
var validator = require('../validator');

 /* use for show form first time*/
exports.form = function(req, res){
	var user = req.user;
	res.render('admin/userstrans', {data:user});
};

 /* get list of data in form */
exports.list = function(req, res){
	var url = require('url').parse(req.url,true).query;
	//-------------- validator
	var data = new Array();
	data.push(url.searchField);
	data.push(url.searchString);
	data.push(url.id);
	var response = validator.global('list',null,res,data,null);
	if(response.result != true) {res.send(response.msg);return ;}
	
	var filter = 'personid = ' + url.id;
	var sql = createSql(req , "vu.*" , "vi_taa_transaction" , "vu" , filter );
	pool.getConnection(function(err,connection){
        var query = connection.query(sql ,function(err,rows){
			connection.release();
            if(err){
				var test = coreJs._getErrMessage(err,'list of data','لیست تراکنش های مالی کاربران',query.sql);
				res.status(test.status).send(test.msg);
				return ;
			}
			var jsonObj = createReslt(req,rows);
			res.json(jsonObj);
        });
    });
};

 /* load sum transaction for user */
exports.userstranssum = function(req, res){
	var url = require('url').parse(req.url,true).query;
	//-------------- validator
	var data = new Array();
	data.push(url.id);
	var response = validator.global('list',null,res,data,null);
	if(response.result != true) {res.send(response.msg);return ;}
	
	var sql = "select COALESCE(sum(creditor)- sum(debtor) ,0)as sum from (taa_transaction trans join taa_users users) where (users.id = trans.userid) and users.id = ?";
	pool.getConnection(function(err,connection){
        var query = connection.query(sql ,[url.id],function(err,rows){
			connection.release();
            if(err){
				var test = coreJs._getErrMessage(err,'load sum transaction','مجموع تراکنش های کاربران',query.sql);
				res.status(test.status).send(test.msg);
				return ;
			}
			res.json(rows[0]);
        });
    });
};

/* Save or Edit transaction */
exports.save = function(req,res){
    var input = JSON.parse(JSON.stringify(req.body));
	var data = {
		currency 	: input.currency,
		type		: input.type,
		transdate   : input.transdate,
		description : input.description,
		userId 		: input.userId, 
	};
	//-------------- validator
	var response = validator.transaction('save',null,res,data,null);
	if(response.result != true) {res.send(response.msg);return ;}
	
	if(data.type == global.transactionTypeDebit){
		data.debtor = data.currency;
	}else if (data.type == global.transactionTypeCredit){
		data.creditor = data.currency;
	}
	delete data.type;
	delete data.currency;
	
    pool.getConnection(function (err, connection) {
        var query = connection.query("INSERT INTO taa_transaction set ? ",data, function(err, rows){
			connection.release();
			if (err){
				var test = coreJs._getErrMessage(err,'save transaction','ذخیره تراکنش کاربران',query.sql);
				res.status(test.status).send(test.msg);
				return ;
			}
			res.setHeader('Content-Type', 'text/plain');
			res.end(JSON.stringify('success', null, 2));
		});
    });
};

/* Edit transaction */
exports.edit = function(req,res){
    var input = JSON.parse(JSON.stringify(req.body));
	var data = {
		currency 	: input.currency,
		transdate   : input.transdate,
		description : input.description,
		id 			: input.id, 
	};
	/*if(data.currency.indexOf('(') == 0){
		data.currency = data.currency.replace('(','-').replace(')','');
	}*/
	//-------------- validator
	var response = validator.transaction('edit',null,res,data,null);
	if(response.result != true) {res.send(response.msg);return ;}
	
	if(data.currency.indexOf('(') == 0){
		data.debtor = data.currency.replace('(','').replace(')','');
		data.creditor = 0;
	}else{
		data.creditor = data.currency;
		data.debtor = 0;
	}
	delete data.currency;
	delete data.id;
	
    pool.getConnection(function (err, connection) {
        var query = connection.query("UPDATE taa_transaction SET ? WHERE id= ?",[data,input.id], function(err, rows){
			connection.release();
			if (err){
				var test = coreJs._getErrMessage(err,'edit transaction','ویرایش تراکنش کاربران',query.sql);
				res.status(test.status).send(test.msg);
				return ;
			}
			res.setHeader('Content-Type', 'text/plain');
			res.end(JSON.stringify('success', null, 2));
		});
    });
};

/* delete transaction */
exports.delete = function(req,res){
    var input = JSON.parse(JSON.stringify(req.body));
    var id = input.id;
	//-------------- validator
	var data = new Array();
	data.push(id);
	var response = validator.global('list',null,res,data,null);
	if(response.result != true) {res.send(response.msg);return ;}
    
	pool.getConnection(function (err, connection) {
        var query = connection.query("DELETE FROM taa_transaction WHERE id = ? ",[id], function(err, rows){
			connection.release();
			if(err){
				var test = coreJs._getErrMessage(err,'delete transaction','حذف تراکنش',query.sql);
				res.status(test.status).send(test.msg);
				return ;
			}
			res.end('{"success" : "delete Successfully", "status" : 200}');
        });
        
	});
};
 




