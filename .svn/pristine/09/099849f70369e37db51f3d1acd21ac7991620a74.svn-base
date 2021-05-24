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
		
		request.setCharacterEncoding("UTF-8");        
		String oldpwd = request.getParameter("oldpassword");
    	String newpwd = request.getParameter("password");
    	Object obj = session.getAttribute("userNow");
		com.eight.oss.po.User userInfo = null;
		userInfo = (com.eight.oss.po.User)obj;
		
		if (oldpwd.equals(userInfo.getUserpassword()))
		{
			String driverClass = "com.mysql.jdbc.Driver";
	    	String url = "jdbc:mysql://10.25.38.130:3306/groupdesign";
	    	String username = "root";
	    	String password = "melo4343";
	    	Class.forName(driverClass);//加载驱动 
	    	Connection conn = DriverManager.getConnection(url,username,password);//得到连接
	    	PreparedStatement pStmt = conn.prepareStatement("update user set userpassword='" + newpwd + "' WHERE userid='" + userInfo.getUserid() + "'");
	    	pStmt.execute();
	    	pStmt.close();
     	    conn.close();
     	    out.println("<script language='javascript'>alert('密码修改成功，请重新登录！');window.location.href='login.jsp';</script>");
		}
		else
		{
			out.println("<script language='javascript'>alert('原密码不正确！');window.location.href='changePassword.jsp';</script>");
		}
	
	%>

</body>
</html>