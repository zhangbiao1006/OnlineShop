<%@ page language="java" import="java.util.*,java.sql.*,java.net.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="com.eight.oss.po.Items"%>
<%@ page import="com.eight.oss.service.impl.ItemsServiceImpl" %>
<%@ page import="com.eight.oss.po.ItemInTrolley" %>
<%@ page import="com.eight.oss.service.impl.OrdersServiceImpl" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		
	String[] chk = request.getParameterValues("itemChosen");
	if (chk == null)
	{
		response.sendRedirect("shopCart.jsp?errNoChosen");
	}
	else
	{	int[] itemsNum = new int[chk.length];
		int t=0;
	
		
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		String datetime = df.format(new java.util.Date());
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
		
		float ordersum = 0.0f;
		ItemsServiceImpl itemsServiceImpl = new ItemsServiceImpl();	
		ArrayList<ItemInTrolley> list = itemsServiceImpl.getItemsFromTrolley(userInfo.getUserid());
		for(int i=0;i<list.size();i++)
       	{
        	ItemInTrolley item = list.get(i);
        	String id = String.valueOf(item.getItemid());
        	int flag = 0;
        	for(int j=0;j<chk.length;j++)
        	{
        		if(id.equals(chk[j]))
        		{
        			flag = 1;
        			break;
        		}
        	}
        	if(flag==1)
        	{
        		ordersum = ordersum + item.getItemnum() * item.getItemprice();
        		itemsNum[t]=item.getItemnum();
        		++t;
        	}
       	}
		
		String driverClass = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://10.25.38.130:3306/groupdesign";
        String username = "root";
        String password = "melo4343";
        Class.forName(driverClass);//加载驱动 
        Connection conn = DriverManager.getConnection(url,username,password);//得到连接
        PreparedStatement pStmt = conn.prepareStatement("insert into orders(userid,ordertime,ordersum,orderstatus) values('" + userInfo.getUserid() + "','" + datetime + "',0.0" + ",0)");
        pStmt.execute();
        
        String orderid = new OrdersServiceImpl().getOrderId(userInfo.getUserid());
        
        for(int i=0;i<chk.length;++i)
        {
        	pStmt = conn.prepareStatement("insert into orderdetail(orderid,itemid,itemnum) values(" + orderid + "," + chk[i] + "," + itemsNum[i] + ")");
            pStmt.execute();
            pStmt = conn.prepareStatement("delete from trolley where userid='" + userInfo.getUserid() + "' and itemid=" + chk[i]);
            pStmt.execute();
        }
        
 		pStmt.close();
 	    conn.close();
 	    
 	   	response.sendRedirect("shopCart.jsp");
	}
		
	%>
	
</body>
</html>