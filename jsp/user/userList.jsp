<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<title>查询用户</title>

<link href="${pageContext.request.contextPath }/Shop/AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/Shop/AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css" />

<link href="${pageContext.request.contextPath }/Shop/basic/css/demo.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/Shop/css/skin.css" rel="stylesheet" type="text/css" />
<script src="${pageContext.request.contextPath }/Shop/AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath }/Shop/AmazeUI-2.4.2/assets/js/amazeui.min.js"></script>

<script type="text/javascript">

//普通按钮，即类型为button，提交方式
	function queryUser() {
		//alert("${pageContext.request.contextPath }");
		userForm.action="${pageContext.request.contextPath }/user/findUsers.action";
		userForm.method="post";
		userForm.submit();
		
	}
</script>
</head>

<body>
<div class="nav white">
	<div class="logo"><img src="${pageContext.request.contextPath }/Shop/images/logo.png" /></div>
	<div class="logoBig">
		<li><img src="${pageContext.request.contextPath }/Shop/images/logobig.png" /></li>
	</div>
</div>
<div class="clear"></div>
<hr />
<form name="userForm" id="userForm" action="${pageContext.request.contextPath }/user/queryUsers.action" method="post">
<table width="90%" border=0 align="center" cellpadding=10 cellspacing=10>
<tr>
<td width=70 height=25>输入0查询用户信息，输入1查询管理员信息 
<td width=70 height=25>也可输入ID根据ID查询某个用户或管理员
</tr>
<tr>
<td width=70 height=25><input type="text" name="userstatus" placeholder="输入0或1"/>
    <input type="button" value="查询" onclick="queryUser()"/></td>
<td width=70 height=25><input type="text" name="userid" placeholder="ID"/>
    <input type="submit" value="查询"/></td>
</tr>
</table>
<hr />
<table width="90%" border=0 align="center" cellpadding=10 cellspacing=10>
<tr align="center">
	<td>用户ID</td>
	<td>密码</td>
	<td>用户姓名</td>
	<td>用户性别</td>
	<td>用户地址</td>
	<td>用户电话</td>
</tr>
<c:forEach items="${userList }" var="user">
<tr align="center">
	<td width=100 height=80>${user.userid }</td>
	<td width=100 height=80>${user.userpassword }</td>
	<td width=100 height=80>${user.username }</td>
	<td width=100 height=80>${user.usersex }</td>
	<td width=100 height=80>${user.useraddress }</td>
	<td width=100 height=80>${user.userphone }</td>
	
	<td width=100 height=80><a href="${pageContext.request.contextPath }/user/editUser.action?userid=${user.userid}">修改|</a>
	<a href="${pageContext.request.contextPath }/user/deleteUser.action?userid=${user.userid}">删除</a></td>
</tr>
</c:forEach>

</table>
<hr />
<table width="90%" border=0 align="center" cellpadding=10 cellspacing=10>
<tr align="center">
<td width=100 height=80><a href="${pageContext.request.contextPath }/user/insertUser.action">添加</a></td>
</tr>
</table>
<hr />
</form>
</body>

</html>