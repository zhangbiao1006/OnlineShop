<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<title>订单列表</title>

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
	<div class="search-bar pr">
		<form action="${pageContext.request.contextPath }/orders/ordersQuery.action" method="post">
		<input id="orderstatus" name="orderstatus" type="text" placeholder="搜索" autocomplete="off">
		<input id="ai-topsearch" class="submit am-btn" value="搜索" index="1" type="submit">
		</form>
	</div>
</div>
<div class="clear"></div>
<hr />
<table width="90%" border=0 align="center" cellpadding=10 cellspacing=10>
<tr align="center">
	<td width=100 height=80>用户id</td>
	<td width=100 height=80>日期</td>
	<td width=100 height=80>数量</td>
	<td width=100 height=80>订单状态</td>
	<td width=100 height=80>操作</td>
</tr>
<c:forEach items="${ordersList }" var="order">
<tr align="center">
	<td width=120 height=100>${order.userid }</td>
	<td width=120 height=100><fmt:formatDate value="${order.ordertime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
	<td width=120 height=100>${order.ordersum }</td>
	<td width=120 height=100>${order.orderstatus }</td>
	
	<td width=120 height=100><a href="${pageContext.request.contextPath }/orders/editOrders.action?orderid=${order.orderid}">修改</a></td>

</tr>
</c:forEach>
</table>
<hr />
<table width="90%" border=0 align="center" cellpadding=10 cellspacing=10>
<tr>
<td colspan="2" align="center" width=120 height=100><a href="${pageContext.request.contextPath }/orders/queryOrders.action">查询全部订单</a></td>
</tr>
</table>
<hr />
</form>
</body>

</html>