var coreJs  = require('../core');
var createSql  = coreJs._createSql;
var createReslt  = coreJs._createReslt;
var moment = require('moment-timezone');
var pool = require('../../config/database');
var validator = require('../validator');
var persianDate = require('persian-date');
var myjs = require('../../public/js/my');

 /* use for show form first message*/
exports.newform = function(req, res){
	var user = req.user;
	res.render('public/message_new', {data:user});
};

 /* get adminuser */
exports.listuseradmin = function(req, res){
	var query = require('url').parse(req.url,true).query;
	var sql = "select * from vi_taa_adminuser";
	pool.getConnection(function(err,connection){
        var query = connection.query(sql ,function(err,rows){
			connection.release();
            if(err){
				var test = coreJs._getErrMessage(err,'list user admin','دریافت لیست کاربران ادمین',query.sql);
				res.status(test.status).send(test.msg);
				return ;					
			}
			res.json(rows);
        });
    });
};
	
/* Save message */
exports.save = function(req,res){
    var input = JSON.parse(JSON.stringify(req.body));
	var user = parseInt(req.user.id ) +  parseInt(global.changIdForHack);
	var data = {
		code 		: "me"+ user + moment(new Date()).format("MDHHmmss"),
		replayCode  : input.replayCode,
		subject     : input.subject,
		desc 		: input.desc,
		sender 		: req.user.id, 
		reciver   	: parseInt(input.reciver)-global.changIdForHack, 
		datecreateF : new persianDate().format(),
		owner		: input.owner, 
		status		: input.status,
	};
	//-------------- validator
	var response = null;
	var newMsg = true;
	var updateStatus = null;
	if(myjs.isNull(data.replayCode) == true){/* new message */
		data.replayCode = null;
		data.status = global.messageUnread;
		data.owner = req.user.id;
		
		response = validator.message('save-message',null,res,data,null);
	}else{/* replay or close message */
		newMsg = false;
		if(myjs.isNull(data.status) == true){
			data.status = global.messageAnswer;
			updateStatus = global.messageReplay;
			response = validator.message('replay-message',null,res,data,null);
		}else{
			updateStatus = global.messageClose;/* close message */
			response = validator.message('close-message',null,res,data,null);
		}
		data.owner = parseInt(data.owner)-global.changIdForHack;
	}
	
	if(response.result != true) {res.send(response.msg);return ;}
	
    pool.getConnection(function (err, connection) {
		if(newMsg == false){
			var query2 = connection.query("UPDATE taa_message SET status = ? WHERE code = ? or replayCode = ? ",[updateStatus,data.replayCode,data.replayCode], function(err2, rows2){
				if (err2){
					var test = coreJs._getErrMessage(err2,'update old message','بروز رسانی پیام گذشته',query2.sql);
					res.status(test.status).send(test.msg);
					return ;				
				}
			});
		}
        var query = connection.query("INSERT INTO taa_message set ? ",data, function(err, rows){
			connection.release();
			if (err){
				var test = coreJs._getErrMessage(err,'Save new message','ذخیره پیام جدید',query.sql);
				res.status(test.status).send(test.msg);
				return ;				
			}

			res.setHeader('Content-Type', 'text/plain');
			res.end(JSON.stringify('success', null, 2));
		});
    });
};

/* change status message */
exports.changeStatus = function(req,res){
    var input = JSON.parse(JSON.stringify(req.body));
	var user = parseInt(req.user.id ) +  parseInt(global.changIdForHack);
	var data = {
		code 		: input.code,
		status  	: input.status,
	};
	//-------------- validator
	var response = null;
	response = validator.message('changeStatus',null,res,data,null);
 	if(response.result != true) {res.send(response.msg);return ;}
	
	var str = "UPDATE taa_message SET status = ? WHERE code = ?";
	var dataSend = [data.status,data.code];
	if(data.status == global.messageClose){/* close message by user in send message form */
		str = "UPDATE taa_message SET status = ? WHERE (code = ? or replayCode = ?) and owner = ? ";
		dataSend = [data.status,data.code,data.code,req.user.id];
	}
    pool.getConnection(function (err, connection) {
		var query2 = connection.query(str,dataSend, function(err2, rows2){
			connection.release();
			if (err2){
				var test = coreJs._getErrMessage(err2,'changeStatus message','تغییر وضعیت پیام',query2.sql);
				res.status(test.status).send(test.msg);
				return ;				
			}
		});
		res.setHeader('Content-Type', 'text/plain');
		res.end(JSON.stringify('success', null, 2));
    });
};

 /* use for show form receive message */
exports.receiveform = function(req, res){
	var user = req.user;
	res.render('public/message_receive', {data:user});
};

 /* get list of message received */
exports.message_received = function(req, res){
	var changIdForHack = parseInt(req.user.id ) +  parseInt(global.changIdForHack);
	var query = require('url').parse(req.url,true).query;
	var data = new Array();
	data.push(query.searchField);
	data.push(query.searchString);
	//-------------- validator
	var response = validator.global('list',null,res,data,null);
	if(response.result != true) {res.send(response.msg);return ;}
	var filter = 'reciver = ' + changIdForHack + ' and (status = ' + global.messageUnread + ' or status = ' + global.messageAnswer  + ' or status = ' + global.messageSee + ')'
	var sql = createSql(req , "vu.code,vu.subject,vu.desc,vu.datecreateF,vu.status,vu.statusname,vu.sendername,vu.sender,vu.replayCode,vu.owner" , "vi_taa_message" , "vu" , filter);
	pool.getConnection(function(err,connection){
        var query = connection.query(sql ,function(err,rows){
			connection.release();
            if(err){
				var test = coreJs._getErrMessage(err,'message received','لیست پیام های دریافتی',query.sql);
				res.status(test.status).send(test.msg);
				return ;
			}
			var jsonObj = createReslt(req,rows);
			res.json(jsonObj);
        });
    });
};

 /* get count of message received */
exports.message_count = function(req, res){
	var changIdForHack = parseInt(req.user.id ) +  parseInt(global.changIdForHack);
	var filter = 'reciver = ' + changIdForHack + ' and (status = ' + global.messageUnread + ' or status = ' + global.messageAnswer  + ' or status = ' + global.messageSee + ')'
	var sql = "select COALESCE(count(*),0) as count from vi_taa_message where " + filter;
	pool.getConnection(function(err,connection){
        var query = connection.query(sql ,function(err,rows){
			connection.release();
            if(err){
				var test = coreJs._getErrMessage(err,'count of message','تعداد پیام های دریافتی',query.sql);
				res.status(test.status).send(test.msg);
				return ;
			}
			res.json(rows[0].count);
        });
    });
};

 /* use for show form receive message */
exports.sendform = function(req, res){
	var user = req.user;
	res.render('public/message_send', {data:user});
};

 /* get list of message sended */
exports.message_sended = function(req, res){
	var changIdForHack = parseInt(req.user.id) +  parseInt(global.changIdForHack);
	var query = require('url').parse(req.url,true).query;
	var data = new Array();
	data.push(query.searchField);
	data.push(query.searchString);
	//-------------- validator
	var response = validator.global('list',null,res,data,null);
	if(response.result != true) {res.send(response.msg);return ;}
	
	var sql = createSql(req , "vu.code,vu.subject,vu.desc,vu.datecreateF,vu.status,vu.statusname,vu.recivername,vu.reciver" , "vi_taa_message" , "vu" , "owner = " + changIdForHack + ' and vu.replayCode is null ');
	pool.getConnection(function(err,connection){
        var query = connection.query(sql ,function(err,rows){
			connection.release();
            if(err){
				var test = coreJs._getErrMessage(err,'message sended','لیست پیام های ارسالی',query.sql);
				res.status(test.status).send(test.msg);
				return ;
			}
			var jsonObj = createReslt(req,rows);
			res.json(jsonObj);
        });
    });
};

 /* load message */
exports.message_load = function(req, res){
    var code = req.params.code;
	var user = parseInt(req.user.id ) +  parseInt(global.changIdForHack);
	//-------------- validator
	var data = new Array();
	data.push(code);
	var response = validator.global('list',null,res,data,null);
	if(response.result != true) {res.send(response.msg);return ;}

	var sql = " select msg.subject , msg.desc , msg.datecreateF ,msg.sendername,msg.reciver,msg.owner from vi_taa_message msg where (msg.code = ? or msg.replayCode = ?) order by msg.datecreateE desc";
	pool.getConnection(function(err,connection){
		var query = connection.query(sql,[code,code],function(err, rows){
			connection.release();
            if(err){
				var test = coreJs._getErrMessage(err,'load message','بارگذاری پیام',query.sql);
				res.status(test.status).send(test.msg);
				return ;
			}				
			if (!rows.length) {
				res.status(422).send('سابقه ای برای این پیام وجود ندارد .');
				coreJs._createLog('log',req,req.user.id,global.Error_Hack,'access denides to :' + code);
				return;				
			}else{
				if(rows[0].reciver != user){
					coreJs._createLog('log',req,req.user.id,global.Error_Hack,'access denides to :' + code);
					res.status(422).send('شما دسترسی مجاز برای مشاهده این پیام را ندارید . در صورت لزوم با ادمین سامانه تماس بگیرید');
					return;
				}
				var obj = {replayCode:null , subject:rows[0].subject , desc:'',status : global.messageAnswer,owner : rows[0].owner};
				for(var i = rows.length -1 ;i>=0  ;i--){
					obj.desc = obj.desc + '<b>' + rows[i].sendername + '</b> (' + rows[i].datecreateF + ') : ' + rows[i].desc + '\n <hr>';
				}
				res.json(obj);
			}
		});	
    });
};

 /* last statue of message */
exports.message_laststatue = function(req, res){
    var code = req.params.code;
	var user = parseInt(req.user.id ) +  parseInt(global.changIdForHack);
	//-------------- validator
	var data = new Array();
	data.push(code);
	var response = validator.global('list',null,res,data,null);
	if(response.result != true) {res.send(response.msg);return ;}
	
	var sql = " select msg.desc , msg.datecreateF ,msg.sendername from vi_taa_message msg where msg.owner = ? and msg.replayCode = ? and msg.status = ? order by msg.datecreateE desc limit 1 ";
	pool.getConnection(function(err,connection){
		var query = connection.query(sql,[user,code,global.messageClose],function(err, rows){
			connection.release();
			console.log(query.sql);
            if(err){
				var test = coreJs._getErrMessage(err,'last statue of message','دریافت آخرین وضعیت پیام',query.sql);
				res.status(test.status).send(test.msg);
				return ;
			}				
			if (!rows.length) {
				coreJs._createLog('log',req,req.user.id,global.Error_Hack,'access denides to :' + code);
				res.status(422).send('هنوز جواب نهایی برای این پیام شما ارسال نشده است . پس از بسته شدن پیام می توانید پاسخ نهایی را مشاهده نمایید .');
			}else{
				var desc = rows[0].sendername + ' (' + rows[0].datecreateF + ') : ' + rows[0].desc ;
				res.json(desc);
			}
		});	
    });
};
 


