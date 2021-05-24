<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

		<title>个人资料</title>

		<link href="../AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
		<link href="../AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css">

		<link href="../css/personal.css" rel="stylesheet" type="text/css">
		<link href="../css/infstyle.css" rel="stylesheet" type="text/css">
		<script src="../AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
		<script src="../AmazeUI-2.4.2/assets/js/amazeui.js"></script>			
	</head>

	<body>
	
		<%
			
			Object obj = session.getAttribute("userNow");
			com.eight.oss.po.User userInfo = null;
			
			if (obj == null)
			{
				System.out.println("未登录");
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
							<a href="../home/login.jsp" target="_top" class="h">亲，请登录</a>
							<%
								}
								else
								{
							%>
							欢迎您，${userNow.userid } &nbsp;
							<%
								}
							%>
							<a href="../home/register.jsp" target="_top">免费注册</a>
						</div>
					</div>
				</ul>
						<ul class="message-r">
							<div class="topMessage home">
								<div class="menu-hd"><a href="../home/home.jsp" target="_top" class="h">商城首页</a></div>
							</div>
							<div class="topMessage my-shangcheng">
								<div class="menu-hd MyShangcheng"><a href="information.jsp" target="_top"><i class="am-icon-user am-icon-fw"></i>个人中心</a></div>
							</div>
							<div class="topMessage mini-cart">
								<div class="menu-hd"><a id="mc-menu-hd" href="../home/shopCart.jsp" target="_top"><i class="am-icon-shopping-cart  am-icon-fw"></i><span>购物车</span><strong id="J_MiniCartNum" class="h">0</strong></a></div>
							</div>
							<div class="topMessage favorite">
								<div class="menu-hd"><a href="#" target="_top"><i class="am-icon-heart am-icon-fw"></i><span>收藏夹</span></a></div>
						</ul>
						</div>

						<!--悬浮搜索框-->

						<div class="nav white">
							<div class="logoBig">
								<li><img src="../images/logobig.png" /></li>
							</div>

							<div class="search-bar pr">
								<a name="index_none_header_sysc" href="#"></a>
								<form>
									
									<input id="searchInput" name="index_none_header_sysc" type="text" placeholder="搜索" autocomplete="off">
									<input id="ai-topsearch"  class="submit am-btn" value="搜索" index="1" type="submit">
								</form>
							</div>
						</div>

						<div class="clear"></div>
					</div>
				</div>
			</article>
		</header>
            <div class="nav-table">
					   <div class="long-title"><span class="all-goods">全部分类</span></div>
					   <div class="nav-cont">
							<ul>
								<li class="index"><a href="../home/home.jsp">首页</a></li>
							</ul>
						    </div>
						</div>
			</div>
			<b class="line"></b>
		<div class="center">
			<div class="col-main">
				<div class="main-wrap">

					<div class="user-info">
						<!--标题 -->
						<div class="am-cf am-padding">
							<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">个人资料</strong> / <small>Personal&nbsp;information</small></div>
						</div>
						<hr/>

						<!--头像 -->
						<div class="user-infoPic">

							<div class="filePic">
								<input type="file" class="inputPic" allowexts="gif,jpeg,jpg,png,bmp" accept="image/*">
								<img class="am-circle am-img-thumbnail" src="../images/getAvatar.do.jpg" alt="" />
							</div>

							<p class="am-form-help">头像</p>

							<div class="info-m">
								<div><b>用户名：<i>${userNow.userid }</i></b></div>

							</div>
						</div>

						<!--个人信息 -->
						<div class="info-main">
							<form class="am-form am-form-horizontal">


								<div class="am-form-group">
									<label for="username" class="am-form-label">姓名</label>
									<label class="am-form-label">&emsp;&emsp;&emsp;&emsp;${userNow.username }</label> 
								</div>

								<div class="am-form-group">
									<label for="usersex" class="am-form-label">性别</label>
									<label class="am-form-label">&emsp;&emsp;&emsp;&emsp;${userNow.usersex }</label> 
								</div>

								<div class="am-form-group">
									<label for="user-phone" class="am-form-label">电话</label>
									<label class="am-form-label">&emsp;&emsp;&emsp;&emsp;${userNow.userphone }</label> 
								</div>
								<div class="am-form-group">
								     <label for="user-address" class="am-form-lable">地址&emsp;&emsp;&emsp;&emsp;${userNow.useraddress }</label>
								</div>
			
								<div class="info-btn">
									<a href="information_change.jsp"><input type="button"  class="am-btn am-btn-danger" value="修改信息"></a>
								</div>
							
						</form>
	
						</div>

					</div>

				</div>
				<!--底部-->
				<div class="footer">
					<div class="footer-hd">
						<p>
							<a href="../home/home.jsp">商城首页</a>
						</p>
					</div>
					<div class="footer-bd">
						<p>
							<em>© 2018 java第八组 版权所有</em>
						</p>
					</div>
				</div>
			</div>

			<aside class="menu">
				<ul>
					<li class="person active">
						<a href="../home/home.jsp"><i class="am-icon-user"></i>个人中心</a>
					</li>
					<li class="person">
						<p><i class="am-icon-newspaper-o"></i>个人资料</p>
						<ul>
							<li> <a href="information.jsp">个人信息</a></li>
							<li> <a href="../home/changePassword.jsp">修改密码</a></li>
							<li> <a href="address.jsp">地址管理</a></li>
						</ul>
					</li>
					<li class="person">
						<p><i class="am-icon-balance-scale"></i>我的交易</p>
						<ul>
							<li><a href="order.jsp">订单管理</a></li>
						</ul>

					<li class="person">
						<p><i class="am-icon-tags"></i>我的收藏</p>
						<ul>
							<li> <a href="collection.html">收藏</a></li>												
						</ul>
					</li>

				</ul>

			</aside>
		</div>

	</body>

</html>