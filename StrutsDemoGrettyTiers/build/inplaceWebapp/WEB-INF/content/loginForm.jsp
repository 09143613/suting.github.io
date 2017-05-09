<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<% 
	/*  1.��ȡ����cookie:request.getCookies
		2.��ѭ������ж��Ƿ������Ҫ���˵����ƣ�cookie[i].getName().equals("cookie����")
		3.ȡֵusername=cookie[i].getValue
		4.�ѻ�ȡ����ֵ���ؼ�
	*/
	//���봦��
    //request.setCharacterEncoding("utf-8");
	//��ȡ���е�Cookie
	Cookie cookies[]=request.getCookies();
	String username="";
	String userpsd="";
	//�ж��Ƿ���ڱ��˵�����
	if(cookies!= null){
        for(int i = 0;i<cookies.length;i++){
            if(cookies[i].getName().equals("username")){
                //���봦��:������decode��URLDecoder.decode��������encode
                username=cookies[i].getValue();
            System.out.println(username);
            }
            if(cookies[i].getName().equals("userpsd")){
                 //���봦��URLDecoder.decode
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
<!--����ie�ļ�����-->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!--����-->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--css�ⲿ����-->
<link href="style/reset.css" type="text/css" rel="stylesheet"/>
<link href="style/signup.css" type="text/css" rel="stylesheet"/>
<link href="style/bootstrap.min.css" type="text/css" rel="stylesheet"/> 
<!--js-->
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>


<title>�û���¼</title>

</head>

<body>
<div class="container" id="top">
	<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
  		<div class="navbar-header">
     ��	
	 	<!-- .navbar-toggle��ʽ����toggle���������ݣ���nav-collapse collapse��ʽ����Ԫ�� -->
       		<button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".navbar-responsive-collapse">
         		<span class="sr-only"></span>
         		<span class="icon-bar"></span>
         		<span class="icon-bar"></span>
         		<span class="icon-bar"></span>
       		</button>
       
	   <!-- ȷ�������ǿ�������խ����navbar-brand����ʾ -->
       		<a href="##" class="navbar-brand">totoro's house</a>
  		</div>
  <!-- ��Ļ���С��768pxʱ��div.navbar-responsive-collapse����������ݶ������أ���ʾicon-barͼ�꣬�����icon-barͼ��ʱ����չ������Ļ����768pxʱ��Ĭ����ʾ�� -->
 		 <div class="collapse navbar-collapse navbar-responsive-collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="index"><span class="glyphicon glyphicon-home"></span>��ҳ</a></li>
				<li><a href="registForm">[���ע��]</a></li>
				<li class="dropdown"><a href="#">�ֻ���<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li>
							<img src="#" />
						</li>
					</ul>
				</li>
				<li ><a href="#">���ﳵ</a></li>
				<li class="dropdown">
					<a href="#" data-toggle="dropdown" class="dropdown-toggle">����<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">Ʒ��Ůװ</a></li>	
						<li class="divider"></li>
						<li><a href="#">����Ь��</a></li>
						<li class="divider"></li>
						<li><a href="#">ʱ����ױ</a></li>
						<li class="divider"></li>
						<li><a href="#">�ҵ�����</a></li>
						<li class="divider"></li>
						<li><a href="#">��ʳר��</a></li>
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
	<!--ˮƽ�ָ���-->
	<hr/>
	
	
	<div class="row">
		<div class="col-lg-1"></div>
		<div class="col-lg-4">
			<img src="images/share/bgk.jpg" class="img-responsive"  />	
		</div>
		<div class="col-lg-4">
			<div class="panel">
				<h3>�û���¼</h3><span>&nbsp;&nbsp;&nbsp;&nbsp;${requestScope.tip} </span>
				<div class="panel-body" id="logindiv">
					<form method="post" enctype="multipart/form-data" id="loginForm" class="form-horizontal">
						<div class="form-group">
							<label for="username">�û�����
								<input type="text" size="40" value="<%=username %>" 
									id="username" name="username" class="form-control" placeholder="�û���/����/ע���ֻ�"/>
								
							</label>
						</div>

						<div class="form-group">
							<label for="userpsd">���룺<input type="password" id="userpsd" name="userpsd" id="userpsd" value="<%=userpsd %>" class="form-control" size="40"/></label>
						</div>
						<div class="form-group">
							<input type="checkbox" id="remember" name="remember"  value="1"/>��ס����
						</div>
						<div class="form-group">
							<button type="submit" class="btn btn-danger" data-dismiss="modal" id="login" onclick="this.form.action='login';" >��¼</button> 
							<button type="reset" class="btn btn-success" data-dismiss="modal">ȡ��</button> 
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
			alert("�������û���");
			loginForm.username.focus();
			return false;
		}
		return true;
	}
</script>
</body>
</html>