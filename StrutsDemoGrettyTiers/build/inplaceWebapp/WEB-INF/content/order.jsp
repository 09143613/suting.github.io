<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="cn.edu.cumt.ec.dao.BuyList" %>
<%@page import="java.util.*"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!--设置ie的兼容性-->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!--缩放-->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--css外部链接-->
<link href="style/reset.css" type="text/css" rel="stylesheet"/>
<link href="style/bootstrap.min.css" type="text/css" rel="stylesheet"/> 
<!--js-->
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<script type="text/javascript" src="js/style.js" language="javascript"></script>
<title>我的订单</title>
</head>
<body>
<div class="container" id="top">
	<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
  		<div class="navbar-header">
     　	
	 	<!-- .navbar-toggle样式用于toggle收缩的内容，即nav-collapse collapse样式所在元素 -->
       		<button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".navbar-responsive-collapse">
         		<span class="sr-only"></span>
         		<span class="icon-bar"></span>
         		<span class="icon-bar"></span>
         		<span class="icon-bar"></span>
       		</button>
       
	   <!-- 确保无论是宽屏还是窄屏，navbar-brand都显示 -->
       		<a href="##" class="navbar-brand">totoro's house</a>
  		</div>
  <!-- 屏幕宽度小于768px时，div.navbar-responsive-collapse容器里的内容都会隐藏，显示icon-bar图标，当点击icon-bar图标时，再展开。屏幕大于768px时，默认显示。 -->
 		 <div class="collapse navbar-collapse navbar-responsive-collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="index.html"><span class="glyphicon glyphicon-home"></span>&nbsp;首页</a></li>
				<% String username=request.getParameter("username");%>
				<li><a href="#">欢迎您！<%=username %></a></li>
				<li class="dropdown"><a href="#">手机版<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li>
							<img id="ewm" src="images/share/Screenshot_2016-05-25-18-37-37_com.tencent.mm.png" />
						</li>
					</ul>
				</li>
				<li class="dropdown"><a href="#">我的账户<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">个人信息</a></li>
						<li><a href="#">安全设置</a></li>
						<li><a href="#">我的订单</a></li>
					</ul>
				</li>
				<li class="dropdown"><a href="#"><span class="glyphicon glyphicon-heart"></span>&nbsp;收藏</a>
					
				</li>
				<li ><a href="cart??username=${param.username }">购物车</a></li>
				<li class="dropdown">
					<a href="#" data-toggle="dropdown" class="dropdown-toggle">分类<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">品质女装</a></li>	
						<li class="divider"></li>
						<li><a href="#">潮流鞋包</a></li>
						<li class="divider"></li>
						<li><a href="#">时尚美妆</a></li>
						<li class="divider"></li>
						<li><a href="#">家电数码</a></li>
						<li class="divider"></li>
						<li><a href="#">美食专区</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
</div>
<div class="container">
	<div class="row">
		
			<table class="table table-striped">
				<s:iterator id="seeOrder" value="#request.seeOrder">
					<tr>
						<td>订单编号</td><td>收货人姓名</td><td>联系电话</td><td>地址</td><td>订单状态</td><td>订单详情</td>
					</tr>
					<tr>
						<td><s:property value="#seeOrder.orderNumber"></s:property></td>
						<td><s:property value="#seeOrder.customerName"></s:property></td>
						<td><s:property value="#seeOrder.tel"></s:property></td>
						<td><s:property value="#seeOrder.address"></s:property></td>
						<td><s:property value="#seeOrder.condition"></s:property></td>
						<td>
							<form method="post" action="detail">
								<button type="submit" class="btn btn-primary" >详细订单</button>
							</form>
						</td>
					</tr>
				</s:iterator>
			</table>
			<input type="hidden" name="orderNumber" value=""/>
	</div>
</div>

<!--jquery-->
<script type="text/javascript" src="js/jquery-2.2.3.min.js" language="javascript"></script>
<script src="js/bootstrap.min.js"></script>
	
</body>
</html>