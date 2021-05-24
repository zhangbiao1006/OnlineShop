<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<title>查询商品列表</title>
<script type="text/javascript">

//普通按钮，即类型为button，提交方式
	function insertItem() {
		itemForm.action="${pageContext.request.contextPath }/items/insertItems.action";
		itemForm.method="post";
		itemForm.submit()
	}
</script>

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
		<form id="itemForm" name="itemForm" action="${pageContext.request.contextPath }/items/itemsQueryCh.action" method="post">
			<input id="itemname" name="itemname" type="text" placeholder="搜索" autocomplete="off">
			<input id="ai-topsearch" class="submit am-btn" value="搜索" index="1" type="submit">
		</form>
	</div>
</div>
<div class="clear"></div>
<hr></hr>
<table width="90%" border=0 align="center" cellpadding=10 cellspacing=10>
<tr align="center">
	<td width=100 height=80>商品名称</td>
	<td width=100 height=80>商品价格</td>
	<td width=100 height=80>商品描述</td>
	<td width=100 height=80>商品图片</td>
	<td width=100 height=80>剩余数量</td>
	<td width=100 height=80>操作</td>
</tr>
<c:forEach items="${itemsList }" var="item">
<tr align="center">
	<td width=100 height=80>${item.itemname }</td>
	<td width=100 height=80>${item.itemprice }</td>
	<td width=100 height=80>${item.itemdetail }</td>
	<td width=100 height=80>
		<img src="${pageContext.request.contextPath }${item.picture }" width=200 height=100/>
	</td>
	<td width=100 height=80>${item.productnum }</td>
	
	<td width=100 height=80><a href="${pageContext.request.contextPath }/items/editItems.action?itemid=${item.itemid}">修改|</a>
	<a href="${pageContext.request.contextPath }/items/deleteItems.action?itemid=${item.itemid}">删除</a></td>
</tr>
</c:forEach>
</table>
<hr></hr>
<div class="search-bar pr">
	<input type="button" value="添加" onclick="insertItem()"/>
</div>
</form>
</div>
</body>

</html>