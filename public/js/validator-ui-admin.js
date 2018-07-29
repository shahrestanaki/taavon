<script>
	function validator_userList(value, column,numberInput){
		var array = new Array();
		var response = {result : false};
		switch(numberInput){
			case 1 :/*name*/
				var response = Msh_CheckValidateData(array);
				array.push({data:value,fname:'نام',required:true,format:'farsi',minSize:1,maxSize:50});			
			break;
			case 2 :/*famili*/
				array.push({data:value,fname:'نام خانوادگی',required:true,format:'farsi',minSize:1,maxSize:50});
				var response = Msh_CheckValidateData(array);
			break;
			case 3 :/*username*/
				array.push({data:value,fname:'نام کاربری',required:true,format:'username',minSize:3,maxSize:20});
				var response = Msh_CheckValidateData(array);
			break;
			case 4 :/*password*/
				array.push({data:value,fname:'پسورد',required:true,format:'password',minSize:3,maxSize:20});
				var response = Msh_CheckValidateData(array);
			break;	
			case 5 :/*status*/
				array.push({data:value,fname:'وضعیت',required:true,min:0,max:3});
				var response = Msh_CheckValidateData(array);
			break;			
			case 6 :/*rulesname*/
				array.push({data:value,fname:'نقش کاربری',required:true,min:1,max:2});
				var response = Msh_CheckValidateData(array);
			break;	
			default:
			break;
		}
		if(response.result == false){
			return [false, response.msg];
		}
		return [true,""];
	}
 
</script>