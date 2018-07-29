var myjs = require('../public/js/my');
module.exports = {
	global(flag,req,res,data,id){
		var response = {
			result : false,
			msg : '',
			req : req,
			res : res,
		}
		switch(flag){
			case 'list' :
				for(var item in data){
					var result = myjs.blackList(data[item]);
					if( result == true){
						response.res.setHeader('Content-Type', 'text/plain');
						response.res.status(500);
						response.msg = "اطلاعات وارد شده حاوی کاراکترهای غیر مجاز می باشد";
						return response;				
					}
				}
			break;
			default:
			break;
		}		
		response.result = true;
		return response;
	},			
	userList(flag,req,res,data,id){
		var response = {
			result : false,
			msg : '',
			req : req,
			res : res,
		}
		switch(flag){
			case 'edit-lock':
				if(id == data.edituser && data.status == global.userStatusDisable){// user wand edit itself
					response.res.setHeader('Content-Type', 'text/plain');
					response.res.status(422);
					response.msg = "شما مجاز به غیر فعال کردن کاربر خود نمی باشید.";
					return response;
				}else if (id == 0){//user wand edit supper user
					response.res.setHeader('Content-Type', 'text/plain');
					response.res.status(422);
					response.msg = "شما مجاز به انجام اینکار نمی باشید .";
					return response;			
				}else if (id == 1 && (data.status == global.userStatusDisable || data.rules == global.userCommon)){//user wand edit admin
					response.res.setHeader('Content-Type', 'text/plain');
					response.res.status(422);
					response.msg = "شما مجاز به انجام اینکار نمی باشید .";
					return response;	
				}
			break;
			case 'delete' :
				if (id == 0 || id == 1){//user wand delete supper user or admin
					response.res.setHeader('Content-Type', 'text/plain');
					response.res.status(422);
					response.msg = "شما مجاز به انجام اینکار نمی باشید .";
					return response;				
				}else if(id == req.user.id){// user wand delete itself
					response.res.setHeader('Content-Type', 'text/plain');
					response.res.status(422);
					response.msg = "شما قادر به حذف کاربر خود نمی باشید .";
					return response;	
				}
			break;
			case 'save-input' :
			case 'edit-input' :
				var array = new Array();
				array.push("data:"+data.name+":نام,required:true,format:farsi,minSize:1,maxSize:50");
				array.push("data:"+data.famili+":نام خانوادگی,required:true,format:farsi,minSize:1,maxSize:50");
				array.push("data:"+data.username+":نام کاربری,required:true,format:username,minSize:3,maxSize:20");
				if(flag == 'save-input'){
					array.push("data:"+data.password+":پسورد,required:true,format:password,minSize:3,maxSize:20");
				}
				array.push("data:"+data.status+":وضعیت,required:true,min:0,max:3");
				array.push("data:"+data.rules+":نقش کاربری,required:true,min:1,max:2");
				
				var test = myjs.checkValidateData(array);
				if( test.result == false){
					response.res.setHeader('Content-Type', 'text/plain');
					response.res.status(422);
					response.msg = test.msg;
					return response;
				}
			break;
			case 'ejectuser' :
				if(id == req.user.id){
					response.res.setHeader('Content-Type', 'text/plain');
					response.res.status(422);
					response.msg = "شما مجاز به اتمام جلسه کاری خود نیستید";
					return response;				
				}
			break;
			case 'changepass' :
				var result = myjs.blackList(data);
				if( result == true){
					response.res.setHeader('Content-Type', 'text/plain');
					response.res.status(500);
					response.msg = "اطلاعات وارد شده حاوی کاراکترهای غیر مجاز می باشد";
					return response;				
				}
				var array = new Array();
				array.push("data:"+data+":پسورد,required:true,format:password,minSize:3,maxSize:20");
				var test = myjs.checkValidateData(array);
				if( test.result == false){
					response.res.setHeader('Content-Type', 'text/plain');
					response.res.status(422);
					response.msg = test.msg;
					return response;
				}				
			break;
			default:
			break;
		}		
		response.result = true;
		return response;
	},
	dashboard_admin(flag,req,res,data,id){
		var response = {
			result : false,
			msg : '',
			req : req,
			res : res,
		}
		switch(flag){
			case 'changepass':
				var result = myjs.blackList(data);
				if( result == true){
					response.res.setHeader('Content-Type', 'text/plain');
					response.res.status(500);
					response.msg = "اطلاعات وارد شده حاوی کاراکترهای غیر مجاز می باشد";
					return response;				
				}
				var array = new Array();
				array.push("data:"+data+":پسورد,required:true,format:password,minSize:3,maxSize:20");
				var test = myjs.checkValidateData(array);
				if( test.result == false){
					response.res.setHeader('Content-Type', 'text/plain');
					response.res.status(422);
					response.msg = test.msg;
					return response;
				}	
			break;
			default:
			break;
		}		
		response.result = true;
		return response;
	},
	message(flag,req,res,data,id){
		var response = {
			result : false,
			msg : '',
			req : req,
			res : res,
		}
		switch(flag){
			case 'save-message':
				var array = new Array();
				array.push({data:data.reciver,fname:'دریافت کننده',required:true,format:'int'});
				array.push({data:data.subject,fname:'موضوع',required:true,format:'text',minSize:1,maxSize:255});
				array.push({data:data.desc,fname:'شرح',required:true,format:'text',minSize:1,maxSize:500});		
				
				var test = myjs.checkValidateData(array);
				if( test.result == false){
					response.res.setHeader('Content-Type', 'text/plain');
					response.res.status(422);
					response.msg = test.msg;
					return response;
				}
			break;
			case 'replay-message':
				var array = new Array();
				array.push({data:data.reciver,fname:'دریافت کننده',required:true,format:'int'});
				array.push({data:data.subject,fname:'موضوع',required:true,format:'text',minSize:1,maxSize:255});
				array.push({data:data.desc,fname:'شرح',required:true,format:'text',minSize:1,maxSize:500});		
				array.push({data:data.replayCode,fname:'پیام وابسته',required:true,format:'text'});
				
				var test = myjs.checkValidateData(array);
				if( test.result == false){
					response.res.setHeader('Content-Type', 'text/plain');
					response.res.status(422);
					response.msg = test.msg;
					return response;
				}
			break;	
			case 'close-message':
				var array = new Array();
				array.push({data:data.reciver,fname:'دریافت کننده',required:true,format:'int'});
				array.push({data:data.subject,fname:'موضوع',required:true,format:'text',minSize:1,maxSize:255});
				array.push({data:data.desc,fname:'شرح',required:true,format:'text',minSize:1,maxSize:500});		
				array.push({data:data.replayCode,fname:'پیام وابسته',required:true,format:'text'});
				array.push({data:data.status,fname:'وضعیت',required:true,format:'int',min:global.messageClose,max:global.messageClose});
				
				var test = myjs.checkValidateData(array);
				if( test.result == false){
					response.res.setHeader('Content-Type', 'text/plain');
					response.res.status(422);
					response.msg = test.msg;
					return response;
				}
			break;	
			case 'changeStatus':
				var array = new Array();
				array.push({data:data.code,fname:'کد پیام',required:true,format:'text',minSize:4,maxSize:40});
				array.push({data:data.status,fname:'وضعیت',required:true,format:'int',min:global.messageClose,max:global.messageClose});
				
				var test = myjs.checkValidateData(array);
				if( test.result == false){
					response.res.setHeader('Content-Type', 'text/plain');
					response.res.status(422);
					response.msg = test.msg;
					return response;
				}
			break;				
			default:
			break;
		}		
		response.result = true;
		return response;
	},
	transaction(flag,req,res,data,id){
		var response = {
			result : false,
			msg : '',
			req : req,
			res : res,
		}
		switch(flag){
			case 'save':
				var array = new Array();
				array.push({data:data.currency,fname:'مبلغ',required:true,format:'money'});
				array.push({data:data.type,fname:'نوع تراکنش',required:true,format:'int',minSize:0,maxSize:1});
				array.push({data:data.transdate,fname:'تاریخ تراکنش',required:true,format:'date'});
				array.push({data:data.description,fname:'شرح',required:false,format:'text',maxSize:30});
				array.push({data:data.userId,fname:'اطلاعات کاربر',required:true,format:'int',minSize:1});		
				
				var test = myjs.checkValidateData(array);
				if( test.result == false){
					response.res.setHeader('Content-Type', 'text/plain');
					response.res.status(422);
					response.msg = test.msg;
					return response;
				}
			break;
			case 'edit':
				var array = new Array();
				array.push({data:data.currency,fname:'مبلغ',required:true,format:'money'});
				array.push({data:data.transdate,fname:'تاریخ تراکنش',required:true,format:'date'});
				array.push({data:data.description,fname:'شرح',required:false,format:'text',maxSize:30});
				array.push({data:data.id,fname:'اطلاعات کاربر',required:true,format:'int',minSize:1});
				
				var test = myjs.checkValidateData(array);
				if( test.result == false){
					response.res.setHeader('Content-Type', 'text/plain');
					response.res.status(422);
					response.msg = test.msg;
					return response;
				}
			break;
			default:
			break;
		}		
		response.result = true;
		return response;
	},
	isNull : function(data){
	 return myjs.Msh_isEmpty(data);
	},
	farsiPatern : function(username){
	 return myjs.Msh_FarsiPatern(username);
	},
	usernamePatern : function(username){
	 return myjs.Msh_usernamePatern(username);
	},
	passwordPatern : function(password){
	 return myjs.Msh_passwordPatern(password);
	},
	blackList : function(str){
	 return myjs.Msh_xssBlackList(str);
	},	
	textPatern : function(str){
	 return myjs.Msh_textPatern(str);
	},	
	checkValidateData : function(array){
	 return myjs.Msh_CheckValidateData(array);
	},		
	
}