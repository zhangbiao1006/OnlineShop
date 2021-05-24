<%@ page language="java" import="java.util.*,java.sql.*,java.net.*" contentType="text/html; charset=UTF-8"
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

	<%      

			com.eight.oss.po.User userInfo = null;
	
            String user = new String(request.getParameter("user").getBytes("ISO-8859-1"),"UTF-8");  
            String pwd = request.getParameter("password");
            String driverClass = "com.mysql.jdbc.Driver";
            String url = "jdbc:mysql://10.25.38.130:3306/groupdesign";
            String username = "root";
            String password = "melo4343";
            Class.forName(driverClass);//加载驱动 
            Connection conn = DriverManager.getConnection(url,username,password);//得到连接
            PreparedStatement pStmt = conn.prepareStatement("select * from user where userid = '" + user + "' and userpassword = '" + pwd + "' and userstatus = 1");
            ResultSet rs = pStmt.executeQuery();
            if (user.length() == 0 || pwd.length() == 0)
            {
            	session.setAttribute("userNow", userInfo);
            	response.sendRedirect("login.jsp?errEmpty");
            }
            else if(rs.next())
            {
            	userInfo = new com.eight.oss.po.User();
            	userInfo.setUserid(user);
                userInfo.setUserpassword(pwd);
                session.setAttribute("userNow", userInfo);
            	response.sendRedirect("../../index.jsp"); //解决乱码 
            }
            else
            {
            	session.setAttribute("userNow", userInfo);
            	response.sendRedirect("login.jsp?errNo");//密码不对返回到登陆
            }
     rs.close();
     pStmt.close();
     conn.close();
     %>
</body>
</html>