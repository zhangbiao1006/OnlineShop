<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<title>修改订单信息</title>

<link href="${pageContext.request.contextPath }/Shop/AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/Shop/AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css" />

<link href="${pageContext.request.contextPath }/Shop/basic/css/demo.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/Shop/css/skin.css" rel="stylesheet" type="text/css" />
<script src="${pageContext.request.contextPath }/Shop/AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath }/Shop/AmazeUI-2.4.2/assets/js/amazeui.min.js"></script>

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
<form  name="orderForm" id="orderForm" action="${pageContext.request.contextPath }/orders/editOrdersSubmit.action" method="post" >
<input type="hidden" name="orderid" value="${ordersCustom.orderid }"/>
<input type="hidden" name="userid" value="${ordersCustom.userid }"/>
<input type="hidden" name="ordertime" value="${ordersCustom.ordertime }"/>
<input type="hidden" name="ordersum" value="${ordersCustom.ordersum }"/>
<h1>修改订单信息：</h1>
<table width="90%" border=0 align="center" cellpadding=10 cellspacing=10>
<tr align="center">
	<td width=100 height=80>订单状态</td>
	<td width=100 height=80 align="left"><input type="text" name="orderstatus" value="${ordersCustom.orderstatus }"/></td>
</tr>
<tr>
<td colspan="2" align="center" width=100 height=80><input type="submit" value="提交"/>
</td>
</tr>

</table>
<hr />
</form>
</body>

</html>