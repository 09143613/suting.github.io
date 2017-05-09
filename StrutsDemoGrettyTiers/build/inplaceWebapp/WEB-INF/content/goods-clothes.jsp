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
<link href="style/goods.css" type="text/css" rel="stylesheet"/>
<link href="style/bootstrap.min.css" type="text/css" rel="stylesheet"/> 
<!--js-->
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<script type="text/javascript" src="" language="javascript"></script>
<title>商品页面模板</title>

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
				<li class="active"><a href="##"><span class="glyphicon glyphicon-home"></span>首页</a></li>
				<li><a href="#">[登录]</a></li>
				<li><a href="#">[免费注册]</a></li>
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

<!--水平线-->
<hr />

<div id="backup"><a href="#top">↑</a></div>

<div class="container">
	<div class="row">
		<!--商品图片-->
		<div class="col-lg-4">
			
			<!-- 选项卡面板 -->
			<div id="myTabContent" class="tab-content">
				<div class="tab-pane active" id="bulletin"><img id="big-img1" class="img-responsive" alt="big-img" src="images/clothes/qunzi1/big1.png"/></div>
				<div class="tab-pane" id="rule"><img id="big-img1" class="img-responsive" alt="big-img" src="images/clothes/qunzi1/big2.png"/></div>
				<div class="tab-pane" id="forum"><img id="big-img1" class="img-responsive" alt="big-img" src="images/clothes/qunzi1/big3.png"/></div>
				<div class="tab-pane" id="security"><img id="big-img1" class="img-responsive" alt="big-img" src="images/clothes/qunzi1/big4.png"/></div>
				<div class="tab-pane" id="welfare"><img id="big-img1" class="img-responsive" alt="big-img" src="images/clothes/qunzi1/big5.png"/></div>
			</div>
			<!-- 选项卡组件（菜单项nav-tabs）-->
			<ul id="myTab" class="nav nav-tabs" role="tablist">
				<li class="active"><a href="#bulletin" role="tab" data-toggle="tab"><img id="sm-img" class="img-responsive" alt="big-img" src="images/clothes/qunzi1/sm1.jpg"/></a></li>
				<li><a href="#rule" role="tab" data-toggle="tab"><img id="sm-img" class="img-responsive" alt="big-img" src="images/clothes/qunzi1/sm2.jpg"/></a></li>
				<li><a href="#forum" role="tab" data-toggle="tab"><img id="sm-img" class="img-responsive" alt="big-img" src="images/clothes/qunzi1/sm3.jpg"/></a></li>
				<li><a href="#security" role="tab" data-toggle="tab"><img id="sm-img" class="img-responsive" alt="big-img" src="images/clothes/qunzi1/sm4.jpg"/></a></li>
				<li><a href="#welfare" role="tab" data-toggle="tab"><img id="sm-img" class="img-responsive" alt="big-img" src="images/clothes/qunzi1/sm5.jpg"/></a></li>
			</ul>
			
		</div>
		<div class="col-lg-6">
			<h3 id="biaoti">印花连衣裙</h3>
			<table class="table table-responsive">
				<tr>
					<td>原价：</td>
					<td id="yuanjia">￥332</td>
				</tr>
				<tr>
					<td>现价：</td>
					<td id="xianjia">￥199</td>
					<td>邮费：</td>
					<td>全国包邮</td>
				</tr>
				<tr>
					<td>客服：</td>
					<td id="kefu"><a href=""><img src="images/index/qq.png" alt="客服" /></a>QQ客服</td>
					<td id="kefu"><a href=""><img src="images/index/wx.png" alt="客服" /></a>微信客服</td>
				</tr>
				<tr class="ks" data-sid="1">
					<td id="tt">款式：</td>
					<td>
						<ul class="sys_spec_img">
							<li data-aid="3"><a href="javascript:;" title="蓝色"><img src="images/clothes/qunzi1/sm3.jpg" alt="白色" /></a><i></i></li>
							<li data-aid="4"><a href="javascript:;" title="白色"><img src="images/clothes/qunzi1/sm5.jpg" alt="粉色" /></a><i></i></li>
						</ul>
				
					</td>
				</tr>
				<tr class="cc" data-sid="2">
					<td id="tt">尺码</td>
					<td>
						<ul class="sys_spec_text">
							<li data-aid="13"><a href="javascript:;" title="S">S</a><i></i></li>
							<li data-aid="14"><a href="javascript:;" title="M">M</a><i></i></li>
							<li data-aid="16"><a href="javascript:;" title="L">L</a><i></i></li>
							<li data-aid="17"><a href="javascript:;" title="XL">XL</a><i></i></li>
						</ul>
					</td>
				</tr>
				<tr>
					<td>数量：</td>
					<td>
						<a id="sub" href="javascript:void(0);">-</a>
							<input type="text" value="1" id="bookNum">
						<a id="add" href="javascript:void(0);">+</a>
					</td>
					<td>
						库存36件
					</td>
					<td>
						限购10件！
					</td>
				</tr>
				<tr>
					<td>收藏：</td>
					<td><span class="glyphicon glyphicon-star-empty" ></span></td>
				</tr>
				
			</table>
			<div class="row">
				<div class="col-lg-2"></div>
				<div class="col-lg-3">
					<button class="btn btn-lg btn-danger">立即购买</button> 
				</div>
				<div class="col-lg-3">
					<button class="btn btn-lg btn-default">加入购物车</button> 
				</div>
			</div>
			<table class="table table-responsive">
				<tr>
					<td>服务承诺:</td>
					<td>退货补运费</td>
					<td>七天无理由退货</td>
					<td>24h发货</td>
					<td>全国包邮</td>
				</tr>
				<tr>
					<td>支付方式:</td>
					<td><img src="images/share/zf.png" class="img-responsive" alt="img" /></td>
				</tr>
				<tr>
					<td>评价：</td>
					<td>3303</td>
				</tr>
				<tr>
					<td>累计销售：</td>
					<td>4523</td>
				</tr>
			</table>
		</div>
		
		<div class="col-lg-2">
			<div class="panel">
				<div class="panel-heading">
					<h4>—热卖商品—</h4>
				</div>
				<div class="panel-body">
					<a href=""><img class="img-responsive" id="remai" src="images/clothes/qunzi1/1.jpg" /></a><br />
					<p>￥99.8</p>
					<a href=""><img class="img-responsive" id="remai" src="images/clothes/qunzi1/2.jpg" /></a><br />
					<p>￥299</p>
				</div>
			</div>
		</div>	
	</div>
	<div class="row">
		<div class="col-lg-3">
			<div class="panel panel-default">
				<div class="panel-heading">
					商品描述
				</div>
				<div class="panel-body">
					<div class="progress progress-striped">
						<div class="progress-bar progress-bar-success" style="width:89%">89%</div>
					</div>
					<div class="progress progress-striped">
						<div class="progress-bar progress-bar-info" style="width:60%">60%</div>
					</div>
					<div class="progress progress-striped">
						<div class="progress-bar progress-bar-warning" style="width:80%">80%</div>
					</div>
					<div class="progress progress-striped">
						<div class="progress-bar progress-bar-danger" style="width:80%">80%</div>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					相同产品
				</div>
				<div class="panel-body">
					<a href=""><img class="img-responsive" id="leisi"  src="images/makeup/meiji1/leisi1.jpg"/></a><br />
					<p>美即面膜，宠爱自己</p>
					<p>￥99.9</p>
					<a href=""><img class="img-responsive" id="leisi"  src="images/makeup/meiji1/leisi2.jpg"  /></a><br />
					<p>美即紧致保湿</p>
					<p>￥89.9</p>
					<a href=""><img class="img-responsive" id="leisi"  src="images/makeup/meiji1/leisi3.jpg"  /></a><br />
					<p>美即组合套装</p>
					<p>￥309.9</p>
					<a href=""><img class="img-responsive" id="leisi"  src="images/makeup/meiji1/leisi4.jpg"  /></a><br />
					<p>美即牛奶嫩肤</p>
					<p>￥99.9</p>
					<a href=""><img class="img-responsive" id="leisi"  src="images/makeup/meiji1/leisi5.jpg"  /></a><br />
					<p>美即水凝美白</p>
					<p>￥88.8</p>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					大家还在看
				</div>
				<div class="panel-body">
					<a href=""><img class="img-responsive" id="leisi"  src="images/makeup/meiji1/dzk1.jpg"/></a><br />
					<p>甜美校园格子裙</p>
					<p>￥56.5</p>
					<a href=""><img class="img-responsive" id="leisi"  src="images/makeup/meiji1/dzk2.jpg"  /></a><br />
					<p>少女系蕾丝上衣</p>
					<p>￥189</p>
					<a href=""><img class="img-responsive" id="leisi"  src="images/makeup/meiji1/dzk3.jpg"  /></a><br />
					<p>粉嫩公主宝宝童鞋</p>
					<p>￥55.9</p>
					<a href=""><img class="img-responsive" id="leisi"  src="images/makeup/meiji1/dzk4.jpg"  /></a><br />
					<p>香辣牛肉干</p>
					<p>￥29.9</p>
					<a href=""><img class="img-responsive" id="leisi"  src="images/makeup/meiji1/dzk5.jpg"  /></a><br />
					<p>经典小皮包</p>
					<p>￥88.8</p>
					<a href=""><img class="img-responsive" id="leisi"  src="images/makeup/meiji1/dzk6.jpg"  /></a><br />
					<p>简约质感小皮包</p>
					<p>￥599.9</p>
				</div>
			</div>
		</div>
		<div class="col-lg-8">
			<div class="panel panel-default">
				<!-- 选项卡组件（菜单项nav-pills）-->
				<ul id="goods" class="nav nav-pills" role="tablist">
					<li class="active"><a href="#spxq" role="tab" data-toggle="pill">商品详情</a></li>
					<li><a href="#pj" role="tab" data-toggle="pill">累计评价</a></li>
					
				</ul>
				<div class="panel-body">
					<!-- 选项卡面板 -->
					<div id="mygoods" class="tab-content">
						<div class="tab-pane fade in active" id="spxq">
							<h4>商品描述</h4>
							<p>小碎花连衣裙，图案清新，领口小三角挖口和系带，细节精致
</p>
							<h4>产品参数</h4>
							<table class="table-bordered table">
								<tr>
									<td>裙型：荷叶边裙</td>
									<td>腰型：松紧腰</td>
									<td>材质：棉</td>
								</tr>
								<tr>
									<td>颜色：天蓝色,白色</td>
									<td>袖长：五分袖（中袖）</td>
									<td>袖型：喇叭袖</td>
								</tr>
								<tr>
									<td>组合形式：单件</td>
									<td>风格：卡哇伊,甜美,小清新</td>
									<td>裙长：短裙（76-90cm）</td>
								</tr>
								<tr>
									<td>衣门襟：套头</td>
									<td>领型：V领</td>
									<td>图案：碎花</td>
								</tr>
								<tr>
									<td>季节：夏季</td>
								</tr>
							</table>
							<h4>穿着效果</h4>
							<img class="img-responsive" alt="img" src="images/clothes/qunzi1/xg1.jpg" />	
							<img class="img-responsive" alt="img" src="images/clothes/qunzi1/xg2.jpg" />	
							
							<h4>商品细节</h4>
							<img class="img-responsive" alt="img" src="images/clothes/qunzi1/xj1.jpg" />	
							<h4>细节做工</h4>
							<img class="img-responsive" alt="img" src="images/clothes/qunzi1/zg1.jpg" />
							<h4>品牌介绍</h4>
							<img class="img-responsive" alt="img" src="images/clothes/qunzi1/ppjs1.jpg" />			
						</div>
						<div class="tab-pane fade" id="pj">
							<h2>买家评价</h2>
								<table class="table-responsive table table-bordered">
									<tr>
										<td width="200px">全部评价</td>
									</tr>
								<s:iterator id="myMessage" value="#request.myMessage">
									<tr>
										<td width="100px" height="30px" id="uname">
											<s:property value="#myMessage.name"></s:property>
										</td>
									</tr>
									<tr>
										<td><s:property value="#myMessage.pj"></s:property></td>
										<td id="pjsp"><s:property value="#myMessage.message"></s:property></td>
										<td id="pj-img">
											<img id="pjimg" src="<s:property value="#myMessage.photo"></s:property>" alt="img" class="img-responsive" />
											<input type="hidden" value="0" />
											<img id="yc" src="<s:property value="#myMessage.photo"></s:property>" alt="img" class="img-responsive" />
										</td>
									</tr>
								</s:iterator>
								</table>
								
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</div>
</div>
<!--footer-->
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
					<li>售后服务</li>
					<li><a href="return-service.html">退/换货服务</a></li>
					<li><a href="service.html">服务条款</a></li>
				</ul>
			</div>
			<div class="col-lg-2">
				<ul>
					<li>购物流程</li>
					<li><a href="shoppingProcess.html">购物指南</a></li>
					<li><a href="customer-service.html">联系客服</a></li>
				</ul>
			</div>
			<div class="col-lg-2">
				<ul>
					<li>支付配送</li>
					<li><a href="pay.html">支付方式</a></li>
					<li><a href="diliver.html">配送方式</a></li>
				</ul>
			</div>
			<div class="col-lg-2">
				<ul>
					<li>关于我们</li>
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
<script type="text/javascript">
$(function () {
	$("#pjimg").bind("click", function () {
		if ($("input").val() == 0) {
			$("#yc").show(1000,function(){
				$("inpt").val(1);
			})
		} else {
			$("#yc").hide(1000,function(){
				$("input").val(0);
			})
		}
	})
	$("#pjimg").bind("click", function () {
		if ($("input").val() == 1) {
			$("#yc").hide(1000,function(){
				$("inpt").val(0);
			})
		} else {
			$("#yc").show(1000,function(){
				$("input").val(1);
			})
		}
	})
})
</script>

<script src="js/bootstrap.min.js"></script>
	
</body>
</html>	
</body>
</html>
