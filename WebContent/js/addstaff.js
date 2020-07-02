/**
 * 
 */
function change_photo(file) {//显示上传的图片
	var file = document.querySelector(file);
	var photo = document.querySelector('#photo');
	photo.className='photo';
	var reader = new FileReader();
	reader.readAsDataURL(file.files[0]);
	reader.onload = function(e) {
		photo.src = this.result;
	}
}
function check_id(){//验证员工号
	var input=document.querySelector('#input0');
	//var patrn= /(^\d{15}$)|(^\d{17}(\d|X|x)$)/;
	var value=input.value.replace(/(^\s*)|(\s*$)/g, '');
	if(value==''||value==null||value== undefined){
		var words=input.parentElement.children[1];
		words.innerHTML='！信息项不能为空';
	}else{
//		var words=input.parentElement.children[1];
//		if (!patrn.test(input.value))
//		{
//			var words=input.parentElement.children[1];
//			words.innerHTML='！身份证位数不正确';
//		}else{
//			var words=input.parentElement.children[1];
//			words.innerHTML='';
//		}
		var words=input.parentElement.children[1];
		words.innerHTML='';
	}
}
function check_name(){//验证是否为姓名
	var input=document.querySelector('#input1');
	var patrn= new RegExp("[@!$^&*+=|{}';'\",<>/?~！#￥%……&*——|{}【】‘；：”“'。，、？]");
	var value=input.value.replace(/(^\s*)|(\s*$)/g, '');
	if(value==''||value==null||value== undefined){
		var words=input.parentElement.children[1];
		words.innerHTML='！信息项不能为空';
	}else{
		var words=input.parentElement.children[1];
		if (patrn.test(input.value))
		{
			var words=input.parentElement.children[1];
			words.innerHTML='！姓名中不能有特殊字符';
			document.cookie='tag'+'='+'1';
		}else{
			var words=input.parentElement.children[1];
			words.innerHTML='';
			document.cookie='tag'+'='+'0';
		}
	}
}
function check_telephone(){//验证是否为手机号
	var input=document.querySelector('#input4');
	var patrn= new RegExp("^[1][3,4,5,7,8][0-9]{9}$");
	var value=input.value.replace(/(^\s*)|(\s*$)/g, '');
	if(value==''||value==null||value== undefined){
		var words=input.parentElement.children[1];
		words.innerHTML='！信息项不能为空';
	}else{
		var words=input.parentElement.children[1];
		if (!patrn.test(input.value))
		{
			var words=input.parentElement.children[1];
			words.innerHTML='！手机号格式不正确';
			document.cookie='tag'+'='+'1';
		}else{
			var words=input.parentElement.children[1];
			words.innerHTML='';
			document.cookie='tag'+'='+'0';
		}
	}
}
function check_e_mail(){//验证是否为邮箱
	var input=document.querySelector('#input5');
	var patrn= new RegExp("^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$");
	var value=input.value.replace(/(^\s*)|(\s*$)/g, '');
	if(value==''||value==null||value== undefined){
		var words=input.parentElement.children[1];
		words.innerHTML='！信息项不能为空';
	}else{
		var words=input.parentElement.children[1];
		if (!patrn.test(input.value))
		{
			var words=input.parentElement.children[1];
			words.innerHTML='！邮箱格式不正确';
			document.cookie='tag'+'='+'1';
		}else{
			var words=input.parentElement.children[1];
			words.innerHTML='';
			document.cookie='tag'+'='+'0';
		}
	}
}
function check_person_id(){//验证是否为身份证
	var input=document.querySelector('#input6');
	var patrn= /(^\d{15}$)|(^\d{17}(\d|X|x)$)/;
	var value=input.value.replace(/(^\s*)|(\s*$)/g, '');
	if(value==''||value==null||value== undefined){
		var words=input.parentElement.children[1];
		words.innerHTML='！信息项不能为空';
	}else{
		var words=input.parentElement.children[1];
		if (!patrn.test(input.value))
		{
			var words=input.parentElement.children[1];
			words.innerHTML='！身份证位数不正确';
			document.cookie='tag'+'='+'1';
		}else{
			var words=input.parentElement.children[1];
			words.innerHTML='';
			document.cookie='tag'+'='+'0';
		}
	}
}
function check_staff_position(){//验证职位
	var input=document.querySelector('#input7');
	//var patrn= /(^\d{15}$)|(^\d{17}(\d|X|x)$)/;
	var value=input.value.replace(/(^\s*)|(\s*$)/g, '');
	if(value==''||value==null||value== undefined){
		var words=input.parentElement.children[1];
		words.innerHTML='！信息项不能为空';
	}else{
//		var words=input.parentElement.children[1];
//		if (!patrn.test(input.value))
//		{
//			var words=input.parentElement.children[1];
//			words.innerHTML='！身份证位数不正确';
//		}else{
//			var words=input.parentElement.children[1];
//			words.innerHTML='';
//		}
		var words=input.parentElement.children[1];
		words.innerHTML='';
	}
}
function check_graduation_school(){//验证毕业学校
	var input=document.querySelector('#input8');
	//var patrn= /(^\d{15}$)|(^\d{17}(\d|X|x)$)/;
	var value=input.value.replace(/(^\s*)|(\s*$)/g, '');
	if(value==''||value==null||value== undefined){
		var words=input.parentElement.children[1];
		words.innerHTML='！信息项不能为空';
	}else{
//		var words=input.parentElement.children[1];
//		if (!patrn.test(input.value))
//		{
//			var words=input.parentElement.children[1];
//			words.innerHTML='！身份证位数不正确';
//		}else{
//			var words=input.parentElement.children[1];
//			words.innerHTML='';
//		}
		var words=input.parentElement.children[1];
		words.innerHTML='';
	}
}
function check_education_background(){//验证学历
	var input=document.querySelector('#input9');
	//var patrn= /(^\d{15}$)|(^\d{17}(\d|X|x)$)/;
	var value=input.value.replace(/(^\s*)|(\s*$)/g, '');
	if(value==''||value==null||value== undefined){
		var words=input.parentElement.children[1];
		words.innerHTML='！信息项不能为空';
	}else{
//		var words=input.parentElement.children[1];
//		if (!patrn.test(input.value))
//		{
//			var words=input.parentElement.children[1];
//			words.innerHTML='！身份证位数不正确';
//		}else{
//			var words=input.parentElement.children[1];
//			words.innerHTML='';
//		}
		var words=input.parentElement.children[1];
		words.innerHTML='';
	}
}
function check_household_registration(){//验证户籍
	var input=document.querySelector('#input10');
	//var patrn= /(^\d{15}$)|(^\d{17}(\d|X|x)$)/;
	var value=input.value.replace(/(^\s*)|(\s*$)/g, '');
	if(value==''||value==null||value== undefined){
		var words=input.parentElement.children[1];
		words.innerHTML='！信息项不能为空';
	}else{
//		var words=input.parentElement.children[1];
//		if (!patrn.test(input.value))
//		{
//			var words=input.parentElement.children[1];
//			words.innerHTML='！身份证位数不正确';
//		}else{
//			var words=input.parentElement.children[1];
//			words.innerHTML='';
//		}
		var words=input.parentElement.children[1];
		words.innerHTML='';
	}
}
function check_address(){//验证住址
	var input=document.querySelector('#input11');
	//var patrn= /(^\d{15}$)|(^\d{17}(\d|X|x)$)/;
	var value=input.value.replace(/(^\s*)|(\s*$)/g, '');
	if(value==''||value==null||value== undefined){
		var words=input.parentElement.children[1];
		words.innerHTML='！信息项不能为空';
	}else{
//		var words=input.parentElement.children[1];
//		if (!patrn.test(input.value))
//		{
//			var words=input.parentElement.children[1];
//			words.innerHTML='！身份证位数不正确';
//		}else{
//			var words=input.parentElement.children[1];
//			words.innerHTML='';
//		}
		var words=input.parentElement.children[1];
		words.innerHTML='';
	}
}
function check_marital_atatus(){//验证学历
	var input=document.querySelector('#input12');
	//var patrn= /(^\d{15}$)|(^\d{17}(\d|X|x)$)/;
	var value=input.value.replace(/(^\s*)|(\s*$)/g, '');
	if(value==''||value==null||value== undefined){
		var words=input.parentElement.children[1];
		words.innerHTML='！信息项不能为空';
	}else{
//		var words=input.parentElement.children[1];
//		if (!patrn.test(input.value))
//		{
//			var words=input.parentElement.children[1];
//			words.innerHTML='！身份证位数不正确';
//		}else{
//			var words=input.parentElement.children[1];
//			words.innerHTML='';
//		}
		var words=input.parentElement.children[1];
		words.innerHTML='';
	}
}
function check_date_birth(){//验证出生日期
	var input=document.querySelector('#input13');
	//var patrn= /(^\d{15}$)|(^\d{17}(\d|X|x)$)/;
	var value=input.value.replace(/(^\s*)|(\s*$)/g, '');
	if(value==''||value==null||value== undefined){
		var words=input.parentElement.children[1];
		words.innerHTML='！信息项不能为空';
	}else{
//		var words=input.parentElement.children[1];
//		if (!patrn.test(input.value))
//		{
//			var words=input.parentElement.children[1];
//			words.innerHTML='！身份证位数不正确';
//		}else{
//			var words=input.parentElement.children[1];
//			words.innerHTML='';
//		}
		var words=input.parentElement.children[1];
		words.innerHTML='';
	}
}
function check_political_landscape(){//验证政治面貌
	var input=document.querySelector('#input14');
	//var patrn= /(^\d{15}$)|(^\d{17}(\d|X|x)$)/;
	var value=input.value.replace(/(^\s*)|(\s*$)/g, '');
	if(value==''||value==null||value== undefined){
		var words=input.parentElement.children[1];
		words.innerHTML='！信息项不能为空';
	}else{
//		var words=input.parentElement.children[1];
//		if (!patrn.test(input.value))
//		{
//			var words=input.parentElement.children[1];
//			words.innerHTML='！身份证位数不正确';
//		}else{
//			var words=input.parentElement.children[1];
//			words.innerHTML='';
//		}
		var words=input.parentElement.children[1];
		words.innerHTML='';
	}
}
function check_basic_wage(){//验证基础工资
	var input=document.querySelector('#input15');
	//var patrn= /(^\d{15}$)|(^\d{17}(\d|X|x)$)/;
	var value=input.value.replace(/(^\s*)|(\s*$)/g, '');
	if(value==''||value==null||value== undefined){
		var words=input.parentElement.children[1];
		words.innerHTML='！信息项不能为空';
	}else{
//		var words=input.parentElement.children[1];
//		if (!patrn.test(input.value))
//		{
//			var words=input.parentElement.children[1];
//			words.innerHTML='！身份证位数不正确';
//		}else{
//			var words=input.parentElement.children[1];
//			words.innerHTML='';
//		}
		var words=input.parentElement.children[1];
		words.innerHTML='';
	}
}
function check_entry_time(){//验证入职时间
	var input=document.querySelector('#input16');
	//var patrn= /(^\d{15}$)|(^\d{17}(\d|X|x)$)/;
	var value=input.value.replace(/(^\s*)|(\s*$)/g, '');
	if(value==''||value==null||value== undefined){
		var words=input.parentElement.children[1];
		words.innerHTML='！信息项不能为空';
	}else{
//		var words=input.parentElement.children[1];
//		if (!patrn.test(input.value))
//		{
//			var words=input.parentElement.children[1];
//			words.innerHTML='！身份证位数不正确';
//		}else{
//			var words=input.parentElement.children[1];
//			words.innerHTML='';
//		}
		var words=input.parentElement.children[1];
		words.innerHTML='';
	}
}
function check_contract_time(){//验证合约时长
	var input=document.querySelector('#input17');
	//var patrn= /(^\d{15}$)|(^\d{17}(\d|X|x)$)/;
	var value=input.value.replace(/(^\s*)|(\s*$)/g, '');
	if(value==''||value==null||value== undefined){
		var words=input.parentElement.children[1];
		words.innerHTML='！信息项不能为空';
	}else{
//		var words=input.parentElement.children[1];
//		if (!patrn.test(input.value))
//		{
//			var words=input.parentElement.children[1];
//			words.innerHTML='！身份证位数不正确';
//		}else{
//			var words=input.parentElement.children[1];
//			words.innerHTML='';
//		}
		var words=input.parentElement.children[1];
		words.innerHTML='';
	}
}
function check_remark(){//验证备注
	var input=document.querySelector('textarea');
	//var patrn= /(^\d{15}$)|(^\d{17}(\d|X|x)$)/;
	var value=input.value.replace(/(^\s*)|(\s*$)/g, '');
	if(value==''||value==null||value== undefined){
		var words=document.querySelector('#remark');
		words.innerHTML='！信息项不能为空';
	}else{
//		var words=input.parentElement.children[1];
//		if (!patrn.test(input.value))
//		{
//			var words=input.parentElement.children[1];
//			words.innerHTML='！身份证位数不正确';
//		}else{
//			var words=input.parentElement.children[1];
//			words.innerHTML='';
//		}
		var words=document.querySelector('#remark');
		words.innerHTML='';
	}
}