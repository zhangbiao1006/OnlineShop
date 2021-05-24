function idInfo()
{
	alert("支持字母与数字的组合，9-11个字符");
}

function passwordInfo()
{
	alert("支持字母、数字和多种符号（“,”、“.”、“?”、“/”、“\”、“-”、“+”、“!”、“@”、“#”、“%”、“&”、“*”）至少两种以上的组合，9-12个字符");
}

function phoneInfo()
{
	alert("支持11位的移动电话号码");
}

function verifyOldPassword()
{
	var password = document.getElementById("oldpassword").value;
	
	if(password == null || password == "")
	{
		alert("原密码不能为空！");
		return false;
	}
	return true;
}

function verifyId()
{
	var userid = document.getElementById("userid").value.trim();
	correctId = /^[A-Za-z0-9]{9,11}$/;
	
	if(userid == null || userid == "")
	{
		alert("登录账号不能为空！");
		return false;
	} 
	else if(userid.length<9 || userid.length>11)
	{
		alert("登录账号的长度要求9-11个字符！");
		return false;
	}
	else if(!correctId.test(userid))
	{
		   
		alert("登录账号只支持字母与数字的组合！");
		return false;
	}
	return true;
	
}

function verifyPassword()
{
	var password = document.getElementById("password").value;
	correctPw = /^[A-Za-z0-9,.?/\-+!@#%&*]{9,12}$/;
	
	if(password == null || password == "")
	{
		alert("密码不能为空！");
		return false;
	} 
	else if(password.length<9 || password.length>12)
	{
		alert("登录密码的长度要求9-12个字符！");
		return false;
	}
	else if(!correctPw.test(password))
	{
		   
		alert("密码格式不正确！");
		return false;
	}
	return true;
}

function verifyPwRereat()
{
	var pwRepeat = document.getElementById("passwordRepeat").value;
	var password = document.getElementById("password").value;
	
	if (pwRepeat != password)
	{
		alert("两次输入的密码不一致！");
		return false;
	}
	return true;
}

function verifyName()
{
	var name = document.getElementById("name").value;
	
	if(name == null || name == "")
	{
		alert("姓名不能为空！");
		return false;
	}
	return true;
}

function verifyAddress()
{
	var address = document.getElementById("address").value;
	
	if(address == null || address == "")
	{
		alert("收货地址不能为空！");
		return false;
	}
	return true;
}

function verifyPhone()
{
	var phone = document.getElementById("phonenum").value;
	correctPhone = /^1\d{10}$/;
	
	if(phone == null || phone == "")
	{
		alert("联系电话不能为空！");
		return false;
	} 
	else if(!correctPhone.test(phone))
	{
		alert("密码格式不正确！");
		return false;
	}
	return true;
}

function validate(){
    var flag = verifyId();
    if(flag == false)
        return false;
    
    var flag = verifyPwRereat();
    if(flag == false)
        return false;
    
    var flag = verifyPassword();
    if(flag == false)
        return false;
    
    var flag = verifyName();
    if(flag == false)
        return false;
    
    var flag = verifyAddress();
    if(flag == false)
        return false;
    
    var flag = verifyPhone();
    if(flag == false)
        return false;
    
    var judge = confirm("确定要修改注册吗？");
    if (judge)
    {
    	return true;
    }
    else
    {
    	return false;
    }
}

function isvalid(){
	
	var flag = verifyOldPassword();
    if(flag == false)
        return false;
    
    var flag = verifyPwRereat();
    if(flag == false)
        return false;
    
    var flag = verifyPassword();
    if(flag == false)
        return false;
    
    var judge = confirm("确定要修改密码吗？");
    if (judge)
    {
    	return true;
    }
    else
    {
    	return false;
    }
}
function isvalid(){
	
	var flag = verifyOldPassword();
    if(flag == false)
        return false;
    
    var flag = verifyPwRereat();
    if(flag == false)
        return false;
    
    var flag = verifyPassword();
    if(flag == false)
        return false;
    
    var judge = confirm("确定要修改密码吗？");
    if (judge)
    {
    	return true;
    }
    else
    {
    	return false;
    }
}

function information_isvalid(){
	
	var flag = verifyName();
    if(flag == false)
        return false;
    
    var flag = verifyPhone();
    if(flag == false)
        return false;
    
    var judge = confirm("确定要修改信息吗？");
    if (judge)
    {
    	return true;
    }
    else
    {
    	return false;
    }
}