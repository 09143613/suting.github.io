<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<% 
	/*  1.获取所有cookie:request.getCookies
		2.用循环语句判断是否存在需要变了的名称：cookie[i].getName().equals("cookie名称")
		3.取值username=cookie[i].getValue
		4.把获取到的值给控件
	*/
	//乱码处理
    //request.setCharacterEncoding("utf-8");
	//获取所有的Cookie
	Cookie cookies[]=request.getCookies();
	String username="";
	String userpsd="";
	//判断是否存在变了的名称
	if(cookies!= null){
        for(int i = 0;i<cookies.length;i++){
            if(cookies[i].getName().equals("username")){
                //乱码处理:解码用decode，URLDecoder.decode，编码用encode
                username=cookies[i].getValue();
            System.out.println(username);
            }
            if(cookies[i].getName().equals("userpsd")){
                 //乱码处理URLDecoder.decode
                userpsd=cookies[i].getValue();
            }
        }
    }
   
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="Login form web template, Sign up Web Templates, Flat Web Templates, 
Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!--设置ie的兼容性-->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!--缩放-->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--css外部链接-->
<link href="style/reset.css" type="text/css" rel="stylesheet"/>
<link href="style/signup.css" type="text/css" rel="stylesheet"/>
<link href="style/bootstrap.min.css" type="text/css" rel="stylesheet"/> 
<!--js-->
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>


<title>用户登录</title>

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
				<li><a href="registForm">[免费注册]</a></li>
				<li class="dropdown"><a href="#">手机版<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li>
							<img src="#" />
						</li>
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
<div id="container">
	<!--logo-->
	<div class="row" id="top">
		<div class="col-lg-2"></div>
		<div class="col-lg-2">
			<img class="img-responsive" src="images/index/logo.jpg" id="logo" />
		</div>
		
	</div>
	<!--水平分割线-->
	<hr/>
	
	
	<div class="row">
		<div class="col-lg-1"></div>
		<div class="col-lg-4">
			<img src="images/share/bgk.jpg" class="img-responsive"  />	
		</div>
		<div class="col-lg-4">
			<div class="panel">
				<h3>用户登录</h3><span>&nbsp;&nbsp;&nbsp;&nbsp;${requestScope.tip} </span>
				<div class="panel-body" id="logindiv">
					<form method="post" enctype="multipart/form-data" id="loginForm" class="form-horizontal">
						<div class="form-group">
							<label for="username">用户名：
								<input type="text" size="40" value="<%=username %>" 
									id="username" name="username" class="form-control" placeholder="用户名/邮箱/注册手机"/>
								
							</label>
						</div>

						<div class="form-group">
							<label for="userpsd">密码：<input type="password" id="userpsd" name="userpsd" id="userpsd" value="<%=userpsd %>" class="form-control" size="40"/></label>
						</div>
						<div class="form-group">
							<input type="checkbox" id="remember" name="remember"  value="1"/>记住密码
						</div>
						<div class="form-group">
							<button type="submit" class="btn btn-danger" data-dismiss="modal" id="login" onclick="this.form.action='login';" >登录</button> 
							<button type="reset" class="btn btn-success" data-dismiss="modal">取消</button> 
						</div>
						
					</form>
				</div>
			</div>
		</div>
		<div class="col-lg-2">
		
		</div>
	</div>
</div>

<!--jquery-->
<script type="text/javascript" src="js/jquery-2.2.3.min.js" language="javascript"></script>
<script type="text/javascript" src="js/jquery.cookie.js" language="javascript"></script>
<script src="js/bootstrap.min.js"></script>	

<script type="text/javascript">
	function checkUsername(){
		if(loginForm.username.value==""){
			alert("请输入用户名");
			loginForm.username.focus();
			return false;
		}
		return true;
	}
</script>
</body>
</html>