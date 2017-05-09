<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="cn.edu.cumt.ec.dao.BuyList" %>
<%@page import="java.util.*"%>
<%@taglib prefix="s" uri="/struts-tags"%>
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
<link href="style/score.css" type="text/css" rel="stylesheet"/> 
<link href="style/bootstrap.min.css" type="text/css" rel="stylesheet"/> 
<!--js-->
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<script type="text/javascript">
	alert("收货成功！");
</script>
<script type="text/javascript"> 
window.onload = function (){

	var oStar = document.getElementById("star");
	var aLi = oStar.getElementsByTagName("li");
	var oUl = oStar.getElementsByTagName("ul")[0];
	var oSpan = oStar.getElementsByTagName("span")[1];
	var oP = oStar.getElementsByTagName("p")[0];
	var i = iScore = iStar = 0;
	var aMsg = [
				"很不满意|差得太离谱，与卖家描述的严重不符，非常不满",
				"不满意|部分有破损，与卖家描述的不符，不满意",
				"一般|质量一般，没有卖家描述的那么好",
				"满意|质量不错，与卖家描述的基本一致，还是挺满意的",
				"非常满意|质量非常好，与卖家描述的完全一致，非常满意"
				]
	
	for (i = 1; i <= aLi.length; i++){
		aLi[i - 1].index = i;
		
		//鼠标移过显示分数
		aLi[i - 1].onmouseover = function (){
			fnPoint(this.index);
			//浮动层显示
			oP.style.display = "block";
			//计算浮动层位置
			oP.style.left = oUl.offsetLeft + this.index * this.offsetWidth - 104 + "px";
			//匹配浮动层文字内容
			oP.innerHTML = "<em><b>" + this.index + "</b> 分 " + aMsg[this.index - 1].match(/(.+)\|/)[1] + "</em>" + aMsg[this.index - 1].match(/\|(.+)/)[1]
		};
		
		//鼠标离开后恢复上次评分
		aLi[i - 1].onmouseout = function (){
			fnPoint();
			//关闭浮动层
			oP.style.display = "none"
		};
		
		//点击后进行评分处理
		aLi[i - 1].onclick = function (){
			iStar = this.index;
			oP.style.display = "none";
			oSpan.innerHTML = "<strong>" + (this.index) + " 分</strong> (" + aMsg[this.index - 1].match(/\|(.+)/)[1] + ")";
			
		}
		$("#score").attr("value",iStar);
	}
	
	//评分处理
	function fnPoint(iArg){
		//分数赋值
		iScore = iArg || iStar;
		for (i = 0; i < aLi.length; i++) aLi[i].className = i < iScore ? "on" : "";	
	}
	
};
</script>
<title>订单评价</title>
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
				<li class="dropdown"><a href="updateForm">我的账户<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">个人信息</a></li>
						<li><a href="#">安全设置</a></li>
						<li><a href="#">我的订单</a></li>
					</ul>
				</li>
				<li class="dropdown"><a href="#"><span class="glyphicon glyphicon-heart"></span>&nbsp;收藏</a>
					
				</li>
				<li ><a href="cart?username=${param.username}">购物车</a></li>
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
<input type="hidden" value="1"  id="socre" name="socre"/>
<div class="conteiner">
	<div class="row">
		<div class="col-lg-2"></div>
		<div class="col-lg-4">
			<img src="" />
		</div>		
		<div class="col-lg-4">
			<table>
				<tr>
					<td>商品名称</td>
					<td>商品图片</td>
				</tr>
				<s:iterator id="confirm" value="#request.confirm">
				<tr>
					<td><s:property value="#confirm.name"></s:property></td>
					<td><img style="width:50px;height:80px;" src="<s:property value="#confirm.photo"></s:property>" alt="img"/></td>
				</tr>
				</s:iterator>
			</table>
			
		</div>
	</div>
</div>
<hr />
<div class="conteiner">
	<div class="row">
		<div class="col-lg-3"></div>
		<div class="col-lg-4">
			<div class="panel panel-danger" >
			
			<div class="panel-heading" >
				<strong>
					商品评价
				</strong>
			</div>
			<div class="panel-body">
				<s:form action="submitMessage" enctype="multipart/form-data" >
					<input type="hidden" name="name" value="<s:property value="#confirm.name"></s:property>" />
					<p style="color:#0000FF;font-size:18px;"><input type="radio" name="pj" value="good"/>好评
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" name="pj" value="bad"/>差评
					</p>
					<% String pj = request.getParameter("pj"); %>
					<p>
						商品评价：
						<div id="star">
							<ul>
								<li><a href="javascript:;">1</a></li>
								<li><a href="javascript:;">2</a></li>
								<li><a href="javascript:;">3</a></li>
								<li><a href="javascript:;">4</a></li>
								<li><a href="javascript:;">5</a></li>
							</ul>
							<span></span>
							<p></p>
						</div>
					</p>
					<!--<p>
						物流描述：
						<div id="star">
							<ul>
								<li><a href="javascript:;">1</a></li>
								<li><a href="javascript:;">2</a></li>
								<li><a href="javascript:;">3</a></li>
								<li><a href="javascript:;">4</a></li>
								<li><a href="javascript:;">5</a></li>
							</ul>
							<span></span>
							<p></p>
						</div>
					</p>
					<p>
						售后服务：
						<div id="star">
							<span>js星级评论打分</span>
							<ul>
								<li><a href="javascript:;">1</a></li>
								<li><a href="javascript:;">2</a></li>
								<li><a href="javascript:;">3</a></li>
								<li><a href="javascript:;">4</a></li>
								<li><a href="javascript:;">5</a></li>
							</ul>
							<span></span>
							<p></p>
						</div>
					</p>-->
					<div class="form-group">
						<label for="username">请输入用户名：</label><input type="text" placehodle="用户名" id="username" name="username"/>
					</div>
					<div class="form-group">
						<!-- 文本域 -->
						<textarea class="form-control" rows="4" cols="100" name="message" placeholder="请写下您对商品的评价"></textarea>
						<% String message = request.getParameter("message"); %>
					</div>
					<div class="form-group">
						<label for="username">上传商品图片：</label>
						<s:file name="uploadPhoto" />
					</div>
					<div class="form-group">
						<s:submit value="提交"/>
					</div>	
				</s:form>
			</div>
		</div>
	</div>
</div>
<!--jquery-->
<script type="text/javascript" src="js/jquery-2.2.3.min.js" language="javascript"></script>
<script src="js/bootstrap.min.js"></script>	

</body>
</html>