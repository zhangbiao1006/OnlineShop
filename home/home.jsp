<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

		<title>首页</title>

		<link href="../AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css" />
		<link href="../AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css" />

		<link href="../basic/css/demo.css" rel="stylesheet" type="text/css" />

		<link href="../css/hmstyle.css" rel="stylesheet" type="text/css"/>
		<link href="../css/skin.css" rel="stylesheet" type="text/css" />
		<script src="../AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
		<script src="../AmazeUI-2.4.2/assets/js/amazeui.min.js"></script>

	</head>

	<body>
	
		<%
			
			Object obj = session.getAttribute("userNow");
			com.eight.oss.po.User userInfo = null;
			
			if (obj == null)
			{
				
			}
			else
			{
				userInfo = (com.eight.oss.po.User)obj;
			}
			
		
		%>
	
		<div class="hmtop">
			<!--顶部导航条 -->
			<div class="am-container header">
				<ul class="message-l">
					<div class="topMessage">
						<div class="menu-hd">
							<%
								if (obj == null)
								{
							%>
							<a href="login.jsp" target="_top" class="h">亲，请登录</a>
							<a href="register.jsp" target="_top">免费注册</a>
							<%
								}
								else
								{
							%>
							欢迎您，${userNow.userid } &nbsp;
							<%
								}
							%>
							
						</div>
					</div>
				</ul>
				<ul class="message-r">
					<div class="topMessage home">
						<div class="menu-hd"><a href="home.jsp" target="_top" class="h">商城首页</a></div>
					</div>
					<div class="topMessage my-shangcheng">
						<div class="menu-hd MyShangcheng"><a href="../person/information.jsp" target="_top"><i class="am-icon-user am-icon-fw"></i>个人中心</a></div>
					</div>
					<div class="topMessage mini-cart">
						<div class="menu-hd"><a id="mc-menu-hd" href="./shopCart.jsp" target="_top"><i class="am-icon-shopping-cart  am-icon-fw"></i><span>购物车</span><strong id="J_MiniCartNum" class="h">0</strong></a></div>
					</div>
					<div class="topMessage favorite">
						<div class="menu-hd"><a href="#" target="_top"><i class="am-icon-heart am-icon-fw"></i><span>收藏夹</span></a></div>
				</ul>
				</div>

				<!--悬浮搜索框-->

				<div class="nav white">
					<div class="logo"><img src="../images/logo.png" /></div>
					<div class="logoBig">
						<li><img src="../images/logobig.png" /></li>
					</div>

					<div class="search-bar pr">
						<a name="index_none_header_sysc" href="#"></a>
						<form>
							<input id="searchInput" name="index_none_header_sysc" type="text" placeholder="搜索" autocomplete="off">
							<input id="ai-topsearch" class="submit am-btn" value="搜索" index="1" type="submit">
						</form>
					</div>
				</div>

				<div class="clear"></div>
			</div>
			<div class="banner">
                      <!--轮播 -->
						<div class="am-slider am-slider-default scoll" data-am-flexslider id="demo-slider-0">
							<ul class="am-slides">
								<li class="banner1"><a href="introduction.html"><img src="../images/ad1.jpg" /></a></li>
								<li class="banner2"><a><img src="../images/ad2.jpg" /></a></li>
								<li class="banner3"><a><img src="../images/ad3.jpg" /></a></li>

							</ul>
						</div>
						<div class="clear"></div>	
			</div>
			<div class="shopNav">
				<div class="slideall">
					
					   <div class="long-title"><span class="all-goods">全部分类</span></div>
					   <div class="nav-cont">
							<ul>
								<li class="index"><a href="home.html">首页</a></li>
							</ul>
						</div>					
		        				
						<!--侧边导航 -->
						<div id="nav" class="navfull">
							<div class="area clearfix">
								<div class="category-content" id="guide_2">
									
									<div class="category">
										<ul class="category-list" id="js_climit_li">
											<li class="appliance js_toggle relative first">
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="../images/cake.png"></i><a class="ml-22" title="点心">点心/蛋糕</a></h3>
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																		<dt><span title="蛋糕">蛋糕</span></dt>
																		<dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
																		<dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
																		<dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
																		<dd><a title="软面包" href="#"><span>软面包</span></a></dd>
																		<dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
																		<dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
																		<dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
																		<dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
																		<dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="蛋糕">点心</span></dt>
																		<dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
																		<dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
																		<dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
																		<dd><a title="软面包" href="#"><span>软面包</span></a></dd>
																		<dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
																		<dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
																		<dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
																		<dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
																		<dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
																	</dl>

																</div>
															</div>
														</div>
													</div>
												</div>
											<b class="arrow"></b>	
											</li>
											<li class="appliance js_toggle relative">
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="../images/cookies.png"></i><a class="ml-22" title="饼干、膨化">饼干/膨化</a></h3>
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																		<dt><span title="饼干">饼干</span></dt>
																		<dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
																		<dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
																		<dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
																		<dd><a title="软面包" href="#"><span>软面包</span></a></dd>
																		<dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="薯片">薯片</span></dt>
																		<dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
																		<dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
																		<dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
																		<dd><a title="软面包" href="#"><span>软面包</span></a></dd>
																		<dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
																		<dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
																		<dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
																		<dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
																		<dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="蛋糕">虾条</span></dt>
																		<dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
																		<dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
																		<dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
																		<dd><a title="软面包" href="#"><span>软面包</span></a></dd>
																		<dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
																		<dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
																		<dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
																		<dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
																		<dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
																	</dl>
																</div>
															</div>
														</div>
													</div>
												</div>
                                             <b class="arrow"></b>
											</li>
											<li class="appliance js_toggle relative">
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="../images/meat.png"></i><a class="ml-22" title="熟食、肉类">熟食/肉类</a></h3>
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																		<dt><span title="猪肉脯">猪肉脯</span></dt>
																		<dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
																		<dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
																		<dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
																		<dd><a title="软面包" href="#"><span>软面包</span></a></dd>
																		<dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="牛肉丝">牛肉丝</span></dt>
																		<dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
																		<dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
																		<dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
																		<dd><a title="软面包" href="#"><span>软面包</span></a></dd>
																		<dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="小香肠">小香肠</span></dt>
																		<dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
																		<dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
																		<dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
																		<dd><a title="软面包" href="#"><span>软面包</span></a></dd>
																		<dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
																	</dl>
																</div>
															</div>
														</div>
													</div>
												</div>
                                            <b class="arrow"></b>
											</li>
											<li class="appliance js_toggle relative">
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="../images/bamboo.png"></i><a class="ml-22" title="素食、卤味">素食/卤味</a></h3>
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																		<dt><span title="豆干">豆干</span></dt>
																		<dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
																		<dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
																		<dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
																		<dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="干笋">干笋</span></dt>
																		<dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
																		<dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
																		<dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
																		<dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="鸭脖">鸭脖</span></dt>
																		<dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
																		<dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
																		<dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
																		<dd><a title="软面包" href="#"><span>软面包</span></a></dd>
																		<dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
																		<dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
																		<dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
																		<dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
																		<dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
																	</dl>
																</div>
															</div>
														</div>
													</div>
												</div>
                                             <b class="arrow"></b>
											</li>
											<li class="appliance js_toggle relative">
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="../images/nut.png"></i><a class="ml-22" title="坚果、炒货">坚果/炒货</a></h3>
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																		<dt><span title="蛋糕">坚果</span></dt>
																		<dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
																		<dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
																		<dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
																		<dd><a title="软面包" href="#"><span>软面包</span></a></dd>
																		<dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
																		<dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
																		<dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
																		<dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
																		<dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="蛋糕">锅巴</span></dt>
																		<dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
																		<dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
																		<dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
																		<dd><a title="软面包" href="#"><span>软面包</span></a></dd>
																		<dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
																		<dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
																		<dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
																		<dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
																		<dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
																	</dl>
																</div>
															</div>
														</div>
													</div>
												</div>
												<b class="arrow"></b>
											</li>
											<li class="appliance js_toggle relative">
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="../images/candy.png"></i><a class="ml-22" title="糖果、蜜饯">糖果/蜜饯</a></h3>
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																		<dt><span title="糖果">糖果</span></dt>
																		<dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
																		<dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
																		<dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
																		<dd><a title="软面包" href="#"><span>软面包</span></a></dd>
																		<dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
																		<dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
																		<dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
																		<dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
																		<dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="蜜饯">蜜饯</span></dt>
																		<dd><a title="猕猴桃干" href="#"><span>猕猴桃干</span></a></dd>
																		<dd><a title="糖樱桃" href="#"><span>糖樱桃</span></a></dd>
																		<dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
																		<dd><a title="软面包" href="#"><span>软面包</span></a></dd>
																		<dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
																		<dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
																		<dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
																		<dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
																		<dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
																	</dl>
																</div>
															</div>
														</div>
													</div>
												</div>
                                            <b class="arrow"></b>
											</li>
											<li class="appliance js_toggle relative">
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="../images/chocolate.png"></i><a class="ml-22" title="巧克力">巧克力</a></h3>
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																		<dt><span title="蛋糕">巧克力</span></dt>
																		<dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
																		<dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
																		<dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
																		<dd><a title="软面包" href="#"><span>软面包</span></a></dd>
																		<dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
																		<dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
																		<dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
																		<dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
																		<dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="蛋糕">果冻</span></dt>
																		<dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
																		<dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
																		<dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
																		<dd><a title="软面包" href="#"><span>软面包</span></a></dd>
																		<dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
																		<dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
																		<dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
																		<dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
																		<dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
																	</dl>
																</div>
															</div>
														</div>
													</div>
												</div>
												<b class="arrow"></b>
											</li>
											<li class="appliance js_toggle relative">
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="../images/fish.png"></i><a class="ml-22" title="海味、河鲜">海味/河鲜</a></h3>
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																		<dt><span title="海带丝">海带丝</span></dt>
																		<dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
																		<dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
																		<dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
																		<dd><a title="软面包" href="#"><span>软面包</span></a></dd>
																		<dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
																		<dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
																		<dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
																		<dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
																		<dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="小鱼干">小鱼干</span></dt>
																		<dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
																		<dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
																		<dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
																		<dd><a title="软面包" href="#"><span>软面包</span></a></dd>
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="鱿鱼丝">鱿鱼丝</span></dt>
																		<dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
																		<dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
																		<dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
																		<dd><a title="软面包" href="#"><span>软面包</span></a></dd>
																	</dl>
																</div>
															</div>
														</div>
													</div>
												</div>
                                             <b class="arrow"></b>
											</li>
											<li class="appliance js_toggle relative">
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="../images/tea.png"></i><a class="ml-22" title="花茶、果茶">花茶/果茶</a></h3>
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																		<dt><span title="蛋糕">蛋糕</span></dt>
																		<dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
																		<dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
																		<dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
																		<dd><a title="软面包" href="#"><span>软面包</span></a></dd>
																		<dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
																		<dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
																		<dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
																		<dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
																		<dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="蛋糕">点心</span></dt>
																		<dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
																		<dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
																		<dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
																		<dd><a title="软面包" href="#"><span>软面包</span></a></dd>
																		<dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
																		<dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
																		<dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
																		<dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
																		<dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
																	</dl>
																</div>
															</div>
														</div>
													</div>
												</div>
												<b class="arrow"></b>
											</li>											
										</ul>
									</div>
								</div>

							</div>
						</div>
						
						
						<!--轮播-->
						
						<script type="text/javascript">
							(function() {
								$('.am-slider').flexslider();
							});
							$(document).ready(function() {
								$("li").hover(function() {
									$(".category-content .category-list li.first .menu-in").css("display", "none");
									$(".category-content .category-list li.first").removeClass("hover");
									$(this).addClass("hover");
									$(this).children("div.menu-in").css("display", "block")
								}, function() {
									$(this).removeClass("hover")
									$(this).children("div.menu-in").css("display", "none")
								});
							})
						</script>



					<!--小导航 -->
					<div class="am-g am-g-fixed smallnav">
						<div class="am-u-sm-3">
							<a href="sort.html"><img src="../images/navsmall.jpg" />
								<div class="title">商品分类</div>
							</a>
						</div>
						<div class="am-u-sm-3">
							<a href="#"><img src="../images/huismall.jpg" />
								<div class="title">大聚惠</div>
							</a>
						</div>
						<div class="am-u-sm-3">
							<a href="#"><img src="../images/mansmall.jpg" />
								<div class="title">个人中心</div>
							</a>
						</div>
						<div class="am-u-sm-3">
							<a href="#"><img src="../images/moneysmall.jpg" />
								<div class="title">投资理财</div>
							</a>
						</div>
					</div>

					<!--走马灯 -->

					<div class="marqueen">
						<span class="marqueen-title">商城头条</span>
						<div class="demo">

							<ul>
								<li class="title-first"><a target="_blank" href="#">
									<img src="../images/TJ2.jpg"></img>
									<span>[特惠]</span>商城爆品1分秒								
								</a></li>
								<li class="title-first"><a target="_blank" href="#">
									<span>[公告]</span>商城与广州市签署战略合作协议
								     <img src="../images/TJ.jpg"></img>
								     <p>XXXXXXXXXXXXXXXXXX</p>
							    </a></li>
							    
						<div class="mod-vip">
							<div class="m-baseinfo">
								<a href="../person/index.html">
									<img src="../images/getAvatar.do.jpg">
								</a>
								<em>
									Hi,<span class="s-name">小叮当</span>
									<a href="#"><p>点击更多优惠活动</p></a>									
								</em>
							</div>
							<div class="member-logout">
								<a class="am-btn-warning btn" href="login.html">登录</a>
								<a class="am-btn-warning btn" href="register.html">注册</a>
							</div>
							<div class="member-login">
								<a href="#"><strong>0</strong>待收货</a>
								<a href="#"><strong>0</strong>待发货</a>
								<a href="#"><strong>0</strong>待付款</a>
								<a href="#"><strong>0</strong>待评价</a>
							</div>
							<div class="clear"></div>	
						</div>																	    
							    
								<li><a target="_blank" href="#"><span>[特惠]</span>洋河年末大促，低至两件五折</a></li>
								<li><a target="_blank" href="#"><span>[公告]</span>华北、华中部分地区配送延迟</a></li>
								<li><a target="_blank" href="#"><span>[特惠]</span>家电狂欢千亿礼券 买1送1！</a></li>
								
							</ul>
                        <div class="advTip"><img src="../images/advTip.jpg"/></div>
						</div>
					</div>
					<div class="clear"></div>
				</div>
				<script type="text/javascript">
					if ($(window).width() < 640) {
						function autoScroll(obj) {
							$(obj).find("ul").animate({
								marginTop: "-39px"
							}, 500, function() {
								$(this).css({
									marginTop: "0px"
								}).find("li:first").appendTo(this);
							})
						}
						$(function() {
							setInterval('autoScroll(".demo")', 3000);
						})
					}
				</script>
			</div>
			<div class="shopMainbg">
				<div class="shopMain" id="shopmain">

					<!--今日推荐 -->

					<div class="am-g am-g-fixed recommendation">
						<div class="clock am-u-sm-3" ">
							<img src="../images/2016.png "></img>
							<p>今日<br>推荐</p>
						</div>
						<div class="am-u-sm-4 am-u-lg-3 ">
							<div class="info ">
								<h3>真的有鱼</h3>
								<h4>开年福利篇</h4>
							</div>
							<div class="recommendationMain one">
								<a href="introduction.html"><img src="../images/tj.png "></img></a>
							</div>
						</div>						
						<div class="am-u-sm-4 am-u-lg-3 ">
							<div class="info ">
								<h3>囤货过冬</h3>
								<h4>让爱早回家</h4>
							</div>
							<div class="recommendationMain two">
								<img src="../images/tj1.png "></img>
							</div>
						</div>
						<div class="am-u-sm-4 am-u-lg-3 ">
							<div class="info ">
								<h3>浪漫情人节</h3>
								<h4>甜甜蜜蜜</h4>
							</div>
							<div class="recommendationMain three">
								<img src="../images/tj2.png "></img>
							</div>
						</div>

					</div>
					<div class="clear "></div>
					<!--热门活动 -->

					<div class="am-container activity ">
						<div class="shopTitle ">
							<h4>活动</h4>
							<h3>每期活动 优惠享不停 </h3>
							<span class="more ">
                              <a href="# ">全部活动<i class="am-icon-angle-right" style="padding-left:10px ;" ></i></a>
                        </span>
						</div>
					  <div class="am-g am-g-fixed ">
						<div class="am-u-sm-3 ">
							<div class="icon-sale one "></div>	
								<h4>秒杀</h4>							
							<div class="activityMain ">
								<img src="../images/activity1.jpg "></img>
							</div>
							<div class="info ">
								<h3>春节送礼优选</h3>
							</div>														
						</div>
						
						<div class="am-u-sm-3 ">
						  <div class="icon-sale two "></div>	
							<h4>特惠</h4>
							<div class="activityMain ">
								<img src="../images/activity2.jpg "></img>
							</div>
							<div class="info ">
								<h3>春节送礼优选</h3>								
							</div>							
						</div>						
						
						<div class="am-u-sm-3 ">
							<div class="icon-sale three "></div>
							<h4>团购</h4>
							<div class="activityMain ">
								<img src="../images/activity3.jpg "></img>
							</div>
							<div class="info ">
								<h3>春节送礼优选</h3>
							</div>							
						</div>						

						<div class="am-u-sm-3 last ">
							<div class="icon-sale "></div>
							<h4>超值</h4>
							<div class="activityMain ">
								<img src="../images/activity.jpg "></img>
							</div>
							<div class="info ">
								<h3>春节送礼优选</h3>
							</div>													
						</div>

					  </div>
                   </div>
					<div class="clear "></div>


                    <div id="f1">
					<!--甜点-->
					
					<div class="am-container ">
						<div class="shopTitle ">
							<h4>甜品</h4>
							<h3>每一道甜品都有一个故事</h3>
							<div class="today-brands ">
								<a href="# ">桂花糕</a>
								<a href="# ">奶皮酥</a>
								<a href="# ">栗子糕 </a>
								<a href="# ">马卡龙</a>
								<a href="# ">铜锣烧</a>
								<a href="# ">豌豆黄</a>
							</div>
							<span class="more ">
                    <a href="# ">更多美味<i class="am-icon-angle-right" style="padding-left:10px ;" ></i></a>
                        </span>
						</div>
					</div>
					
					<div class="am-g am-g-fixed floodFour">
						<div class="am-u-sm-5 am-u-md-4 text-one list ">
							<div class="word">
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>	
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>									
							</div>
							<a href="# ">
								<div class="outer-con ">
									<div class="title ">
									开抢啦！
									</div>
									<div class="sub-title ">
										零食大礼包
									</div>									
								</div>
                                  <img src="../images/act1.png " />								
							</a>
							<div class="triangle-topright"></div>						
						</div>
						
							<div class="am-u-sm-7 am-u-md-4 text-two sug">
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>									
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
								<a href="# "><img src="../images/2.jpg" /></a>
							</div>

							<div class="am-u-sm-7 am-u-md-4 text-two">
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
								<a href="# "><img src="../images/1.jpg" /></a>
							</div>


						<div class="am-u-sm-3 am-u-md-2 text-three big">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
							</div>
							<a href="# "><img src="../images/5.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three sug">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
							</div>
							<a href="# "><img src="../images/3.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three ">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
							</div>
							<a href="# "><img src="../images/4.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three last big ">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
							</div>
							<a href="# "><img src="../images/5.jpg" /></a>
						</div>

					</div>
                 <div class="clear "></div>  
                 </div>
                 
  
                    <div id="f2">
					<!--坚果-->
					<div class="am-container ">
						<div class="shopTitle ">
							<h4>坚果</h4>
							<h3>酥酥脆脆，回味无穷</h3>
							<div class="today-brands ">
								<a href="# ">腰果</a>
								<a href="# ">松子</a>
								<a href="# ">夏威夷果 </a>
								<a href="# ">碧根果</a>
								<a href="# ">开心果</a>
								<a href="# ">核桃仁</a>
							</div>
							<span class="more ">
                    <a href="# ">更多美味<i class="am-icon-angle-right" style="padding-left:10px ;" ></i></a>
                        </span>
						</div>
					</div>
					<div class="am-g am-g-fixed floodThree ">
						<div class="am-u-sm-4 text-four list">
							<div class="word">
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>	
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>									
							</div>
							<a href="# ">
								<img src="../images/act1.png " />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>									
								</div>
							</a>
							<div class="triangle-topright"></div>	
						</div>
						<div class="am-u-sm-4 text-four">
							<a href="# ">
								<img src="../images/6.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>								
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>
						<div class="am-u-sm-4 text-four sug">
							<a href="# ">
								<img src="../images/7.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>
						
						<div class="am-u-sm-6 am-u-md-3 text-five big ">
							<a href="# ">
								<img src="../images/10.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>		
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>						
						<div class="am-u-sm-6 am-u-md-3 text-five ">
							<a href="# ">
								<img src="../images/8.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>	
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>						
						<div class="am-u-sm-6 am-u-md-3 text-five sug">
							<a href="# ">
								<img src="../images/9.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>
						<div class="am-u-sm-6 am-u-md-3 text-five big">
							<a href="# ">
								<img src="../images/10.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>			
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>
						
					</div>

					<div class="clear "></div>
					</div>

        
                    <div id="f3">
					<!--甜点-->
					
					<div class="am-container ">
						<div class="shopTitle ">
							<h4>甜品</h4>
							<h3>每一道甜品都有一个故事</h3>
							<div class="today-brands ">
								<a href="# ">桂花糕</a>
								<a href="# ">奶皮酥</a>
								<a href="# ">栗子糕 </a>
								<a href="# ">马卡龙</a>
								<a href="# ">铜锣烧</a>
								<a href="# ">豌豆黄</a>
							</div>
							<span class="more ">
                    <a href="# ">更多美味<i class="am-icon-angle-right" style="padding-left:10px ;" ></i></a>
                        </span>
						</div>
					</div>
					
					<div class="am-g am-g-fixed floodFour">
						<div class="am-u-sm-5 am-u-md-4 text-one list ">
							<div class="word">
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>	
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>									
							</div>
							<a href="# ">
								<div class="outer-con ">
									<div class="title ">
									开抢啦！
									</div>
									<div class="sub-title ">
										零食大礼包
									</div>									
								</div>
                                  <img src="../images/act1.png " />								
							</a>
							<div class="triangle-topright"></div>						
						</div>
						
							<div class="am-u-sm-7 am-u-md-4 text-two sug">
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>									
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
								<a href="# "><img src="../images/2.jpg" /></a>
							</div>

							<div class="am-u-sm-7 am-u-md-4 text-two">
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
								<a href="# "><img src="../images/1.jpg" /></a>
							</div>


						<div class="am-u-sm-3 am-u-md-2 text-three big">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
							</div>
							<a href="# "><img src="../images/5.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three sug">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
							</div>
							<a href="# "><img src="../images/3.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three ">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
							</div>
							<a href="# "><img src="../images/4.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three last big ">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
							</div>
							<a href="# "><img src="../images/5.jpg" /></a>
						</div>

					</div>
                 <div class="clear "></div>                 
                 </div>
  

                    <div id="f4">
					<!--坚果-->
					<div class="am-container ">
						<div class="shopTitle ">
							<h4>坚果</h4>
							<h3>酥酥脆脆，回味无穷</h3>
							<div class="today-brands ">
								<a href="# ">腰果</a>
								<a href="# ">松子</a>
								<a href="# ">夏威夷果 </a>
								<a href="# ">碧根果</a>
								<a href="# ">开心果</a>
								<a href="# ">核桃仁</a>
							</div>
							<span class="more ">
                    <a href="# ">更多美味<i class="am-icon-angle-right" style="padding-left:10px ;" ></i></a>
                        </span>
						</div>
					</div>
					<div class="am-g am-g-fixed floodThree ">
						<div class="am-u-sm-4 text-four list">
							<div class="word">
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>	
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>									
							</div>
							<a href="# ">
								<img src="../images/act1.png " />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>									
								</div>
							</a>
							<div class="triangle-topright"></div>	
						</div>
						<div class="am-u-sm-4 text-four">
							<a href="# ">
								<img src="../images/6.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>								
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>
						<div class="am-u-sm-4 text-four sug">
							<a href="# ">
								<img src="../images/7.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>
						
						<div class="am-u-sm-6 am-u-md-3 text-five big ">
							<a href="# ">
								<img src="../images/10.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>		
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>						
						<div class="am-u-sm-6 am-u-md-3 text-five ">
							<a href="# ">
								<img src="../images/8.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>	
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>						
						<div class="am-u-sm-6 am-u-md-3 text-five sug">
							<a href="# ">
								<img src="../images/9.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>
						<div class="am-u-sm-6 am-u-md-3 text-five big">
							<a href="# ">
								<img src="../images/10.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>			
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>
						
					</div>

					<div class="clear "></div>
					</div>


                     <div id="f5">
					<!--甜点-->
					
					<div class="am-container ">
						<div class="shopTitle ">
							<h4>甜品</h4>
							<h3>每一道甜品都有一个故事</h3>
							<div class="today-brands ">
								<a href="# ">桂花糕</a>
								<a href="# ">奶皮酥</a>
								<a href="# ">栗子糕 </a>
								<a href="# ">马卡龙</a>
								<a href="# ">铜锣烧</a>
								<a href="# ">豌豆黄</a>
							</div>
							<span class="more ">
                    <a href="# ">更多美味<i class="am-icon-angle-right" style="padding-left:10px ;" ></i></a>
                        </span>
						</div>
					</div>
					
					<div class="am-g am-g-fixed floodFour">
						<div class="am-u-sm-5 am-u-md-4 text-one list ">
							<div class="word">
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>	
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>									
							</div>
							<a href="# ">
								<div class="outer-con ">
									<div class="title ">
									开抢啦！
									</div>
									<div class="sub-title ">
										零食大礼包
									</div>									
								</div>
                                  <img src="../images/act1.png " />								
							</a>
							<div class="triangle-topright"></div>						
						</div>
						
							<div class="am-u-sm-7 am-u-md-4 text-two sug">
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>									
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
								<a href="# "><img src="../images/2.jpg" /></a>
							</div>

							<div class="am-u-sm-7 am-u-md-4 text-two">
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
								<a href="# "><img src="../images/1.jpg" /></a>
							</div>


						<div class="am-u-sm-3 am-u-md-2 text-three big">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
							</div>
							<a href="# "><img src="../images/5.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three sug">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
							</div>
							<a href="# "><img src="../images/3.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three ">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
							</div>
							<a href="# "><img src="../images/4.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three last big ">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
							</div>
							<a href="# "><img src="../images/5.jpg" /></a>
						</div>

					</div>
                 <div class="clear "></div>                 
                 </div>
  

                  <div id="f6">
					<!--坚果-->
					<div class="am-container ">
						<div class="shopTitle ">
							<h4>坚果</h4>
							<h3>酥酥脆脆，回味无穷</h3>
							<div class="today-brands ">
								<a href="# ">腰果</a>
								<a href="# ">松子</a>
								<a href="# ">夏威夷果 </a>
								<a href="# ">碧根果</a>
								<a href="# ">开心果</a>
								<a href="# ">核桃仁</a>
							</div>
							<span class="more ">
                    <a href="# ">更多美味<i class="am-icon-angle-right" style="padding-left:10px ;" ></i></a>
                        </span>
						</div>
					</div>
					<div class="am-g am-g-fixed floodThree ">
						<div class="am-u-sm-4 text-four list">
							<div class="word">
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>	
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>									
							</div>
							<a href="# ">
								<img src="../images/act1.png " />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>									
								</div>
							</a>
							<div class="triangle-topright"></div>	
						</div>
						<div class="am-u-sm-4 text-four">
							<a href="# ">
								<img src="../images/6.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>								
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>
						<div class="am-u-sm-4 text-four sug">
							<a href="# ">
								<img src="../images/7.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>
						
						<div class="am-u-sm-6 am-u-md-3 text-five big ">
							<a href="# ">
								<img src="../images/10.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>		
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>						
						<div class="am-u-sm-6 am-u-md-3 text-five ">
							<a href="# ">
								<img src="../images/8.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>	
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>						
						<div class="am-u-sm-6 am-u-md-3 text-five sug">
							<a href="# ">
								<img src="../images/9.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>
						<div class="am-u-sm-6 am-u-md-3 text-five big">
							<a href="# ">
								<img src="../images/10.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>			
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>
						
					</div>

					<div class="clear "></div>
				   </div>
   
   
   
                     <div id="f7">
					<!--甜点-->
					
					<div class="am-container ">
						<div class="shopTitle ">
							<h4>甜品</h4>
							<h3>每一道甜品都有一个故事</h3>
							<div class="today-brands ">
								<a href="# ">桂花糕</a>
								<a href="# ">奶皮酥</a>
								<a href="# ">栗子糕 </a>
								<a href="# ">马卡龙</a>
								<a href="# ">铜锣烧</a>
								<a href="# ">豌豆黄</a>
							</div>
							<span class="more ">
                    <a href="# ">更多美味<i class="am-icon-angle-right" style="padding-left:10px ;" ></i></a>
                        </span>
						</div>
					</div>
					
					<div class="am-g am-g-fixed floodFour">
						<div class="am-u-sm-5 am-u-md-4 text-one list ">
							<div class="word">
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>	
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>									
							</div>
							<a href="# ">
								<div class="outer-con ">
									<div class="title ">
									开抢啦！
									</div>
									<div class="sub-title ">
										零食大礼包
									</div>									
								</div>
                                  <img src="../images/act1.png " />								
							</a>
							<div class="triangle-topright"></div>						
						</div>
						
							<div class="am-u-sm-7 am-u-md-4 text-two sug">
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>									
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
								<a href="# "><img src="../images/2.jpg" /></a>
							</div>

							<div class="am-u-sm-7 am-u-md-4 text-two">
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
								<a href="# "><img src="../images/1.jpg" /></a>
							</div>


						<div class="am-u-sm-3 am-u-md-2 text-three big">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
							</div>
							<a href="# "><img src="../images/5.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three sug">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
							</div>
							<a href="# "><img src="../images/3.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three ">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
							</div>
							<a href="# "><img src="../images/4.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three last big ">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
							</div>
							<a href="# "><img src="../images/5.jpg" /></a>
						</div>

					</div>
                 <div class="clear "></div>  
                 </div>
                 
                    <div id="f8">
					<!--坚果-->
					<div class="am-container ">
						<div class="shopTitle ">
							<h4>坚果</h4>
							<h3>酥酥脆脆，回味无穷</h3>
							<div class="today-brands ">
								<a href="# ">腰果</a>
								<a href="# ">松子</a>
								<a href="# ">夏威夷果 </a>
								<a href="# ">碧根果</a>
								<a href="# ">开心果</a>
								<a href="# ">核桃仁</a>
							</div>
							<span class="more ">
                    <a href="# ">更多美味<i class="am-icon-angle-right" style="padding-left:10px ;" ></i></a>
                        </span>
						</div>
					</div>
					<div class="am-g am-g-fixed floodThree ">
						<div class="am-u-sm-4 text-four list">
							<div class="word">
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>	
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>									
							</div>
							<a href="# ">
								<img src="../images/act1.png " />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>									
								</div>
							</a>
							<div class="triangle-topright"></div>	
						</div>
						<div class="am-u-sm-4 text-four">
							<a href="# ">
								<img src="../images/6.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>								
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>
						<div class="am-u-sm-4 text-four sug">
							<a href="# ">
								<img src="../images/7.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>
						
						<div class="am-u-sm-6 am-u-md-3 text-five big ">
							<a href="# ">
								<img src="../images/10.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>		
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>						
						<div class="am-u-sm-6 am-u-md-3 text-five ">
							<a href="# ">
								<img src="../images/8.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>	
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>						
						<div class="am-u-sm-6 am-u-md-3 text-five sug">
							<a href="# ">
								<img src="../images/9.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>
						<div class="am-u-sm-6 am-u-md-3 text-five big">
							<a href="# ">
								<img src="../images/10.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>			
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>
						
					</div>

					<div class="clear "></div>
					</div>
  
                    <div id="f9">
					<!--甜点-->
					
					<div class="am-container ">
						<div class="shopTitle ">
							<h4>甜品</h4>
							<h3>每一道甜品都有一个故事</h3>
							<div class="today-brands ">
								<a href="# ">桂花糕</a>
								<a href="# ">奶皮酥</a>
								<a href="# ">栗子糕 </a>
								<a href="# ">马卡龙</a>
								<a href="# ">铜锣烧</a>
								<a href="# ">豌豆黄</a>
							</div>
							<span class="more ">
                    <a href="# ">更多美味<i class="am-icon-angle-right" style="padding-left:10px ;" ></i></a>
                        </span>
						</div>
					</div>
					
					<div class="am-g am-g-fixed floodFour">
						<div class="am-u-sm-5 am-u-md-4 text-one list ">
							<div class="word">
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>	
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>									
							</div>
							<a href="# ">
								<div class="outer-con ">
									<div class="title ">
									开抢啦！
									</div>
									<div class="sub-title ">
										零食大礼包
									</div>									
								</div>
                                  <img src="../images/act1.png " />								
							</a>
							<div class="triangle-topright"></div>						
						</div>
						
							<div class="am-u-sm-7 am-u-md-4 text-two sug">
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>									
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
								<a href="# "><img src="../images/2.jpg" /></a>
							</div>

							<div class="am-u-sm-7 am-u-md-4 text-two">
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
								<a href="# "><img src="../images/1.jpg" /></a>
							</div>


						<div class="am-u-sm-3 am-u-md-2 text-three big">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
							</div>
							<a href="# "><img src="../images/5.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three sug">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
							</div>
							<a href="# "><img src="../images/3.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three ">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
							</div>
							<a href="# "><img src="../images/4.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three last big ">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
								<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
							</div>
							<a href="# "><img src="../images/5.jpg" /></a>
						</div>

					</div>
                 <div class="clear "></div>  
                 </div>
                 
  
                    <div id="f10">
					<!--坚果-->
					<div class="am-container ">
						<div class="shopTitle ">
							<h4>坚果</h4>
							<h3>酥酥脆脆，回味无穷</h3>
							<div class="today-brands ">
								<a href="# ">腰果</a>
								<a href="# ">松子</a>
								<a href="# ">夏威夷果 </a>
								<a href="# ">碧根果</a>
								<a href="# ">开心果</a>
								<a href="# ">核桃仁</a>
							</div>
							<span class="more ">
                    <a href="# ">更多美味<i class="am-icon-angle-right" style="padding-left:10px ;" ></i></a>
                        </span>
						</div>
					</div>
					<div class="am-g am-g-fixed floodThree ">
						<div class="am-u-sm-4 text-four list">
							<div class="word">
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>	
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>									
							</div>
							<a href="# ">
								<img src="../images/act1.png " />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>									
								</div>
							</a>
							<div class="triangle-topright"></div>	
						</div>
						<div class="am-u-sm-4 text-four">
							<a href="# ">
								<img src="../images/6.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>								
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>
						<div class="am-u-sm-4 text-four sug">
							<a href="# ">
								<img src="../images/7.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>
						
						<div class="am-u-sm-6 am-u-md-3 text-five big ">
							<a href="# ">
								<img src="../images/10.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>		
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>						
						<div class="am-u-sm-6 am-u-md-3 text-five ">
							<a href="# ">
								<img src="../images/8.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>	
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>						
						<div class="am-u-sm-6 am-u-md-3 text-five sug">
							<a href="# ">
								<img src="../images/9.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>
						<div class="am-u-sm-6 am-u-md-3 text-five big">
							<a href="# ">
								<img src="../images/10.jpg" />
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>			
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
							</a>
						</div>
						
					</div>

					<div class="clear "></div>
					</div>
   
   
   
					<div class="footer ">
						<div class="footer-bd ">
							<p>
								<em>© Group 8  版权所有.
							</p>
						</div>
					</div>

		</div>
		</div>
		<!--引导 -->
		<div class="navCir">
			<li class="active"><a href="home.html"><i class="am-icon-home "></i>首页</a></li>
			<li><a href="sort.html"><i class="am-icon-list"></i>分类</a></li>
			<li><a href="shopcart.html"><i class="am-icon-shopping-basket"></i>购物车</a></li>	
			<li><a href="../person/index.html"><i class="am-icon-user"></i>我的</a></li>					
		</div>


		<!--菜单 -->
		<div class=tip>
			<div id="sidebar">
				<div id="wrap">
					<div id="prof" class="item ">
						<a href="# ">
							<span class="setting "></span>
						</a>
						<div class="ibar_login_box status_login ">
							<div class="avatar_box ">
								<p class="avatar_imgbox "><img src="../images/no-img_mid_.jpg " /></p>
								<ul class="user_info ">
									<li>用户名sl1903</li>
								</ul>
							</div>
							<div class="login_btnbox ">
								<a href="# " class="login_order ">我的订单</a>
								<a href="# " class="login_favorite ">我的收藏</a>
							</div>
							<i class="icon_arrow_white "></i>
						</div>

					</div>
					<div id="shopCart " class="item ">
						<a href="# ">
							<span class="message "></span>
						</a>
						<p>
							购物车
						</p>
						<p class="cart_num ">0</p>
					</div>

					<div id="brand " class="item ">
						<a href="#">
							<span class="wdsc "><img src="../images/wdsc.png " /></span>
						</a>
						<div class="mp_tooltip ">
							我的收藏
							<i class="icon_arrow_right_black "></i>
						</div>
					</div>

					<div class="quick_toggle ">
						<li class="qtitem ">
							<a href="#top " class="return_top "><span class="top "></span></a>
						</li>
					</div>

					<!--回到顶部 -->
					<div id="quick_links_pop " class="quick_links_pop hide "></div>

				</div>

			</div>
			<div id="prof-content " class="nav-content ">
				<div class="nav-con-close ">
					<i class="am-icon-angle-right am-icon-fw "></i>
				</div>
				<div>
					我
				</div>
			</div>
			<div id="shopCart-content " class="nav-content ">
				<div class="nav-con-close ">
					<i class="am-icon-angle-right am-icon-fw "></i>
				</div>
				<div>
					购物车
				</div>
			</div>
			<div id="asset-content " class="nav-content ">
				<div class="nav-con-close ">
					<i class="am-icon-angle-right am-icon-fw "></i>
				</div>
				<div>
					资产
				</div>

				<div class="ia-head-list ">
					<a href="# " target="_blank " class="pl ">
						<div class="num ">0</div>
						<div class="text ">优惠券</div>
					</a>
					<a href="# " target="_blank " class="pl ">
						<div class="num ">0</div>
						<div class="text ">红包</div>
					</a>
					<a href="# " target="_blank " class="pl money ">
						<div class="num ">￥0</div>
						<div class="text ">余额</div>
					</a>
				</div>

			</div>
			<div id="foot-content " class="nav-content ">
				<div class="nav-con-close ">
					<i class="am-icon-angle-right am-icon-fw "></i>
				</div>
				<div>
					足迹
				</div>
			</div>
			<div id="brand-content " class="nav-content ">
				<div class="nav-con-close ">
					<i class="am-icon-angle-right am-icon-fw "></i>
				</div>
				<div>
					收藏
				</div>
			</div>
			<div id="broadcast-content " class="nav-content ">
				<div class="nav-con-close ">
					<i class="am-icon-angle-right am-icon-fw "></i>
				</div>
				<div>
					充值
				</div>
			</div>
		</div>
		<script>
			window.jQuery || document.write('<script src="basic/js/jquery.min.js "><\/script>');
		</script>
		<script type="text/javascript " src="../basic/js/quick_links.js "></script>
	</body>

</html>