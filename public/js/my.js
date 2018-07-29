	/*  ==================================================================
		==================================================================
		========================== VARIBLE ==============================
		==================================================================
		==================================================================
	*/
	var _PublicVar_userStatusDisable = 0;
	var _PublicVar_userStatusDisableDesc = "غیر فعال";
	var _PublicVar_userStatusActive = 1;
	var _PublicVar_userStatusActiveDesc  = "فعال";
	var _PublicVar_userStatusLock = 2;
	var _PublicVar_userStatusLockDesc = "قفل موقت";
	/* ------------- */
	var _PublicVar_successLoginLog = 1;
	var _PublicVar_successLoginLogDesc = "ورود موفق";
	var _PublicVar_exitLoginLog = 2;
	var _PublicVar_exitLoginLogDesc = "خروج کاربر";
	var _PublicVar_errorLoginLog = 3;
	var _PublicVar_errorLoginLogDesc = "ورود ناموفق";
	/* ------------- */
	var _PublicVar_userAdmin = 1;
	var _PublicVar_userAdminDesc = "کاربر ادمین";
	var _PublicVar_userCommon = 2;
	var _PublicVar_userCommonDesc = "کاربر عادی";
	/* ------------- */
	var _PublicVar_useronline = 1;
	var _PublicVar_useronlineDesc = "Online";
	var _PublicVar_userOffLine = 0;
	var _PublicVar_userOffLineDesc = "OffLine";
	/* ------------- */
	var _PublicVar_adminUser = 1;
	var _PublicVar_adminUserDesc = "";
	/* ------------- */
	var _PublicVar_messageUnread = 1;
	var _PublicVar_messageUnreadDesc = "اقدام نشده";
	var _PublicVar_messageAnswer = 2;
	var _PublicVar_messageAnswerDesc = "پاسخ داده شده";
	var _PublicVar_messageClose = 3;
	var _PublicVar_messageCloseDesc = "بسته شده";
	var _PublicVar_messageReplay = 4;
	var _PublicVar_messageReplayDesc = "وابسته";
	var _PublicVar_messageSee = 5;
	var _PublicVar_messageSeeDesc = "در دست بررسی";		
	/* ------------- */
	var _PublicVar_replayMessage1 = '5';
	var _PublicVar_replayMessageDesc1 = "موضوع در دست بررسی قرار گرفت";
	var _PublicVar_replayMessage2 = '2';
	var _PublicVar_replayMessageDesc2 = "پاسخ برای ارسال کننده فرستاده شود";
	var _PublicVar_replayMessage3 = '10';
	var _PublicVar_replayMessageDesc3 = "مشاهده سابقه پیام و ...";	
	var _PublicVar_replayMessage4 = '3';
	var _PublicVar_replayMessageDesc4 = "پاسخ بسته شود";
	/* ------ transaction ------ */
	var _PublicVar_transactionTypeDebit = 0;
	var _PublicVar_transactionTypeDebitDesc = 'برداشت';
	var _PublicVar_transactionTypeCredit = 1;
	var _PublicVar_transactionTypeCreditDesc = 'واریز';	
	/*  ==================================================================
		==================================================================
		========================== VALIDATE ==============================
		==================================================================
		==================================================================
	*/

	function Msh_isEmpty(a){
		if(a == "" || a == null || a == 'undefined'){
			return true;
		}
	}
	
	function Msh_notEmpty(a){
		return !Msh_isEmpty(a);
	}
	
	function Msh_isNumber(a){
		return /^([0-9-.]*)$/.test(a);
	}
	
	function Msh_isInteger(a){
		return /^([0-9]*)$/.test(a);
	}
	
	function Msh_isPositive(a){
		return /^([0-9]*)$/.test(a);
	}
	
	function Msh_isNegative(a){
		return /^([0-9-]*)$/.test(a);
	}

	function Msh_passwordCheckerPatern(element,obj1,obj2){
		var elem = {
			msg : '',
			obj : '',
			result : true,
		};
		if(Msh_isEmpty(obj1)){
			elem.msg = 'لطفا اطلاعات را تکمیل فرمایید';
			elem.obj = element+'1';
			elem.result = false;
			return elem;
		}
		if(Msh_isEmpty(obj2)){
			elem.msg = 'لطفا اطلاعات را تکمیل فرمایید';
			elem.obj = element+'2';
			elem.result = false;
			return elem;			
		}
		if (obj1 != obj2){
			elem.msg = 'مقادیر وارد شده یکسان نمی باشند';
			elem.obj = element+'2';
			elem.result = false;
			return elem;
		}
		var t1 = Msh_passwordPatern(obj1);
		var t2 = Msh_passwordPatern(obj2);
		if (!t1 || !t2){
			elem.msg = 'کاراکترهای وارد شده قابل قبول نمی باشند';
			elem.obj = element+'1';
			elem.result = false;
			return elem;
		}
		return elem;
		
	}

	function Msh_usernamePatern(username){
		return /^([a-zA-Z0-9-_.]*)$/.test(username);
	}
	
	function Msh_passwordPatern(password){
		return /^([a-zA-Z0-9-@#_]*)$/.test(password);
	}
	
	function Msh_FarsiPatern(name){
		return /^([\u0600-\u06FF,\u0590-\u05FF, 0-9 @#$&-+./:;_,]*)$/.test(name);
	}
	
		
	function Msh_EnglishPatern(name){
		return /^([a-zA-Z0-9 @#$&-+./:;_,]*)$/.test(name);
	}
	
	function Msh_ContainUnicodePatern(name){
		return /[^\u0000-\u00ff]/.test(name);
	}
	
	function Msh_textPatern(name){
		return /^([\u0600-\u06FF,\u0590-\u05FF a-zA-Z0-9 @#$&-+./:;?_,]*)$/.test(name);
	}
		
	function Msh_datePatern(name){
		return  /^(1[3-4])(\d{2})\/(0[1-9]|1[012])\/(0[1-9]|[12][0-9]|3[01])$/.test(name);
	}
	
	function Msh_MoneyPatern(name){
		return  /^([(]*\d+[)]*)$/.test(name);
	}
	function Msh_xssBlackList(str){
		str = decodeURI(str);
		var blackList = ['script','delete','from ','*','alert','javascript','\'','img','insert ','grant','%','<','>','update ','select '];
		for(var item in blackList){
			if(str.toLowerCase().indexOf(blackList[item]) != -1){
				return true;
			}
		}
		return false;
	}
	
	function Msh_CheckValidateData(array){
		var response = {result:false,msg:''};
		
		for(var item in array){
			var validArray = array[item];
			var data = validArray.data;
			var dataName = validArray.fname;
			if(Msh_xssBlackList(data) == true){
				response.msg = "داده وارد شده برای فیلد " + "(" + dataName + ")" + " حاوی کاراکترهای غیر مجاز می باشد";
				return response;
			}
			start: for(var validObj in validArray){
				var validValue = validArray[validObj];
				var validItem = validObj.toString();
				switch(validItem){
					case 'required' :
						if(validValue == true){
							if(Msh_isEmpty(data)){
								response.msg = "ورود اطلاعات برای  فیلد " + "(" + dataName + ")" + " اجباری می باشد";
								return response;
							}
						}
					break;
					case 'format' :
						switch(validValue){
							case 'text' :
								if(Msh_notEmpty(data)){
									if(!Msh_textPatern(validValue)){
										response.msg = "داده وارد شده برای فیلد " + "(" + dataName + ")" + " حاوی کاراکترهای غیر قابل پذیرش می باشد";
										return response;
									}
								}else{
									continue start;
								}
							break;
							case 'int' :
								if(!Msh_isInteger(data)){
									response.msg = "داده وارد شده برای فیلد " + "(" + dataName + ")" + " از نوع عددی نمی باشد";
									return response;
								}
							break;
							case 'float' :
								if(!Msh_isNumber(data)){
									response.msg = "داده وارد شده برای فیلد " + "(" + dataName + ")" + " از نوع اعشاری نمی باشد";
									return response;
								}							
							break;
							case 'farsi' :
								if(!Msh_FarsiPatern(data)){
									response.msg = "داده وارد شده برای فیلد " + "(" + dataName + ")" + " تنها باید شامل حروف فارسی باشد";
									return response;
								}
							break;
							case 'english' :
								if(!Msh_EnglishPatern(data)){
									response.msg = "داده وارد شده برای فیلد " + "(" + dataName + ")" + " تنها باید شامل حروف انگلیسی باشد";
									return response;
								}
							break;
							case 'date' :
								if(!Msh_datePatern(data)){
									response.msg = "داده وارد شده برای فیلد " + "(" + dataName + ")" + " مطابق با الگوی تاریخ نیست";
									return response;
								}
							break;	
							case 'username' :
								if(!Msh_usernamePatern(data)){
									response.msg = "داده وارد شده برای نام کاربری مطابق با الگوی در نظر گرفته نمی باشد.در صورت لزوم با مدیر سامانه تماس بگیرید";
									return response;
								}
							break;	
							case 'password' :
								if(!Msh_passwordPatern(data)){
									response.msg = "داده وارد شده برای رمز عبور مطابق با الگوی در نظر گرفته نمی باشد.در صورت لزوم با مدیر سامانه تماس بگیرید";
									return response;
								}
							break;
							case 'money' :
								if(!Msh_MoneyPatern(data)){
									response.msg = "مبلغ وارد شده با الگوی مبلغ مطابقت ندارد";
									return response;
								}
							break;								
							default:
							break;
						}
					break;
					case 'minSize' :
						if(data.toString().length < validValue){
							response.msg = "داده وارد شده برای فیلد " + "(" + dataName + ")" + " کوتاه تر از مقدار مورد نظر " + validValue + " کاراکتر می باشد";
							return response;
						}
					break;
					case 'maxSize' :
						if(data.toString().length > validValue){
							response.msg = "داده وارد شده برای فیلد " + "(" + dataName + ")" + " بزرگتر از مقدار مورد نظر " + validValue + " کاراکتر می باشد";
							return response;
						}
					break;
					case 'min' :
						if(parseInt(data) < parseInt(validValue)){
							response.msg = "حداقل مقدار قابل قبول برای فیلد " + "(" + dataName + ")" + " عدد " + validValue + " می باشد";
							return response;
						}						
					break;
					case 'max' :
						if(parseInt(data) > parseInt(validValue)){
							response.msg = "حداکثر مقدار قابل قبول برای فیلد " + "(" + dataName + ")" + " عدد " + validValue + " می باشد";
							return response;
						}						
					break;
					default:
					break;
				}
			}
		}
		response.result = true;
		return response;
	}	
	/*  ==================================================================
		==================================================================
		=========================== GENERAL ==============================
		==================================================================
		==================================================================
	*/

	function Msh_bookmarkInput(element,type,flag,msg){
		var mainClass = {
			warning : 'form-group has-warning',
			success : 'form-group has-success',
			danger : 'form-group has-danger',
		};
		var inputClass = {
			warning : 'form-control-warning',
			success : 'form-control-success',
			danger : 'form-control-danger',
		};
		if(flag){
			$('#alert'+element.substring(0,element.length-1)).text(msg);
			var mainCss = '';
			var inputCss = '';
			switch(type){
				case 'warning':
					mainCss = mainClass.warning;
					inputCss = inputClass.warning;
					break;
				case 'success':
					mainCss = mainClass.success;
					inputCss = inputClass.success;
					break;

				case 'danger':
					mainCss = mainClass.danger;
					inputCss = inputClass.danger;
					break;
				
			}
			$('#div'+element).addClass(mainCss);	
			/*$('#'+element).addClass(inputCss);	*/
		}else{
			for(var item in mainClass ){
				$('#div'+element).removeClass(mainClass[item]);
				/*$('#'+element).removeClass(inputClass[item]);*/
			}
			$('#alert'+element.substring(0,element.length-1)).text('');
			
		}
	}
	
	 function FormatNumberBy3(num, decpoint, sep) {
		 var negative = "";
	  // check for missing parameters and use defaults if so
	  if (arguments.length == 2) {
		sep = ",";
	  }
	  if (arguments.length == 1) {
		sep = ",";
		decpoint = ".";
	  }
	  // need a string for operations
	  num = num.toString();
	  if(num.indexOf('-') == 0){
		  num = num.substr(1);
		  negative = "-";
	  }
	  // separate the whole number and the fraction if possible
	  a = num.split(decpoint);
	  x = a[0]; // decimal
	  y = a[1]; // fraction
	  z = "";


	  if (typeof(x) != "undefined") {
		// reverse the digits. regexp works from left to right.
		for (i=x.length-1;i>=0;i--)
		  z += x.charAt(i);
		// add seperators. but undo the trailing one, if there
		z = z.replace(/(\d{3})/g, "$1" + sep);
		if (z.slice(-sep.length) == sep)
		  z = z.slice(0, -sep.length);
		x = "";
		// reverse again to get back the number
		for (i=z.length-1;i>=0;i--)
		  x += z.charAt(i);
		// add the fraction back in, if it was there
		if (typeof(y) != "undefined" && y.length > 0)
		  x += decpoint + y;
	  }
	  return negative+x;
	}
	
	function MYconvertToMoney(num){
		var currency = Math.abs(num);
		if(num < 0){
			return '(' + FormatNumberBy3(currency) + ')';
		}else{
			return FormatNumberBy3(num);
		}
	}
	
	function MYMoneyToNumber(num){
		if(num.indexOf('(') == 0){
			num = num.split(',').join('').replace('(','').replace(')',''),
			//num = num.substr(1,num.toString().length-2);
			num = parseInt('-' + num);
		}
		return num;
	}
	/*----------------------------------------------------*/
	if (typeof module !== 'undefined' && typeof module.exports !== 'undefined'){
		module.exports = {
			 isNull : function(data){
				 return Msh_isEmpty(data);
			 },
			 farsiPatern : function(username){
				 return Msh_FarsiPatern(username);
			 },
			 usernamePatern : function(username){
				 return Msh_usernamePatern(username);
			 },
			 passwordPatern : function(password){
				 return Msh_passwordPatern(password);
			 },
			 blackList : function(str){
				 return Msh_xssBlackList(str);
			 },	
			 textPatern : function(str){
				 return Msh_textPatern(str);
			 },	
			 checkValidateData : function(array){
				 return Msh_CheckValidateData(array);
			 },				 
		}
	}