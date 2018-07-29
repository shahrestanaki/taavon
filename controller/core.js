module.exports = {
	 _createSql : function(req,fileds,fromVi,name,forceFilter){
		//console.log('*****core.js : '+forceFilter);
		
		var countFilter = generateFilter(name+"2",req,forceFilter,false);
		var countSql = " (select count(*) from " + fromVi +" "+ name +"2 "+ countFilter + ") as total_row , ";
		//console.log('******core.js : after countSql');
		
		var mainFilter = generateFilter(name,req,forceFilter,true);
		var mainSql = "select " +" "+ countSql +" "+ fileds +" from "+ fromVi +" "+ name +" "+ mainFilter ;
		//console.log('******core.js : after mainFilter');
		return mainSql;
	},
    _createReslt: function(req,rows) {
		var query = require('url').parse(req.url,true).query;
		var pageSize = query.rows !== undefined ? query.rows : 0 ;
		var pageNumber = query.page !== undefined ? query.page : 0 ;
		var records = 0;
		if(rows != null && rows != undefined && rows.length != 0){
			records = rows[0].total_row;
		}
		var total = parseInt(records/pageSize);
		if(records%pageSize != 0){
			total++;
		}
		var jsonObj = {
			records : records,
			page : pageNumber,
			total : total,
			rows : rows,
		}
		return jsonObj;
    },
	_createLog:function(flag,req,userid,status,desc) {
		
		var ip = null ;
		if(req && req != undefined){
			ip = req.headers['x-forwarded-for'] || req.connection.remoteAddress;
		}
		var pool = require('../config/database');
		var persianDate = require('persian-date');
		pool.getConnection(function(err, connection) {
			connection.release();
			if(flag == "login"){
				var logsql = "INSERT INTO taa_loginloger(`userid`, `status`, `dateloginF`, `ip`,`others`) VALUES (?,?,?,?,?)";
				connection.query(logsql,[userid,status,new persianDate().format(),ip,desc],function(err, rows){
					if (err){
						console.log('\n core.js : enter _createLogLogin:'+err);
					}
				});
			}else if(flag == 'log'){
				console.error((new Date)+ ' log: ', userid + " : " + status+ " : " +ip+ " : " +desc)
				var logsql = "INSERT INTO taa_log(`userid`,`code`,`ip`,`desc`) VALUES (?,?,?,?)";
				connection.query(logsql,[userid,status,ip,desc],function(err, rows){
					if (err){
						console.log('\n core.js : enter _createLog:'+err);
					}
				});
			}
		});
	},
	_cleanXss:function(dirty){
		var xssFilters = require('xss-filters');
		return xssFilters.inHTMLData(dirty);
	},
	_checkUserLogin:function(req,flag,user) {
		var moment = require('moment-timezone');
		if(moment(user.lockdate).add(global.timeMinuteForUnLock, 'm') > moment(new Date())){
			req.flash('loginMessage','M100');
			return false;
		}else if(flag == false && user.countLog + 1 >= global.countForUserLock){
			lockUser(user.id,true);
			req.flash('loginMessage','M101');
			return false;
		}
		
		if( flag == true){
			if (user.lockdate && user.lockdate != null){
				req.flash('loginMessage','M102');
				lockUser(user.id,false);
			}			
			req.session.countLog = 0;
			module.exports._createLog("login",req,user.id,global.successLoginLog,null);
			return true;
		}else{
			req.flash('loginMessage','M103');
			module.exports._createLog("login",req,user.id,global.errorLoginLog,null);
			return false;
		}		
	},
	_getErrMessage: function (err,en,fa,more){
		return  getErrMessage(err,en,fa,more);
	}
};

function lockUser(userid,flag){
	var pool = require('../config/database');
	var moment = require('moment-timezone');
	pool.getConnection(function(err, connection) {
		var locksql = "";
		if(flag == true){/*lock*/
			locksql = "UPDATE taa_users SET status = 2 , lockdate = '"+moment(new Date()).format("YYYY-MM-DD HH:mm:ss")+"' WHERE id  = ?";
		}else{/*unlock*/
			locksql = "UPDATE taa_users SET status = 1 , lockdate = null WHERE id  = ?";
		}
		connection.query(locksql,[userid],function(err, rows){
			connection.release();
			if (err){
				console.log('\n core.js : locksql:'+ err);
			}
		});
	});	
}

function generateFilter (name,req,forceFilter,flag) {
	var query = require('url').parse(req.url,true).query;
	var issearch = query._search !== undefined ? JSON.parse(query._search) : false ;
	var pageSize = query.rows !== undefined ? query.rows : "" ;
	var pageNumber = query.page !== undefined ? query.page : "" ;
	var order = query.sidx !== undefined ? query.sidx : "" ;
	var sorder = query.sord !== undefined ? query.sord : "" ;
	var searchField = query.searchField !== undefined ? query.searchField : "" ;
	var searchString = query.searchString !== undefined ? query.searchString : "" ;
	var searchOper = query.searchOper !== undefined ? query.searchOper : "" ;
	var searchOption = forceFilter != "" ? " where " + name + '.' + forceFilter : " where 1=1 ";
	if( (issearch == true) && ((searchField.trim() && searchString.trim() && searchOper.trim()) || ( searchField.trim() && (searchOper === "nu" || searchOper === "nn"))) ){
		//console.log('core.js : enter if searchOption');
		searchOption += " and " + changeSearchOper(name,searchField,searchOper,searchString) ;
	}

	if(flag == true){
		if(order != ""){
			searchOption += !order.trim() && !sorder.trim() ? "" : " order by " + order + " " + sorder;
		}
		if(pageSize != "" || pageNumber != "" || order != ""){
			searchOption += !pageNumber.trim() ? "" :  " limit " + (pageNumber - 1) * pageSize ;
			searchOption += !pageSize.trim() ? "": " , " + pageSize ;
		}
	}
	//console.log('******'+'core.js : searchOption:' + searchOption+'*******');
	return searchOption;
}
	
function changeSearchOper(name,searchField,searchOper,searchString){
	switch(searchOper){
		case "eq" ://equals
			return name + "." + searchField + " = '" + searchString + "'";
		break;
		case "ne" ://notEquals
			return name + "." + searchField + " != '" + searchString + "'";
		break;
		case "lt" ://less
			return name + "." + searchField + " < '" + searchString +"'";
		break;
		case "le" ://lessOrEquals
			return name + "." + searchField + " < '" + searchString + "' or " + name + "." + searchField + " = '" + searchString + "'";
		break;
		case "gt" ://greater
			return name + "." + searchField + " > '" + searchString + "'";
		break;
		case "ge" ://greaterOrEquals
			return name + "." + searchField + " > '" + searchString + "' or " + name + "." + searchField + " = '" + searchString + "'";
		break;			
		case "cn" ://contains
			return name + "." + searchField + " like '%" + searchString + "%'";
		break;	
		case "nc" ://does not contains
			return name + "." + searchField + " not like '%" + searchString + "%'";
		break;	
		case "bw" ://startsWith
			return name + "." + searchField + " like '" + searchString + "%'";
		break;	
		case "bn" ://does not startsWith
			return name + "." + searchField + " not like '" + searchString + "%'";
		break;	
		case "en" ://does not endWith
			return name + "." + searchField + " not like '%" + searchString + "'";
		break;	
		case "ew" :
			return name + "." + searchField + " like '%" + searchString + "'";
		break;	
		case "in" ://in
			return name + "." + searchField + " in (" + searchString + ")";
		break;	
		case "ni" ://not in
			return name + "." + searchField + " not in (" + searchString + ")";
		break;			
		case "nu" :
			return " ISNULL(" + name + "." + searchField + ")" ;
		break;	
		case "nn" :
			return " not ISNULL(" + name + "." + searchField + ")" ;
		break;	
 
		default:
			return "";
		break;
	}
	return "";
}

function getErrMessage(err,en,fa,more){
	var s = en != null ? en : '' ;
	var e = more != null ? more : '' ;
	var result = {status : 500,msg:''};
	console.error("\n " + s + " *** Error : " + err + " ***** detail : " + e );
	if(err.toString().indexOf('ER_DUP_ENTRY: Duplicate entry') != -1){ /* error sql ,Duplicate */
		result.status = 422;
		result.msg = 'دیتای تکراری وارد شده است.لطفا در ورود اطلاعات دقت فرمایید';
		return result;
	}else{
		return global.ErrorDataBase + " : " +  fa != null ? fa : '';
	}
}