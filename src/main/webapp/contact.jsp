<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- meta -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<%
	pageContext.setAttribute("PIC_PATH", request.getContextPath());
%>
<script src="js/jquery-3.2.1.min.js"></script>
<meta name="viewport"
	content="width=device-width, initial-scale = 1.0, maximum-scale=1.0, user-scalable=no" />
<title>OnlinePic</title>
<link rel="stylesheet" href="${PIC_PATH}/static/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="${PIC_PATH}/static/assets/css/ionicons.min.css">
<link rel="stylesheet" href="${PIC_PATH}/static/assets/css/owl.carousel.css">
<link rel="stylesheet" href="${PIC_PATH}/static/assets/css/owl.theme.css">
<link rel="stylesheet" href="${PIC_PATH}/static/assets/css/main.css">
<link rel="stylesheet" href="${PIC_PATH}/static/assets/css/section.css">
<link rel="stylesheet" href="${PIC_PATH}/static/assets/css/contact.css">
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
				<script src="assets/js/html5shiv.js"></script>
				<script src="assets/js/respond.js"></script>
			<![endif]-->

<!--[if IE 8]>
		    	<script src="assets/js/selectivizr.js"></script>
		    <![endif]-->
</head>

<body>

	<!-- Home -->
	<section class="portfolio-header" id="header"> <nav
		class="navbar navbar-default _navbar-fixed-top">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">在线图像处理网站</a>
		</div>
		<!-- /.navbar-header -->

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="index.jsp">主页</a></li>
				<li><a href="about.jsp">关于我们</a></li>
				<li><a href="profile.jsp">作品展示</a></li>
				<li class="active"><a href="contact.jsp">联系我们</a></li>
			</ul>
			<!-- /.nav -->
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container --> </nav> </section>
	<!-- /#header -->


	<!-- Section Background -->
	<section class="section-background">
	<div class="container">
		<ol class="breadcrumb">
			<li><a href="index.jsp">主页</a></li>
			<li class="active">&nbsp;联系我们</li>
		</ol>
	</div>
	<!-- /.container --> </section>
	<!-- /.section-background -->


	<!-- Contact with us -->
	<section class="contact section-wrapper" id="contact">
	<div class="container">
		<div class="row">
			<div class="col-md-3 contact-item col-sm-6 col-xs-12">
				<i class="ion-location"></i>
				<h3>地址</h3>
				<p class="contact">
					湖北省武汉市, 珞珈山街道<br> 八一路, 武汉大学计算机学院大楼
				</p>
			</div>
			<div class="col-md-3 contact-item col-sm-6 col-xs-12">
				<i class="ion-ios-telephone"></i>
				<h3>电话</h3>
				<p class="contact">
					座机: 1-200-123-hello <br> 手机: 13627778666
				</p>
			</div>
			<div class="col-md-3 contact-item col-sm-6 col-xs-12">
				<i class="ion-printer"></i>
				<h3>传真</h3>
				<p class="contact">
					办公: 2148-287-8300 <br> 家: 2528-782-8200
				</p>
			</div>
			<div class="col-md-3 contact-item col-sm-6 col-xs-12">
				<i class="ion-ios-email"></i>
				<h3>邮箱地址</h3>
				<p class="contact">
					<a href="mailto:info@themewagon.com">info@whu.edu.cn</a> <br>
					<a href="">www.whu.com</a>
				</p>
			</div>


		</div>
		<!-- /.row -->
		<form class="row form">
			<h3>留言列表</h3>
			<div class="col-sm-4 col-xs-12 form-group">
				<label class="sr-only">姓名：</label> <input name="name"
					class="form-control" type="text" placeholder="你的名字">
			</div>
			<!-- /.form-group -->
			<div class="col-sm-4 col-xs-12 form-group">
				<label class="sr-only">邮箱：</label> <input name="email"
					class="form-control" type="email" placeholder="邮箱地址">
			</div>
			<!-- /.form-group -->
			<div class="col-sm-4 col-xs-12 form-group">
				<label class="sr-only">主页</label> <input name="website"
					class="form-control" type="text" placeholder="你的博客">
			</div>
			<!-- /.form-group -->
			<div class="row">
				<div class="col-md-12 col-xs-12 form-group">
					<label class="sr-only">内容</label>
					<textarea class="message form-control" placeholder="留言内容"></textarea>
				</div>
				<!-- /.form-group -->
				<input class="btn btn-sub" type="submit" value="提交">
			</div>
		</form>
		<!-- /.row -->
	</div>
	<!-- /.container --> </section>
	<!-- /.contact -->





	<!-- Footer -->
	<footer>
	<div class="container">
		<div class="row">
			<div class="col-sm-4">
				<div class="copy">Copyright &copy; 2017 WHU CS</div>
			</div>
			<div class="col-sm-4 text-center">
				<div class="social-icon">
					<a href="#">
						<div class="icon fb">
							<i class="ion-social-facebook"></i>
						</div>
					</a> <a href="#">
						<div class="icon twitter">
							<i class="ion-social-twitter"></i>
						</div>
					</a> <a href="#">
						<div class="icon google">
							<i class="ion-social-googleplus"></i>
						</div>
					</a> <a href="#">
						<div class="icon rss">
							<i class="ion-social-rss"></i>
						</div>
					</a>
				</div>
			</div>
			<div class="col-sm-4 text-right">
			</div>
		</div>
		<!-- /.row -->
	</div>
	<!-- /.container --> </footer>



	<script src="${PIC_PATH}/static/assets/js/jquery-1.11.2.min.js"></script>
	<script src="${PIC_PATH}/static/assets/js/bootstrap.min.js"></script>
	<script src="${PIC_PATH}/static/assets/js/owl.carousel.min.js"></script>
	<script src="${PIC_PATH}/static/assets/js/contact.js"></script>
	<!-- // <script src="assets/js/smoothscroll.js"></script> -->
	<script src="${PIC_PATH}/static/assets/js/script.js"></script>


</body>
</html>