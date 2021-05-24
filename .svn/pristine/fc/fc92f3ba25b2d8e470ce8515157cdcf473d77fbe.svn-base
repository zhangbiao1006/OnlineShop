<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head lang="en">
		<meta charset="UTF-8">
		<title>注册</title>
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
		<div class="login-boxtitle">
			<a href=home.jsp"><img alt="" src="../images/logobig.png" /></a>
		</div>

		<div class="res-banner" style="height:508px">
			<div class="res-main">
				<div class="login-banner-bg"><span></span><img src="../images/big.jpg" /></div>
				<div class="login-box"   style="height:470px">

					<div align="center">
						<p class="thick">用户注册</p>
					</div>
					<hr>
					<div class="am-tabs-bd">
						<form action = "checkRegister.jsp" method = "post" onsubmit = "return validate()">
										
                 			<div class="user-email">
								<label for="id"><i class="fa fa-user-circle-o fa-lg"></i></label>
								<input type="text" name="userid" id="userid" placeholder="请输入登录账号" onfocus="idInfo()" onblur="verifyId()">
                 			</div>								
                 			<div class="user-pass">
								<label for="password"><i class="fa fa-lock fa-lg"></i></label>
								<input type="password" name="password" id="password" placeholder="设置密码" onfocus="passwordInfo()" onblur="verifyPassword()">
                 			</div>										
                 			<div class="user-pass">
								<label for="passwordRepeat"><i class="fa fa-lock fa-lg"></i></label>
								<input type="password" name="passwordRepeat" id="passwordRepeat" placeholder="确认密码" onblur="verifyPwRereat()">
                 			</div>	
                 			<div class="user-email">
								<label for="email"><i class="fa fa-user fa-lg"></i></label>
								<input type="text" name="name" id="name" placeholder="请输入姓名" onblur="verifyName()">
                 			</div>											
                 			<div class="user-pass">
								<label for="password"><i class="fa fa-th-list fa-lg"></i></label>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="2">请选择性别：</font>
								&nbsp;
								<input type="radio" name="sex" id="password" checked="checked" style="width: 20px;height: 20px" value="男"/>男
								&nbsp;&nbsp;&nbsp;
								<input type="radio" name="sex" id="password" style="width: 20px;height: 20px" value="女"/>女
                 			</div>								
                 			<div class="user-pass">
								<label for="passwordRepeat"><i class="fa fa-home fa-lg"></i></label>
								<input type="text" name="address" id="address" placeholder="请输入收货地址" onblur="verifyAddress()">
                 			</div>
                 			<div class="user-pass">
								<label for="passwordRepeat"><i class="fa fa-mobile fa-lg"></i></label>
								<input type="text" name="phonenum" id="phonenum" placeholder="请输入联系电话" onfocus="phoneInfo()" onblur="verifyPhone()">
                 			</div>	
                 			<div class="am-cf">
								<input type="submit" name="" value="注册" class="am-btn am-btn-primary am-btn-sm am-fl">
							</div>
						</form>
					</div>

				</div>
			</div>
			
			<div class="footer ">
				<div class="footer-bd ">
					<p>
						<em>© 版权所有. </em>
					</p>
				</div>
			</div>
		</div>
	</body>

</html>