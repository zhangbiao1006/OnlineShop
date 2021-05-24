<%@page import="com.eight.oss.po.User"%>
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

<link href="${pageContext.request.contextPath }/Shop/AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/Shop/AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css" />

<link href="${pageContext.request.contextPath }/Shop/basic/css/demo.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/Shop/css/skin.css" rel="stylesheet" type="text/css" />
<script src="${pageContext.request.contextPath }/Shop/AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath }/Shop/AmazeUI-2.4.2/assets/js/amazeui.min.js"></script>

</head>

<body>
	
<%
			
			Object obj = session.getAttribute("userNow");
			User userInfo = null;
			
			if (obj == null)
			{
			}
			else
			{
				userInfo = (com.eight.oss.po.User)obj;
			}
			
		
		%>
	
		<div class="hmtop">
			<!--顶部导航条 -->
			<div class="am-container header">
				<ul class="message-l">
					<div class="topMessage">
						<div class="menu-hd">
							<%
								if (obj == null)
								{
							%>
							<a href="../Shop/home/login.jsp" target="_top" class="h">亲，请登录</a>
							<%
								}
								else
								{
							%>
							欢迎您，${userNow.userid } &nbsp;
							<%
								}
							%>
							<a href="../Shop/home/register.jsp" target="_top">免费注册</a>
						</div>
					</div>
				</ul>
				<ul class="message-r">
					<div class="topMessage home">
						<div class="menu-hd"><a href="../Shop/home/home.jsp" target="_top" class="h">商城首页</a></div>
					</div>
					<div class="topMessage my-shangcheng">
						<div class="menu-hd MyShangcheng"><a href="../person/information.jsp" target="_top"><i class="am-icon-user am-icon-fw"></i>个人中心</a></div>
					</div>
					<div class="topMessage mini-cart">
						<div class="menu-hd"><a id="mc-menu-hd" href="./shopCart.jsp" target="_top"><i class="am-icon-shopping-cart  am-icon-fw"></i><span>购物车</span><strong id="J_MiniCartNum" class="h">0</strong></a></div>
					</div>
					<div class="topMessage favorite">
						<div class="menu-hd"><a href="#" target="_top"><i class="am-icon-heart am-icon-fw"></i><span>收藏夹</span></a></div>
				</ul>
				</div>

<div class="nav white">
	<div class="logo"><img src="${pageContext.request.contextPath }/Shop/images/logo.png" /></div>
	<div class="logoBig">
		<li><img src="${pageContext.request.contextPath }/Shop/images/logobig.png" /></li>
	</div>
	<div class="search-bar pr">
		<form id="itemForm" name="itemForm" action="${pageContext.request.contextPath }/items/itemsQuery.action" method="post">
			<input id="itemname" name="itemname" type="text" placeholder="搜索" autocomplete="off">
			<input id="ai-topsearch" class="submit am-btn" value="搜索" index="1" type="submit">
		</form>
	</div>
</div>
<div class="clear"></div>
<hr></hr>
<table width="90%" border=0 align="center" cellpadding=10 cellspacing=10>
<tr align="center">
	<td width=100 height=80><h2>商品名称</h2></td>
	<td width=100 height=80><h2>商品价格</h2></td>
	<td width=100 height=80><h2>商品描述</h2></td>
	<td width=100 height=80><h2>商品图片</h2></td>
	<td width=100 height=80><h2>剩余数量</h2></td>
	<td width=100 height=80><h2>操作</h2></td>
</tr>
<c:forEach items="${itemsList }" var="item">
<tr align="center">
	<td width=160 height=120>${item.itemname }</td>
	<td width=160 height=120>￥${item.itemprice }</td>
	<td width=160 height=120>${item.itemdetail }</td>
	<td width=160 height=120>
		<img align="middle" src="${pageContext.request.contextPath }${item.picture }" width=150 height=100/>
	</td>
	<td width=160 height=120>${item.productnum }</td>
	<td width=160 height=120>
	<%
		if(obj == null)
		{
	%>
			<a href="../Shop/home/login.jsp?errNotLogin">加入购物车</a>
	<%
		}
		else
		{
	%>
			<a href="${pageContext.request.contextPath }/items/insertTrolley.action?itemid=${item.itemid}">加入购物车</a>
	<%
		}
	%>
	</td>
</tr>
</c:forEach>
</table>
<hr></hr>
</form>
</div>
</body>

</html>