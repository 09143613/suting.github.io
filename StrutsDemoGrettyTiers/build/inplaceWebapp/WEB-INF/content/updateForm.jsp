<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
<link href="style/password.css" type="text/css" rel="stylesheet"/>
<link href="style/bootstrap.min.css" type="text/css" rel="stylesheet"/> 
<!--js-->
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<script type="text/javascript" src="js/style.js" language="javascript"></script>

<title>个人账户</title>

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
				<li class="active"><a href="index"><span class="glyphicon glyphicon-home"></span>首页</a></li>
				<li><a href="">欢迎您！<%=request.getParameter("username") %></a></li>
				<li><a href="#">我的账户</a></li>
				<li class="dropdown"><a href="#">账户设置<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">个人信息</a></li>
						<li><a href="#">安全设置</a></li>
					</ul>
				</li>
				<li ><a href="cart?username=${param.username}">购物车</a></li>
				<li class="dropdown"><a href="#">消息</a></li>
			</ul>
		</div>
	</div>
</div>

<div class="container">
	<div class="row">
		<div class="col-lg-2"></div>
		<div class="col-lg-2">
			<img id="logo" class="img-responsive " src="images/index/logo.jpg" alt="logo" />
		</div>
		
		<div class="col-lg-4">
			<input type="text" id="search-txt"  class="form-control" size="10" width="20px" placeholder="请输入要搜索的商品名称"/>
			<p></p>
			<span><font color="red">热门商品</font></span>
			<span>&nbsp;&nbsp;</span>
			<span><a href="#">&nbsp;夏季连衣裙</a></span>
			<span><a href="#">&nbsp;女士凉鞋</a></span>
			<span><a href="#">&nbsp;唇妆</a></span>
			<span><a href="#">&nbsp;纸尿裤</a></span>
			<span><a href="#">&nbsp;当季水果</a></span>
		</div>
		
		<div class="col-lg-1" >
				<button id="search-btn" type="button" class="btn btn-success btn-block" >搜索</button>
		</div>
		
	</div>
</div>
<hr />

<!--主要内容-->
<div class="container" id="zhuti">
	<div class="row">
		<div class="col-lg-2">
			<div class="panel panel-default">
				
			<!-- 选项卡组件（菜单项nav-tabs）-->
			<ul id="left" class="nav" role="tablist">
				<li>
					<img class="img-responsive img-rounded" src="images/index/wx.png" id="toux" /><br />
					<p></p>
				</li>
				<li class="active"><a href="#order" role="tab" data-toggle="tab">
					订单中心
				</a></li>
				<li><a href="#safe" role="tab" data-toggle="tab">
					安全设置
				</a></li>
				<li><a href="#information" role="tab" data-toggle="tab">
					个人信息
				</a></li>
				<li><a href="#address-setting" role="tab" data-toggle="tab">
					地址管理
				</a></li>
				<li><a href="#weiquan" role="tab" data-toggle="tab">
					维权管理
				</a></li>
			</ul>
			</div>
		</div>
		<div class="col-lg-7">
			<!-- 选项卡面板 -->
			<div id="right" class="tab-content">
				<div class="tab-pane active" id="order">
					<div class="panel-group">
						<!--我的订单-->
						<div class="panel panel-success">
							<div class="panel-heading">
								<h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">我的订单</a></h4>
							</div>
							<div id="one" class="panel-collapse collapse in">
								<div class="panel-body">
									<form method="post" action="seeOrder">
										<button type="submit" >查看我的订单</button>
									</form>
								</div>
							</div>
						</div>
						<!--订单评价-->
						<div class="panel panel-success">
							<div class="panel-heading">
								<h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">订单评价</a></h4>
							</div>
							<div id="one" class="panel-collapse collapse in">
								<div class="panel-body">
									<a href="messageForm">订单评价</a>
									<form method="post" action="myMessage">
										<button class="btn" type="submit">我的评价</button>
									</form>
								</div>
							</div>
						</div>
						<!--退换货-->
						<div class="panel panel-success">
							<div class="panel-heading">
								<h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">退/换货</a></h4>
							</div>
							<div id="one" class="panel-collapse collapse in">
								<div class="panel-body">
									退/换货
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="tab-pane" id="safe">
					<div class="panel-group">
						<!--修改登录名-->
						<div class="panel panel-success">
							<div class="panel-heading">
								<h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">用户名</a></h4>
							</div>
							<div id="collapseOne" class="panel-collapse collapse in">
								<div class="panel-body">
									<form action="findPsd.action" class="form-horizontal" method="post">
										<div class="form-group">
											<label for="username">用户名：</label>
											<input type="text" name="username" id="username"/>
										</div>
										<div class="form-group">
											<label for="userphone">手机：</label>
											<input type="text" name="userphone" id="userphone"/>
										</div>
										
										<div class="form-group">
											<button type="submit" class="btn btn-info">确定修改</button>
											<button type="reset" class="btn btn-info">取消修改</button>
										</div>
									</form>
								</div>
							</div>
						</div>
						<!--修改密码-->
						<div class="panel panel-success">
							<div class="panel-heading">
								<h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">修改登录密码</a></h4>
							</div>
							<div id="collapseTwo" class="panel-collapse collapse">
								<div class="panel-body">
									<form enctype="multipart/form-data" class="form-horizontal" method="post">
										<div class="form-group">
											<label for="username">用户名：</label>
											<input type="text" id="username" name="username"/>
										</div>
										<div class="form-group">
											<label for="oldPsd">旧密码：</label>
											<input type="password" id="oldPsd" name="userpsd"/>
										</div>
										<div class="form-group">
											<label for="newPsd">新密码：</label>
											<input type="password" id="newPsd" name="newUserpsd"/>
										</div>
										<div class="form-group">
											<button type="submit" class="btn btn-info" onclick="this.form.action='update';">确定修改</button>
											<button type="reset" class="btn btn-info">取消修改</button>
										</div>
									</form>
								</div>
							</div>
						</div>
						<!--绑定手机-->
						<div class="panel panel-success">
							<div class="panel-heading">
								<h4 class="panel-title"><a data-toggle="collapse"data-parent="#accordion"href="#collapseThree">绑定手机</a></h4>
							</div>
							<div id="collapseThree" class="panel-collapse collapse">
								<div class="panel-body">
									<div class="panel-body">
									<form enctype="multipart/form-data" class="form-horizontal">
										<div class="form-group">
											<label for="phonenumber">手机号</label>
											<input type="text" id="phonenumber" />
										</div>
										<div class="form-group">
											<button type="submit" class="btn btn-info" onclick="this.form.action='update';">确定修改</button>
											<button type="reset" class="btn btn-info">取消修改</button>
										</div>
									</form>
								</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="tab-pane" id="information">
				
				</div>
				<div class="tab-pane" id="address-setting">
				
				</div>
				<div class="tab-pane" id="weiquan">
				
				</div>
			</div>
		</div>
		<div class="col-lg-3">
			<div class="panel panel-default">
				<div class="panel-heading">
					大家喜欢
				</div>
				<div class="panel-body">
					<a href=""><img class="img-responsive" id="leisi"  src="images/makeup/meiji1/leisi1.jpg"/></a><br />
					<p>美即面膜，宠爱自己</p>
					<p>￥99.9</p>
					<a href=""><img class="img-responsive" id="leisi"  src="images/makeup/meiji1/leisi3.jpg"  /></a><br />
					<p>美即组合套装</p>
					<p>￥309.9</p>
					<a href=""><img class="img-responsive" id="leisi"  src="images/makeup/meiji1/leisi4.jpg"  /></a><br />
					<p>美即牛奶嫩肤</p>
					<p>￥99.9</p>
				</div>
			</div>
		</div>
	</div>
</div>
<!--底部元素！！！-->
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

<script src="js/bootstrap.min.js"></script>
	
</body>
</html>
