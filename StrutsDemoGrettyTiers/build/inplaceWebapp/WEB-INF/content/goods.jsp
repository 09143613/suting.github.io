<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.sql.*"%>
<%@ page import="java.util.*" %>
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
<link href="style/clothes.css" type="text/css" rel="stylesheet"/>
<link href="style/bootstrap.min.css" type="text/css" rel="stylesheet"/> 
<!--js-->
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<script type="text/javascript" src="js/style.js" language="javascript"></script>

<title>女士服装</title>

</head>

<body>

<!--这里使用栅格化的布局-->
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
							<img id="ewm" src="images/share/Screenshot_2016-05-25-18-37-37_com.tencent.mm.png" />
						</li>
					</ul>
				</li>
				<li class="dropdown"><a href="updateForm">我的账户<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">个人信息</a></li>
						<li><a href="#">安全设置</a></li>
						<li><a href="#">我的订单</a></li>
					</ul>
				</li>
				<li class="dropdown"><a href="#"><span class="glyphicon glyphicon-heart"></span>&nbsp;收藏</a>
					
				</li>
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

<!--Top-->
<div id="backup"><a href="#top">↑</a></div>
<div class="container">
	<div class="row">
		<div class="col-lg-11"></div>
		<div class="col-lg-1">
			<form method="post" action="cart">
				<button type="submit" class="btn btn-danger">我的购物车</button>
				
			</form>
		</div>
	</div>
</div>
<div class="container">
	<div class="row">
		
			<!-- 选项卡组件（菜单项nav-tabs）-->
			<ul id="myTab" class="nav nav-tabs" role="tablist">
				<li class="active"><a href="goods">全部女装</a></li>
				<li><a href="#rule" role="tab" data-toggle="tab">夏季连衣裙</a></li>
				<li><a href="#forum" role="tab" data-toggle="tab">女士上衣</a></li>
				<li><a href="#security" role="tab" data-toggle="tab">短裤</a></li>
				<li><a href="#welfare" role="tab" data-toggle="tab">服饰配件</a></li>
			</ul>	
			<!-- 选项卡面板 -->
			<div id="myTabContent" class="tab-content">
				<div class="tab-pane active" id="bulletin">

					<!--连衣裙-->
					<div class="row">
						<s:iterator id="g" value="#request.showG">
							<div class="fenlei">
								<a href="#" class="thumbnail">
									<img src="<s:property value="#g.photo"></s:property>" class="p-img">
								</a>
								<div class="name"><s:property value="#g.name"></s:property></div>
								<div class="price">
									<form method="post" action="addCart">
										￥<s:property value="#g.price"></s:property>
										<input type="hidden" name="name" value="<s:property value="#g.name"></s:property>" />
		      							<input type="hidden" name="price" value="<s:property value="#g.price"></s:property>" />
		      							<input type="hidden" name="photo" value="<s:property value="#g.photo"></s:property>" />
		      							<input type="hidden" name="id" value="<s:property value="#g.id"></s:property>" />
		      							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		      							<button name="item" type="submit" class="btn btn-default">加入购物车</button>
		      						</form>
								</div>
							</div>
						</s:iterator>
					</div>
					<!--女式上衣-->
					<div class="row">
						<div class="fenlei">
							<a href="#" class="thumbnail">
								<img src="images/clothes/6.jpg" class="p-img">
							</a>
							<div class="name">简约纯色T恤</div>
							<div class="price">￥99&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>8.0折</span></div>
						</div>
						<div class="fenlei">
							<a href="#" class="thumbnail">
								<img src="images/clothes/7.jpg" class="p-img">
							</a>
							<div class="name">小清新自行车图案T恤</div>
							<div class="price">￥59&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>3.5折</span></div>
						</div>
						<div class="fenlei">
							<a href="#" class="thumbnail">
								<img src="images/clothes/8.jpg" class="p-img">
							</a>
							<div class="name">可爱条纹T恤</div>
							<div class="price">￥59&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>3.5折</span></div>
						</div>
						<div class="fenlei">
							<a href="#" class="thumbnail">
								<img src="images/clothes/9.jpg" class="p-img">
							</a>
							<div class="name">短款牛仔衬衫</div>
							<div class="price">￥109&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>7.0折</span></div>
						</div>
						<div class="fenlei">
							<a href="#" class="thumbnail">
								<img src="images/clothes/10.jpg" class="p-img">
							</a>
							<div class="name">喇叭袖印花蕾丝衫</div>
							<div class="price">￥89&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>4.5折</span></div>
						</div>
					</div>
					<!--短裤-->
					<div class="row">
						<div class="fenlei">
							<a href="#" class="thumbnail">
								<img src="images/clothes/11.jpg" class="p-img">
							</a>
							<div class="name">破洞牛仔背带裤</div>
							<div class="price">￥199&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>5.0折</span></div>
						</div>
						<div class="fenlei">
							<a href="#" class="thumbnail">
								<img src="images/clothes/12.jpg" class="p-img">
							</a>
							<div class="name">单排扣牛仔短裙</div>
							<div class="price">￥69&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>3.5折</span></div>
						</div>
						<div class="fenlei">
							<a href="#" class="thumbnail">
								<img src="images/clothes/13.jpg" class="p-img">
							</a>
							<div class="name">印花牛仔短裤</div>
							<div class="price">￥119&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>7.0折</span></div>
						</div>
						<div class="fenlei">
							<a href="#" class="thumbnail">
								<img src="images/clothes/14.jpg" class="p-img">
							</a>
							<div class="name">破洞牛仔高腰短裤</div>
							<div class="price">￥99&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>6.5折</span></div>
						</div>
						<div class="fenlei">
							<a href="#" class="thumbnail">
								<img src="images/clothes/15.jpg" class="p-img">
							</a>
							<div class="name">复古高腰牛仔短裤</div>
							<div class="price">￥89&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>7.5折</span></div>
						</div>
					</div>
					<!--服饰配件-->
					<div class="row">
						<div class="fenlei">
							<a href="#" class="thumbnail">
								<img src="images/clothes/16.jpg" class="p-img">
							</a>
							<div class="name">复古文艺漆皮蝴蝶结腰带</div>
							<div class="price">￥199&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>8.5折</span></div>
						</div>
						<div class="fenlei">
							<a href="#" class="thumbnail">
								<img src="images/clothes/17.jpg" class="p-img">
							</a>
							<div class="name">韩版女式优雅草帽</div>
							<div class="price">￥259&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>7.0折</span></div>
						</div>
						<div class="fenlei">
							<a href="#" class="thumbnail">
								<img src="images/clothes/18.jpg" class="p-img">
							</a>
							<div class="name">蓝底波点丝带</div>
							<div class="price">￥389&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>8.0折</span></div>
						</div>
						<div class="fenlei">
							<a href="#" class="thumbnail">
								<img src="images/clothes/19.jpg" class="p-img">
							</a>
							<div class="name">编织流苏项链</div>
							<div class="price">￥79&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>6.5折</span></div>
						</div>
						<div class="fenlei">
							<a href="#" class="thumbnail">
								<img src="images/clothes/20.jpg" class="p-img">
							</a>
							<div class="name">清新女孩夏季遮阳帽</div>
							<div class="price">￥99&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>4.5折</span></div>
						</div>
					</div>
					
					
				</div>
				<div class="tab-pane" id="rule">
					<!--连衣裙-->
					<div class="row">
						<div class="fenlei">
							<a href="#" class="thumbnail">
								<img src="images/clothes/1.jpg" class="p-img">
							</a>
							<div class="name">半高领蕾丝连衣裙</div>
							<div class="price">￥199&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>7.0折</span></div>
						</div>
						<div class="fenlei">
							<a href="#" class="thumbnail">
								<img src="images/clothes/2.jpg" class="p-img">
							</a>
							<div class="name">印花连衣裙</div>
							<div class="price">￥199&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>6.0折</span></div>
						</div>
						<div class="fenlei">
							<a href="#" class="thumbnail">
								<img src="images/clothes/3.jpg" class="p-img">
							</a>
							<div class="name">条纹短袖拼接连衣裙</div>
							<div class="price">￥229&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>5.5折</span></div>
						</div>
						<div class="fenlei">
							<a href="#" class="thumbnail">
								<img src="images/clothes/4.jpg" class="p-img">
							</a>
							<div class="name">竖条纹系带无袖连衣裙</div>
							<div class="price">￥199&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>4.0折</span></div>
						</div>
						<div class="fenlei">
							<a href="#" class="thumbnail">
								<img src="images/clothes/5.jpg" class="p-img">
							</a>
							<div class="name">无袖水手式连衣裙</div>
							<div class="price">￥199&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>6.9折</span></div>
						</div>
					</div>
				</div>
				<div class="tab-pane" id="forum">
					<!--女式上衣-->
					<div class="row">
						<div class="fenlei">
							<a href="#" class="thumbnail">
								<img src="images/clothes/6.jpg" class="p-img">
							</a>
							<div class="name">简约纯色T恤</div>
							<div class="price">￥99&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>8.0折</span></div>
						</div>
						<div class="fenlei">
							<a href="#" class="thumbnail">
								<img src="images/clothes/7.jpg" class="p-img">
							</a>
							<div class="name">小清新自行车图案T恤</div>
							<div class="price">￥59&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>3.5折</span></div>
						</div>
						<div class="fenlei">
							<a href="#" class="thumbnail">
								<img src="images/clothes/8.jpg" class="p-img">
							</a>
							<div class="name">可爱条纹T恤</div>
							<div class="price">￥59&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>3.5折</span></div>
						</div>
						<div class="fenlei">
							<a href="#" class="thumbnail">
								<img src="images/clothes/9.jpg" class="p-img">
							</a>
							<div class="name">短款牛仔衬衫</div>
							<div class="price">￥109&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>7.0折</span></div>
						</div>
						<div class="fenlei">
							<a href="#" class="thumbnail">
								<img src="images/clothes/10.jpg" class="p-img">
							</a>
							<div class="name">喇叭袖印花蕾丝衫</div>
							<div class="price">￥89&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>4.5折</span></div>
						</div>
					</div>
				</div>
				<div class="tab-pane" id="security">
					<!--短裤-->
					<div class="row">
						<div class="fenlei">
							<a href="#" class="thumbnail">
								<img src="images/clothes/11.jpg" class="p-img">
							</a>
							<div class="name">破洞牛仔背带裤</div>
							<div class="price">￥199&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>5.0折</span></div>
						</div>
						<div class="fenlei">
							<a href="#" class="thumbnail">
								<img src="images/clothes/12.jpg" class="p-img">
							</a>
							<div class="name">单排扣牛仔短裙</div>
							<div class="price">￥69&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>3.5折</span></div>
						</div>
						<div class="fenlei">
							<a href="#" class="thumbnail">
								<img src="images/clothes/13.jpg" class="p-img">
							</a>
							<div class="name">印花牛仔短裤</div>
							<div class="price">￥119&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>7.0折</span></div>
						</div>
						<div class="fenlei">
							<a href="#" class="thumbnail">
								<img src="images/clothes/14.jpg" class="p-img">
							</a>
							<div class="name">破洞牛仔高腰短裤</div>
							<div class="price">￥99&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>6.5折</span></div>
						</div>
						<div class="fenlei">
							<a href="#" class="thumbnail">
								<img src="images/clothes/15.jpg" class="p-img">
							</a>
							<div class="name">复古高腰牛仔短裤</div>
							<div class="price">￥89&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>7.5折</span></div>
						</div>
					</div>
				</div>
				<div class="tab-pane" id="welfare">
					<!--服饰配件-->
					<div class="row">
						<div class="fenlei">
							<a href="#" class="thumbnail">
								<img src="images/clothes/16.jpg" class="p-img">
							</a>
							<div class="name">复古文艺漆皮蝴蝶结腰带</div>
							<div class="price">￥199&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>8.5折</span></div>
						</div>
						<div class="fenlei">
							<a href="#" class="thumbnail">
								<img src="images/clothes/17.jpg" class="p-img">
							</a>
							<div class="name">韩版女式优雅草帽</div>
							<div class="price">￥259&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>7.0折</span></div>
						</div>
						<div class="fenlei">
							<a href="#" class="thumbnail">
								<img src="images/clothes/18.jpg" class="p-img">
							</a>
							<div class="name">蓝底波点丝带</div>
							<div class="price">￥389&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>8.0折</span></div>
						</div>
						<div class="fenlei">
							<a href="#" class="thumbnail">
								<img src="images/clothes/19.jpg" class="p-img">
							</a>
							<div class="name">编织流苏项链</div>
							<div class="price">￥79&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>6.5折</span></div>
						</div>
						<div class="fenlei">
							<a href="#" class="thumbnail">
								<img src="images/clothes/20.jpg" class="p-img">
							</a>
							<div class="name">清新女孩夏季遮阳帽</div>
							<div class="price">￥99&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>4.5折</span></div>
						</div>
					</div>
				</div>
			</div>
	</div>
</div>


<!--猜你喜欢-->
<div class="container" id="cnxh">
	<div class="row">
		<!-- 选项卡组件（菜单项nav-tabs）-->
		<ul id="cnxhul" class="nav nav-tabs" role="tablist">
			<li class="active"><a href="#cnxh1" role="tab" data-toggle="tab">猜你喜欢</a></li>
			<li class="pull-right"><a href="#cnxh2" role="tab" data-toggle="tab">换一批<span class="glyphicon glyphicon-refesh"></span></a></li>
		</ul>
		<!-- 选项卡面板 -->
			<div class="tab-content">
				<div class="tab-pane active" id="cnxh1">
					<div class="cnxh">
						<a href="#" class="thumbnail">
							<img src="images/clothes/21.jpg" class="p-img">
						</a>
						<div class="name">纯白圆顶小礼帽</div>
					</div>
					<div class="cnxh">
						<a href="#" class="thumbnail">
							<img src="images/clothes/22.jpg" class="p-img">
						</a>
						<div class="name">粉色小短裙</div>
					</div>
					<div class="cnxh">
						<a href="#" class="thumbnail">
							<img src="images/clothes/23.jpg" class="p-img">
						</a><div class="name">字母T恤</div>
					</div>
					<div class="cnxh">
						<a href="#" class="thumbnail">
							<img src="images/clothes/24.jpg" class="p-img">
						</a>
						<div class="name">碎花T恤</div>
					</div>
					<div class="cnxh">
						<a href="#" class="thumbnail">
							<img src="images/clothes/25.jpg" class="p-img">
						</a>
						<div class="name">条纹连衣裙</div>
					</div>
					<div class="cnxh">
						<a href="#" class="thumbnail">
							<img src="images/clothes/26.jpg" class="p-img">
						</a>
						<div class="name">蓝色之恋连衣裙</div>
					</div>
					<div class="cnxh">
						<a href="#" class="thumbnail">
							<img src="images/clothes/27.jpg" class="p-img">
						</a>
						<div class="name">纯白圆顶小礼帽</div>
					</div>
				</div>
				<div class="tab-pane" id="cnxh2">
					<div class="cnxh">
						<a href="#" class="thumbnail">
							<img src="images/clothes/28.jpg" class="p-img">
						</a>
						<div class="name">粉色厚底休闲凉鞋</div>
					</div>
					<div class="cnxh">
						<a href="#" class="thumbnail">
							<img src="images/clothes/29.jpg" class="p-img">
						</a>
						<div class="name">韩版墨绿扣带凉鞋</div>
					</div>
					<div class="cnxh">
						<a href="#" class="thumbnail">
							<img src="images/clothes/30.jpg" class="p-img">
						</a><div class="name">草木之心气垫BB</div>
					</div>
					<div class="cnxh">
						<a href="#" class="thumbnail">
							<img src="images/clothes/31.jpg" class="p-img">
						</a>
						<div class="name">朵拉防晒喷雾</div>
					</div>
					<div class="cnxh">
						<a href="#" class="thumbnail">
							<img src="images/clothes/32.jpg" class="p-img">
						</a>
						<div class="name">花园宝宝哑光口红</div>
					</div>
					<div class="cnxh">
						<a href="#" class="thumbnail">
							<img src="images/clothes/33.jpg" class="p-img">
						</a>
						<div class="name">纯情梦巴黎香氛</div>
					</div>
					<div class="cnxh">
						<a href="#" class="thumbnail">
							<img src="images/clothes/35.jpg" class="p-img">
						</a>
						<div class="name">男宝宝夏季背带套装</div>
					</div>
				</div>
			</div>
	</div>
</div>
<!--底部元素！-->
<div id="bottom">
	<div class="container">
		<div class="row">
			<div class="col-lg-4">
				<p class="lead">totoro's house(龙猫的小屋)</p>
				<p>本网站郑重承诺：</p>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;1.绝不欺骗消费者；</p>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;2.一定给消费者最优质的服务。</p>
			</div>
			<div class="col-lg-2">
				<ul>
					<li id="li-bt">售后服务</li>
					<li><a href="return-service.html">退/换货服务</a></li>
					<li><a href="service.html">服务条款</a></li>
				</ul>
			</div>
			<div class="col-lg-2">
				<ul>
					<li id="li-bt">购物流程</li>
					<li><a href="shoppingProcess.html">购物指南</a></li>
					<li><a href="customer-service.html">联系客服</a></li>
				</ul>
			</div>
			<div class="col-lg-2">
				<ul>
					<li id="li-bt">支付配送</li>
					<li><a href="pay.html">支付方式</a></li>
					<li><a href="diliver.html">配送方式</a></li>
				</ul>
			</div>
			<div class="col-lg-2">
				<ul>
					<li id="li-bt">关于我们</li>
					<li><a href="about.html">关于我们</a></li>
				</ul>
			</div>
		</div>
		<!--分界线-->
		<div class="row">
			<div class="col-lg-5"></div>
			<div class="col-lg-4">
				<p>Copyright ©2016  版权所有</p> 
			</div>
			<div class="col-lg-3"></div>
		</div>
	</div>
</div>
<!--jquery-->
<script type="text/javascript" src="js/jquery-2.2.3.min.js" language="javascript"></script>
<!--jQuery的外部引用文件-->
<script src="js/jquery.js" ></script>

<script src="js/bootstrap.min.js"></script>
	
</body>
</html>
