<script>
 	function validator_message(flag,data){
		var response ;
		switch(flag){
			case 'save-message' :
				var array = new Array();
				array.push({data:data.reciver,fname:'دریافت کننده',required:true,format:'int'});
				array.push({data:data.subject,fname:'موضوع',required:true,format:'text',minSize:1,maxSize:255});
				array.push({data:data.desc,fname:'شرح',required:true,format:'text',minSize:1,maxSize:500});
				response = Msh_CheckValidateData(array);
			break;
			case 'replay-message' :
				var array = new Array();
				array.push({data:data.reciver,fname:'دریافت کننده',required:true,format:'int'});
				array.push({data:data.subject,fname:'موضوع',required:true,format:'text',minSize:1,maxSize:255});
				array.push({data:data.desc,fname:'شرح',required:true,format:'text',minSize:1,maxSize:500});
				array.push({data:data.parent,fname:'پیام وابسته',required:true,format:'text'});
				response = Msh_CheckValidateData(array);
			break;		
			case 'close-message' :
				var array = new Array();
				array.push({data:data.reciver,fname:'دریافت کننده',required:true,format:'int'});
				array.push({data:data.subject,fname:'موضوع',required:true,format:'text',minSize:1,maxSize:255});
				array.push({data:data.desc,fname:'شرح',required:true,format:'text',minSize:1,maxSize:500});
				array.push({data:data.parent,fname:'پیام وابسته',required:true,format:'text'});
				array.push({data:data.status,fname:'وضعیت',required:true,format:'int',min:_PublicVar_messageClose,max:_PublicVar_messageClose});
				response = Msh_CheckValidateData(array);
			break;	
			case 'changeStatus' :
				var array = new Array();
				array.push({data:data.code,fname:'کد پیام',required:true,format:'text',minSize:4,maxSize:40});
				array.push({data:data.status,fname:'وضعیت',required:true,format:'int',fix:'2,3,5,10'});
				response = Msh_CheckValidateData(array);
			break;				
			default:
			break;
		}
		return response;	
	}

 	function validator_transaction(flag,data){
		var response ;
		switch(flag){
			case 'save' :
				var array = new Array();
				array.push({data:data.currency,fname:'مبلغ',required:true,format:'money'});
				array.push({data:data.type,fname:'نوع تراکنش',required:true,format:'int',minSize:0,maxSize:1});
				array.push({data:data.transdate,fname:'تاریخ تراکنش',required:true,format:'date'});
				array.push({data:data.description,fname:'شرح',required:false,format:'text',maxSize:30});
				array.push({data:data.userId,fname:'اطلاعات کاربر',required:true,format:'int',minSize:1});	
				response = Msh_CheckValidateData(array);
			break;
			case 'edit' :
				var array = new Array();
				array.push({data:data.currency,fname:'مبلغ',required:true,format:'money'});
				array.push({data:data.transdate,fname:'تاریخ تراکنش',required:true,format:'date'});
				array.push({data:data.description,fname:'شرح',required:false,format:'text',maxSize:30});
				array.push({data:data.id,fname:'اطلاعات کاربر',required:true,format:'int',minSize:1});	
				response = Msh_CheckValidateData(array);
			break;			
			default:
			break;
		}
		return response;	
	}	
	
	function validateusername(value, column){
		var test = Msh_usernamePatern(value);
		if(test == false){
			return [false, "نام کاربری درج شده قابل قبول نیست"];
		}else{
			return [true,""];
		}
	}

	function validatepassword(value, column){
		var test = Msh_passwordPatern(value);
		if(test == false){
			return [false, "رمز عبور درج شده قابل قبول نیست"];
		}else{
			return [true,""];
		}
	}	
</script>