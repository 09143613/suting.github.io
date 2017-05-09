<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page import="java.util.*"%>
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
<link href="style/car.css" type="text/css" rel="stylesheet"/>
<link href="style/style.css" type="text/css" rel="stylesheet"/>
<link href="style/bootstrap.min.css" type="text/css" rel="stylesheet"/>
<!--js-->
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<script type="text/javascript" src="js/jquery-2.2.3.min.js" language="javascript"></script>
<script type="text/javascript" src="js/demo.js" language="javascript"></script>
<title>购物车</title>

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
				<li class="active"><a href="index"><span class="glyphicon glyphicon-home"></span>&nbsp;首页</a></li>
				<% String username=request.getParameter("username");%>
				<li><a href="#">欢迎您！<%=username %></a></li>
				<li class="dropdown"><a href="#">手机版<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li>
							<img src="#" />
						</li>
					</ul>
				</li>
				<li class="dropdown"><a href="updateForm?username=${param.username }">我的账户<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">个人信息</a></li>
						<li><a href="#">安全设置</a></li>
						<li><a href="#">我的订单</a></li>
					</ul>
				</li>
				<li class="dropdown"><a href="#"><span class="glyphicon glyphicon-heart"></span>&nbsp;收藏</a>
					
				</li>
				<li ><a href="#">购物车</a></li>
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
		<h3>全部商品</h3>
	</div>
	<div class="row">
		<div class="col-lg-10">
			<div class="catbox">
			  <table id="cartTable" class="table table-border">
			    <thead>
			      <tr>
			        <th><label>
			            <input class="check-all check" type="checkbox"/>&nbsp;&nbsp;全选</label></th>
			        <th>商品</th>
			        <th>单价</th>
			        <th>数量</th>
			        <th>小计</th>
			        <th>操作</th>
			      </tr>
			    </thead>
			    <tbody>
			   
			    
			    <s:iterator value="#request.cart" id="cart">
			        
			      
			      <tr>
			        <td class="checkbox"><input class="check-one check" type="checkbox"/></td>
			        <td class="goods">
			        	<img src="<s:property value="#cart.photo"></s:property>" alt=""/>
			        	<span><s:property value="#cart.name"></s:property></span>
			        </td>
			        <td class="price"><s:property value="#cart.price"></s:property></td>
			        <td class="count"><span class="reduce"></span>
			          <input class="count-input" type="text" value="1"/>
			          <span class="add">+</span></td>
			        <td class="subtotal"><s:property value="#cart.price"></s:property></td>
			        <td class="operation">
			        	<form method="post" action="delCart">
							<input name="id" type="hidden" value="<s:property value="#cart.id"></s:property>">
							<button type="submit" class="btn btn-default">删除</button>
						</form>
			        </td>
			      </tr>
			    </s:iterator>
			    
			    </tbody>
			  </table>
			  <div class="foot" id="foot">
			    <label class="fl select-all"><input type="checkbox" class="check-all check"/>&nbsp;&nbsp;全选</label>
			    <a class="fl delete" id="deleteAll" href="javascript:;">删除</a>
			    <div class="fr closing" >
			    	
			    		<%-- <input type="hidden" name="name" value="<s:property value="#g.name"></s:property>" />
		      			<input type="hidden" name="price" value="<s:property value="#g.price"></s:property>" />
		      			<input type="hidden" name="photo" value="<s:property value="#g.photo"></s:property>" />
		      			<input type="hidden" name="id" value="<s:property value="#g.id"></s:property>" /> --%>
				<form action="cartTwo" method="post">
					<button href="orderForm" type="submit" class="btn">填写订单</button>
				</form>
					
			    </div>
			    <input type="hidden" id="cartTotalPrice" />
			    <div class="fr total">合计：￥<span id="priceTotal" name="priceTotal" value="0" /></div>
			    
			    
			    <div class="fr selected" id="selected">共计：<span id="selectedTotal">0</span>件<span class="arrow up"></span><span class="arrow down"></span></div>
			    <div class="selected-view">
			      <div id="selectedViewList" class="clearfix">
			        <div><img src="images/1.jpg"><span>取消选择</span></div>
			      </div>
			      <span class="arrow"></div>
			  </div>
			</div>
				
		</div>
	</div>
</div>

<!--jquery-->
<script type="text/javascript" src="js/jquery-2.2.3.min.js" language="javascript"></script>
<script src="js/bootstrap.min.js"></script>

</body>
</html>
    