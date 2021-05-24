<%@ page language="java" import="java.util.*,java.sql.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	<meta charset="UTF-8">
	<base href="<%=basePath%>">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	
</head>
<body>

	<%      
			request.setCharacterEncoding("UTF-8");        
			String userid = new String(request.getParameter("userid").getBytes("ISO-8859-1"),"UTF-8");  
            String pwd = request.getParameter("password");
            String name = request.getParameter("name");
            String sex = request.getParameter("sex");
            String address = request.getParameter("address");
            String phone = new String(request.getParameter("phonenum").getBytes("ISO-8859-1"),"UTF-8");

            String driverClass = "com.mysql.jdbc.Driver";
            String url = "jdbc:mysql://10.25.38.130:3306/groupdesign";
            String username = "root";
            String password = "melo4343";
            Class.forName(driverClass);//加载驱动 
            Connection conn = DriverManager.getConnection(url,username,password);//得到连接
            PreparedStatement pStmt = conn.prepareStatement("select * from user where userid = '" + userid + "'");
            ResultSet rs = pStmt.executeQuery();
            if(rs.next())
            {
            	out.println("<script language='javascript'>alert('该登录账号已存在，请重新注册！');window.location.href='register.jsp';</script>");
            }
            else
            {
                PreparedStatement tmt = conn.prepareStatement("Insert into user values('" + userid + "','" + pwd + "','" + name + "','" + sex + "','" + address + "','" + phone + "',0)");
                System.out.println(tmt);
                int rst = tmt.executeUpdate();
                if (rst != 0)
                {
                	out.println("<script language='javascript'>alert('用户注册成功！');window.location.href='home.jsp';</script>");  
                        
                }
                else
                {
                    out.println("<script language='javascript'>alert('用户注册失败！');window.location.href='register.jsp';</script>");  
                        
                }
            }
     %>

</body>
</html>