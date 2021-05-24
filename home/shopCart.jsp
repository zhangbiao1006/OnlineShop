<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.eight.oss.po.Items"%>
<%@ page import="com.eight.oss.service.impl.ItemsServiceImpl" %>
<%@ page import="com.eight.oss.po.ItemInTrolley" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

		<title>购物车页面</title>

		<link href="../AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css" />
		<link href="../basic/css/demo.css" rel="stylesheet" type="text/css" />
		<link href="../css/cartstyle.css" rel="stylesheet" type="text/css" />
		<link href="../css/optstyle.css" rel="stylesheet" type="text/css" />

		<script type="text/javascript" src="../js/jquery.js"></script>
		
		<script type="text/javascript" language="javascript">
			
			function selectAll(checkbox,sum)
			{
				if (checkbox.checked == true)
				{
					document.getElementById("calsum").value = sum;
				}
				else
				{
					document.getElementById("calsum").value = 0.0;
				}
				var select = document.getElementById("selectall");				
				var flag = select.checked;	
				var checkboxs = document.getElementsByName("itemChosen");
				if (flag)
				{
					for (var i = 0; i < checkboxs.length; i++)
					{
						checkboxs[i].checked = true;
					}
				}
				else
				{
					for (var i = 0; i < checkboxs.length; i++)
					{
						checkboxs[i].checked = false;
					}
				}
			}
			
			function toCheck(checkbox,money,num)
			{
				if (checkbox.checked == true)
				{
					var a = document.getElementById("calsum").value;
					document.getElementById("calsum").value = parseFloat(a) + money * num;
				}
				else
				{
					var a = document.getElementById("calsum").value;
					document.getElementById("calsum").value = parseFloat(a) - money * num;
				}
				
				var select = document.getElementById("selectall");
				var checkboxs = document.getElementsByName("itemChosen");
				var count = 0;
				for (var i = 0; i < checkboxs.length; i++)
				{
					if (checkboxs[i].checked)
					{
						count++;
					}
				}
				if (count == checkboxs.length)
				{
					select.checked = true;
				}
				else
				{
					select.checked = false;
				}
			}
			
			function submitConfirm()
			{
				var flag = confirm("确定要生成订单吗？");
				if (flag)
				{
					return true;
				}
				else
				{
					return false;
				}
			}
		
		</script>
		
		<style type="text/css">
		input.JSButton{
			background: #FF6805;
			border:0px;
			height:50px;
			width:80px;
		}
		</style>

	</head>

	<body>
	
		<%  
    		String errorInfo1 = "当前未选中任何商品！";	
  			String flag1 = request.getParameter("errNoChosen");  
  			if (flag1 != null){
  		%>
   		<script type="text/javascript" language="javascript">
   			alert("<%=errorInfo1%>");
   			window.location='shopCart.jsp';
   		</script>
   		<%
  		}
   		%>
	
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
			</ul>
		</div>

		<div class="nav white">
			<div class="logo"><img src="../images/logo.png" /></div>
			<div class="logoBig">
				<li><img src="../images/logobig.png" /></li>
			</div>
		</div>

		<div class="clear"></div>
		
		
		<form action="getOrder.jsp" onsubmit="return submitConfirm()">
		<%
			ItemsServiceImpl itemsServiceImpl = new ItemsServiceImpl();	
			ArrayList<ItemInTrolley> list = itemsServiceImpl.getItemsFromTrolley(userInfo.getUserid());
			if(list!=null&&list.size()>0)
            {
				float priceSum = 0.0f;
				for(int i=0;i<list.size();i++)
	           	{
	            	ItemInTrolley item = list.get(i);
	                float pricePerItem = item.getItemnum() * item.getItemprice();
	                priceSum += pricePerItem;
		%>

			<!--购物车 -->
		<div class="concent">
			<div id="cartTable">
			<%
			    if (i == 0)
			    {
			%>
				<div class="cart-table-th">
					<div class="wp">
						<div class="th th-chk">
							<div id="J_SelectAll1" class="select-all J_SelectAll">

							</div>
						</div>
						<div class="th th-item">
							<div class="td-inner">商品信息</div>
						</div>
						<div class="th th-price">
							<div class="td-inner">单价</div>
						</div>
						<div class="th th-amount">
							<div class="td-inner">数量</div>
						</div>
						<div class="th th-sum">
							<div class="td-inner">金额</div>
						</div>
						<div class="th th-op">
							<div class="td-inner">操作</div>
						</div>
					</div>
				</div>
			<%
			    }
			%>
				<div class="clear"></div>

				<tr class="item-list">
					<div class="bundle  bundle-last ">
						<div class="clear"></div>
						<div class="bundle-main">
							<ul class="item-content clearfix">
								<li class="td td-chk">
									<div class="cart-checkbox ">
										<input class="check" id="itemChosen" name="itemChosen" value="<%=item.getItemid() %>" type="checkbox" onclick="toCheck(this,<%=item.getItemprice() %>,<%=item.getItemnum() %>)"/>
										<label for="J_CheckBox_170037950254"></label>
									</div>
								</li>
								<li class="td td-item">
									<div class="item-pic">
										<a href="#" target="_blank" data-title="" class="J_MakePoint" data-point="tbcart.8.12">
											<img src="../../<%=item.getPicture()%>" width="80" height="80"></a>
									</div>
									<div class="item-info">
										<div class="item-basic-info">
											<a href="#" target="_blank" title="" class="item-title J_MakePoint" data-point="tbcart.8.11"><%=item.getItemname() %></a>
										</div>
									</div>
								</li>
								<li class="td td-info">
									<div class="item-props item-props-can">
										<span class="sku-line"><%=item.getItemdetail() %></span>
									</div>
								</li>
								<li class="td td-price">
									<div class="item-price price-promo-promo">
										<div class="price-content">
											<div class="price-line">
												<em class="J_Price price-now" tabindex="0"><%=item.getItemprice() %></em>
											</div>
										</div>
									</div>
								</li>
								<li class="td td-amount">
									<div class="amount-wrapper ">
										<div class="item-amount ">
											<div class="sl">								
												<%=item.getItemnum()%>
											</div>
										</div>
									</div>
								</li>
								<li class="td td-sum">
									<div class="td-inner">
										<em tabindex="0" class="J_ItemSum number"><%=pricePerItem %></em>
									</div>
								</li>
								<li class="td td-op">
									<div class="td-inner">
											
										<a href="./delItemInTro.jsp?itemid=<%=item.getItemid() %>" data-point-url="#" class="delete">删除</a>
									</div>
								</li>
							</ul>										
						</div>
					</div>
				</tr>
				<div class="clear"></div>
			</div>
			<div class="clear"></div>
			<%
				if (i == list.size() - 1)
				{
        	%>
				
				

			<div class="float-bar-wrapper">
				<div id="J_SelectAll2" class="select-all J_SelectAll">
					<div class="cart-checkbox">
						<input class="check-all check" id="selectall" name="select-all" value="true" type="checkbox" onclick="selectAll(this,<%=priceSum %>)"/>
						<label for="J_SelectAllCbx2"></label>
					</div>
					<span>全选</span>
				</div>
				<div class="float-bar-right">
					<div class="price-sum">
						<span class="txt">合计:</span>
						<strong class="price">¥&nbsp;<input type="text" id="calsum" value="0.0" readonly></input></strong>
					</div>
					<div class="btn-area">
						<input type="submit" id="J_Go" class="JSButton" value="结算"></input>
					</div>
				</div>

			</div>
			<%
                   }
	             }
              }
			else
			{
        	%>
        	<div >
        		<div>
        			<center>
						<img src="../itemsImage/shopcart1.jpg" width="80" height="80">
						<font size="5">&nbsp;&nbsp;&nbsp;购物车中没有任何商品</font>
					</center>
				</div>
			</div>
			<%
			}
			%>

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
	</form>
		
		<%
  		}
   		%>	
		
		
		
		
		

		<!--操作页面-->

		<div class="theme-popover-mask"></div>

		<!--引导 -->
		<div class="navCir">
			<li><a href="home2.html"><i class="am-icon-home "></i>首页</a></li>
			<li><a href="sort.html"><i class="am-icon-list"></i>分类</a></li>
			<li class="active"><a href="shopcart.html"><i class="am-icon-shopping-basket"></i>购物车</a></li>	
			<li><a href="../person/index.html"><i class="am-icon-user"></i>我的</a></li>					
		</div>
	</body>

</html>