<%@ page language="java" import="java.util.*,java.sql.*,java.net.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
			
		String itemid = request.getParameter("itemid");
		Object obj = session.getAttribute("userNow");
		com.eight.oss.po.User userInfo = null;
			
		if (obj == null)
		{
			response.sendRedirect("login.jsp?errNotLogin");
		}
		else
		{
			userInfo = (com.eight.oss.po.User)obj;
		}
		
        String driverClass = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://10.25.38.130:3306/groupdesign";
        String username = "root";
        String password = "melo4343";
        Class.forName(driverClass);//加载驱动 
        Connection conn = DriverManager.getConnection(url,username,password);//得到连接
        PreparedStatement pStmt = conn.prepareStatement("delete from trolley where itemid=" + itemid + " and userid='" + userInfo.getUserid() + "'");
        pStmt.execute();
        response.sendRedirect("shopCart.jsp");
 		pStmt.close();
 		conn.close();
	%>
	
</body>
</html>