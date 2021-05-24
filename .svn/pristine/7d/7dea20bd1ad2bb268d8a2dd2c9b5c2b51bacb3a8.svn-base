<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head lang="en">
		<meta charset="UTF-8">
		<title>登录</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<meta name="format-detection" content="telephone=no">
		<meta name="renderer" content="webkit">
		<meta http-equiv="Cache-Control" content="no-siteapp" />

		<link rel="stylesheet" href="../AmazeUI-2.4.2/assets/css/amazeui.css" />
		<link rel="stylesheet" href="../AmazeUI-2.4.2/assets/css/amazeui.min.css" />
		<link href="../css/dlstyle.css" rel="stylesheet" type="text/css">
		<script src="../AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
		<script src="../AmazeUI-2.4.2/assets/js/amazeui.min.js"></script>
		
		<script>
			function gotoRegister()
			{
				userLogin.action="register.jsp";
				userLogin.method="post";
				userLogin.submit();
			}
		
		</script>

		
	</head>

	<body>

  		<%  
    		String errorInfo1 = "账号或密码错误！";	
  			String flag1 = request.getParameter("errNo");  
  			if (flag1 != null){
  		%>
   		<script type="text/javascript" language="javascript">
   			alert("<%=errorInfo1%>");
   			window.location='login.jsp';
   		</script>
   		<%
  		}
   		%>
   		
   		<%  
    		String errorInfo2 = "账号与密码不能为空！";	
  			String flag2 = request.getParameter("errEmpty");  
  			if (flag2 != null){
  		%>
   		<script type="text/javascript" language="javascript">
   			alert("<%=errorInfo2%>");
   			window.location='login.jsp';
   		</script>
   		<%
  		}
   		%>
   		
   		<%  
    		String errorInfo3 = "请先登录！";	
  			String flag3 = request.getParameter("errNotLogin");  
  			if (flag3 != null){
  		%>
   		<script type="text/javascript" language="javascript">
   			alert("<%=errorInfo3%>");
   			window.location='login.jsp';
   		</script>
   		<%
  		}
   		%>

		<div class="login-boxtitle">
			<a href="home.jsp"><img alt="logo" src="../images/logobig.png" /></a>
		</div>

		<div class="login-banner">
			<div class="login-main">
				<div class="login-banner-bg"><span></span><img src="../images/big.jpg" /></div>
				<div class="login-box">

					<div class="am-tabs" id="doc-my-tabs">
							<ul class="am-tabs-nav am-nav am-nav-tabs am-nav-justify">
								<li class="am-active"><a href="">普通用户登录</a></li>
								<li><a href="">管理员登录</a></li>
							</ul>

							<div class="am-tabs-bd">
								<div class="am-tab-panel am-active">
									<form name="userLogin" id="userLogin" action = "loginCh.jsp" method="post">
							   			<div class="login-form">
											<div class="user-name">
												<label for="user"><i class="am-icon-user"></i></label>
												<input type="text" name="user" id="user" placeholder="普通用户账号">
                 							</div>
                 							<div class="user-pass">
												<label for="password"><i class="am-icon-lock"></i></label>
												<input type="password" name="password" id="password" placeholder="请输入密码">
                							</div>
                						</div>	

								 		<div class="am-cf" >
											<br>
											<input type="submit"  name="" value="登 录" class="am-btn am-btn-primary am-btn-sm">
											<br>
											<br>
											<br>
											<input type="button"  name="" value="注 册" class="am-btn am-btn-primary am-btn-sm" onclick="gotoRegister()">
										</div>
									</form>
								</div>

								<div class="am-tab-panel">
								<form name="admLogin" id="admLogin" action = "loginChAdm.jsp" method="post">
                 						<div class="login-form">
											<div class="user-name">
												<label for="user"><i class="am-icon-user"></i></label>
												<input type="text" name="user" id="user" placeholder="管理员账号">
                 							</div>
                 							<div class="user-pass">
												<label for="password"><i class="am-icon-lock"></i></label>
												<input type="password" name="password" id="password" placeholder="请输入密码">
                							</div>
                						</div>	

								 		<div class="am-cf" >
											<br>
											<input type="submit"  name="" value="登 录" class="am-btn am-btn-primary am-btn-sm">
											
										</div>
									
								</form>
								</div>

								<script>
									$(function() {
									    $('#doc-my-tabs').tabs();
									  })
								</script>

							</div>
						</div>
					
				</div>
			</div>
		</div>

					<div class="footer ">
						<div class="footer-hd ">
							<p>
								<a href="./home.jsp">商城首页</a>
							</p>
						</div>
						<div class="footer-bd ">
							<p>
								<em>© 2018 java第八组 版权所有</em>
							</p>
						</div>
					</div>
	</body>

</html>