<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

<link href="${pageContext.request.contextPath }/Shop/AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/Shop/AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css" />

<link href="${pageContext.request.contextPath }/Shop/basic/css/demo.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/Shop/css/skin.css" rel="stylesheet" type="text/css" />
<script src="${pageContext.request.contextPath }/Shop/AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath }/Shop/AmazeUI-2.4.2/assets/js/amazeui.min.js"></script>

	</head>
</head>
<body> 
	<div class="nav white">
			<div class="logo"><img src="${pageContext.request.contextPath }/Shop/images/logo.png" /></div>
			<div class="logoBig">
				<li><img src="${pageContext.request.contextPath }/Shop/images/logobig.png" /></li>
			</div>
	</div>
	<div class="clear"></div>

<form action="${pageContext.request.contextPath }/items/insertItemsSubmit.action" method="post" >
<input type="hidden" name="itemid" />
添加商品信息：
<hr />
<table width="90%" border=0 align="center" cellpadding=10 cellspacing=10>
<tr align="center">
	<td width=100 height=80>商品所属</td>
			<td width=100 height=80 align="left"><select name="catid" style="width:154px;">
				<option>1</option>
				<option>2</option>
				<option>3</option>
			</select></td>
<tr align="center">
	<td width=100 height=80>商品名称</td>
	<td width=100 height=80 align="left"><input type="text" name="itemname"/></td>
</tr>
<tr align="center">
	<td width=100 height=80>商品价格</td>
	<td width=100 height=80 align="left"><input type="text" name="itemprice"/></td>
</tr>
<tr align="center">
	<td width=100 height=80>商品图片</td>
	<td width=100 height=80 align="left">
		<input type="text"  name="picture"/> 
	</td>
</tr>
<tr align="center">
	<td width=100 height=80>商品简介</td>
	<td width=100 height=80 align="left">
	<textarea rows="3" cols="30" name="itemdetail"></textarea>
	</td>
</tr>
<tr align="center">
	<td width=100 height=80>商品剩余数量</td>
	<td width=100 height=80 align="left"><input type="text" name="productnum"/></td>
</tr>
<tr align="center">
<td colspan="2" align="center" width=100 height=80><input type="submit" value="提交"/>
</td>
</tr>

</table>
<hr />
</form>
</body>

</html>