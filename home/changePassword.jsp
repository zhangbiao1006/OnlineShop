<%@ page language="java" import="java.util.*,java.sql.*,java.net.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

		<title>修改密码</title>

		<link href="../AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
		<link href="../AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css">

		<link href="../css/personal.css" rel="stylesheet" type="text/css">
		<link href="../css/stepstyle.css" rel="stylesheet" type="text/css">

		<script type="text/javascript" src="../js/jquery-1.7.2.min.js"></script>
		<script src="../AmazeUI-2.4.2/assets/js/amazeui.js"></script>
		
		<script src="../js/registerCheck.js"></script>
		
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<meta name="format-detection" content="telephone=no">
		<meta name="renderer" content="webkit">
		<meta http-equiv="Cache-Control" content="no-siteapp" />
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

		<link rel="stylesheet" href="../AmazeUI-2.4.2/assets/css/amazeui.min.css" />
		<link rel="stylesheet" href="../font-awesome-4.7.0/css/font-awesome.min.css" />
		<link href="../css/dlstyle.css" rel="stylesheet" type="text/css">
		<script src="../js/registerCheck.js"></script>
		
		<style type="text/css">
			p.thick 
			{
				font-weight: bold;
				font-size: 25px;
			}
		</style>

	</head>

	<body>
	
		<%
			
			Object obj = session.getAttribute("userNow");
			com.eight.oss.po.User userInfo = null;
			
			if (obj == null)
			{
				response.sendRedirect("login.jsp?errNotLogin");
			}
			else
			{
				userInfo = (com.eight.oss.po.User)obj;
			
			
		
		%>
	
		<!--头 -->
		<header>
			<article>
				<div class="mt-logo">
					<!--顶部导航条 -->
					<div class="am-container header">
						<ul class="message-l">
							<div class="topMessage">
								<div class="menu-hd">
									欢迎您，${userNow.userid }
								</div>
							</div>
						</ul>
						<ul class="message-r">
							<div class="topMessage home">
								<div class="menu-hd"><a href="#" target="_top" class="h">商城首页</a></div>
							</div>
							<div class="topMessage my-shangcheng">
								<div class="menu-hd MyShangcheng"><a href="#" target="_top"><i class="am-icon-user am-icon-fw"></i>个人中心</a></div>
							</div>
							<div class="topMessage mini-cart">
								<div class="menu-hd"><a id="mc-menu-hd" href="#" target="_top"><i class="am-icon-shopping-cart  am-icon-fw"></i><span>购物车</span><strong id="J_MiniCartNum" class="h">0</strong></a></div>
							</div>
						</ul>
					</div>

						<div class="clear"></div>
				</div>
			</article>
		</header>
		
		<b class="line"></b>
		<div class="center">
			<div class="col-main">
				<div class="main-wrap" style="background-color:Gainsboro">

					<div class="am-cf am-padding">
						<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">修改密码</strong> / <small>Password</small></div>
					</div>
					<hr/>
					
				<form action = "finishChPwd.jsp" method = "post" onsubmit = "return isvalid()">
										
                 			<div class="user-email">
								<label for="id"><i class="fa fa-user-circle-o fa-lg"></i></label>
								<input type="password" name="oldpassword" id="oldpassword" placeholder="请输入原密码" onblur="verifyOldPassword()">
                 			</div>							
                 			<div class="user-pass">
								<label for="password"><i class="fa fa-lock fa-lg"></i></label>
								<input type="password" name="password" id="password" placeholder="请输入新密码" onfocus="passwordInfo()" onblur="verifyPassword()">
                 			</div>										
                 			<div class="user-pass">
								<label for="passwordRepeat"><i class="fa fa-lock fa-lg"></i></label>
								<input type="password" name="passwordRepeat" id="passwordRepeat" placeholder="确认密码" onblur="verifyPwRereat()">
                 			</div>	
                 			<div class="am-cf">
								<input type="submit" name="" value="确认修改" class="am-btn am-btn-primary am-btn-sm am-fl">
							</div>
				</form>

			</div>
			<!--底部-->
			<div class="footer">
				<div class="footer-hd">
					<p>
						<a href="./home.jsp">商城首页</a>
					</p>
				</div>
				<div class="footer-bd">
					<p>
						<em>© 版权所有.</em>
					</p>
				</div>
			</div>
			</div>
		</div>
			<%
			}
			%>

	</body>

</html>