var coreJs  = require('../core');
var createSql  = coreJs._createSql;
var createReslt  = coreJs._createReslt;
var moment = require('moment-timezone');
var pool = require('../../config/database');
var validator = require('../validator');

 /* use for show form first time*/
exports.form = function(req, res){
	var user = req.user;
	res.render('users/mytrans', {data:user});
};

 /* get list of data in form */
exports.list = function(req, res){
	var url = require('url').parse(req.url,true).query;
	//-------------- validator
	var data = new Array();
	data.push(url.searchField);
	data.push(url.searchString);
	var response = validator.global('list',null,res,data,null);
	if(response.result != true) {res.send(response.msg);return ;}
	
	var filter = 'personid = ' + req.user.id;
	var sql = createSql(req , "vu.*" , "vi_taa_transaction" , "vu" , filter );
	pool.getConnection(function(err,connection){
        var query = connection.query(sql ,function(err,rows){
			connection.release();
            if(err){
				var test = coreJs._getErrMessage(err,'list of data user','لیست تراکنش های مالی کاربر',query.sql);
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
	var sql = "select COALESCE(sum(creditor)- sum(debtor) ,0)as sum from (taa_transaction trans join taa_users users) where (users.id = trans.userid) and users.id = ?";
	pool.getConnection(function(err,connection){
        var query = connection.query(sql ,[req.user.id],function(err,rows){
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
 
 




