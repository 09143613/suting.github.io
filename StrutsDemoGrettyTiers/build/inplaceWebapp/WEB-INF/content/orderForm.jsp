<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!--设置ie的兼容性-->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!--缩放-->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 引入ystep样式 -->
<link rel="stylesheet" href="style/ystep.css" type="text/css" />
<!--css外部链接-->
<link href="style/reset.css" type="text/css" rel="stylesheet"/>
<link href="style/submitOrder.css" type="style/text/css" rel="stylesheet"/>
<link href="style/bootstrap.min.css" type="text/css" rel="stylesheet"/> 

<!--js-->
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<script language="javascript">
function checkEmpty(Form){
	for(i=0;i<Form.length;i++){
		if(Form.elements[i].value==""){
			alert("订单不能为空！")
			return false;
		}
	}
}
</script>
<title>订单提交页面</title>

</head>

<body>
<div class="container">
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
				<li class="active"><a href="##"><span class="glyphicon glyphicon-home"></span>首页</a></li>
				<% String username=request.getParameter("username");%>
				<li><a href="#">欢迎您！<%=username %></a></li>
				<li class="dropdown"><a href="#">手机版<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li>
							<img src="#" />
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
				<li class="dropdown"><a href="#">收藏<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">收藏的商品</a></li>
						<li><a href="#">收藏的店铺</a></li>
					</ul>
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

<!--logo-->
<div class="row" id="logo">
	<div class="col-lg-1"></div>
	<div class="col-lg-2">
		<div id="sbm_ord_logo">
			<img src="images/index/logo.jpg" alt="logo" class="img-responsive"/>
		</div>
	</div>
	<div class="col-lg-3">
		<h4>请正确填写您的订单信息!</h4>
	</div>
	<!--进度条-->
	<div class="col-lg-4" id="jdt">
		<div class="ystep2"></div>
	</div>

</div>



<!--订单提交页面分界线-->
<hr size="2px" color="#0066ff"/>


<!--收货信息-->
<div class="row">
	<div class="col-lg-2"></div>
	<div class="col-lg-7">
	
		<div class="panel panel-danger" >
			
			<div class="panel-heading" >
				<strong>
					我的订单
				</strong>
			</div>
			<%
				int r1=(int)(Math.random()*(10));//产生2个0-9的随机数
				int r2=(int)(Math.random()*(10));
				long now = System.currentTimeMillis();//一个13位的时间戳
				String orderNumber =String.valueOf(r1)+String.valueOf(r2)+String.valueOf(now);// 订单ID 
				//获取总价
				/* String totalPrice = request.getParameter("priceTotal");  */
			%>
			
			<div class="panel-body">
				<form  id="form1" name="Form"  method="post" action="submitOrder">
					
					<div class="form-group">
						<label id="orderNumber" name="orderNumber">订单编号：<%=orderNumber %></label>
						<input name="orderNumber" type="hidden"  value="<%=orderNumber%>">
						<!-- <input type="" name="orderNumber" /> -->
					</div>
					<div class="form-group">
						<label for="username">用户名：</label>
						<input type="text" id="username" name="username"/>
					</div>
					<div class="form-group">
						<label for="customer-name">收货人姓名：</label>
						<input type="text" id="customer-name" name="customerName"/>
					</div>
					<div class="form-group">
						<label for="youzh" >邮政编码:</label>
						<input type="text" size="25" id="youzh" name="post" />
					</div>
					<div class="form-group">
						<label for="phone-num" >手机：</label>
						<input type="text" id="phone-num" name="tel"/>
					</div>
					<div class="form-group">
						<label for="address">收货地址：</label>
						<input type="text" maxsize="50" id="address" name="address"/>
					</div>
					<div class="form-group">
						<button type="reset" name="Submit" class="btn btn-default">重置</button>
						<button type="button" name="Submit" onClick="javascript:history.back();" class="btn btn-default">返回购物车</button>
							<s:iterator value="#request.cart" id="cart">
				       			<input type="hidden" name="name" value="<s:property value="#cart.name"></s:property>" />
				      			<input type="hidden" name="price" value="<s:property value="#cart.price"></s:property>" />
								<input type="hidden" name="photo" value="<s:property value="#cart.photo"></s:property>" />
								<input type="hidden" name="id" value="<s:property value="#cart.id"></s:property>" />
				    		</s:iterator> 
    						<button type="submit" name="Submit2" class="btn btn-danger">提交订单</button>
    					</div>
    				
				</form>	
			</div>
		</div>
	</div>
</div>

			   
			    
			    
			   
			 


</div>
<!--底部元素-->
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
			<div class="col-lg-3">
			</div>
		</div>
	</div>
</div>

<!--jquery-->
<script type="text/javascript" src="js/jquery-2.2.3.min.js" language="javascript"></script>
<script src="js/bootstrap.min.js"></script>
	
</body>
</html>