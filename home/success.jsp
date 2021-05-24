<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
	
	<%  
    	String successInfo = "登陆成功！";	
  	%>
   	<script type="text/javascript" language="javascript">
   		alert("<%=successInfo%>");
   		window.location='./home.jsp';
   	</script>


    <%
     String name = new String(request.getParameter("username").getBytes("8859_1"));
     out.println("欢迎你:" + name);
    %><br>
    <a href="login.jsp">重新登陆</a>
    </center>
</body>
</html>