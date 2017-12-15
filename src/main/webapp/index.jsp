<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="noIE" lang="en-US">
<!--<![endif]-->
<head>
<!-- meta -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<%
	pageContext.setAttribute("PIC_PATH", request.getContextPath());
%>
<script src="js/jquery-3.2.1.min.js"></script>
<link
	href="${PIC_PATH}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="${PIC_PATH}/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<meta name="viewport"
	content="width=device-width, initial-scale = 1.0, maximum-scale=1.0, user-scalable=no" />
<title>在线图像处理网站</title>

<link rel="stylesheet"
	href="${PIC_PATH }/static/assets/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${PIC_PATH }/static/assets/css/ionicons.min.css">
<link rel="stylesheet"
	href="${PIC_PATH }/static/assets/css/owl.carousel.css">
<link rel="stylesheet"
	href="${PIC_PATH }/static/assets/css/owl.theme.css">
<link rel="stylesheet" href="${PIC_PATH }/static/assets/css/main.css">
<link rel="stylesheet"
	href="${PIC_PATH }/static/assets/css/one-page.css">
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
<!-- 用户登录的模态框 -->
	<div class="modal fade" id="user_login_modal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">用户登录</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal">
						<div class="form-group">
							<label for="empName" class="col-sm-2 control-label">用户名:</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="empNameInput"
									name="userName" placeholder="userName">
								<span
									id="helpBlock1" class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label for="emailInput" class="col-sm-2 control-label">密码：</label>
							<div class="col-sm-10">
								<input type="password" class="form-control" id="emailInput"
									name="password" placeholder="password">
								<span
										id="helpBlock2" class="help-block"></span>
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" id="empSave">提交</button>
				</div>
			</div>
		</div>
	</div>
	<!-- Home -->
	<section class="header" id="header"> 
	<nav class="navbar navbar-default">
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
			<a class="navbar-brand" href="index-multipage.html">Image
				Porcessing</a>
		</div>
		<!-- /.navbar-header -->

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li class="active"><a href="">主页</a></li>
				<li><a href="about.jsp">关于我们</a></li>
				<li><a href="">提供的服务</a></li>
				<li><a href="">作品展示</a></li>
				<li><a href="">联系我们</a></li>
				<li><a href="login.jsp" class="btn btn-primary btn-lg active" role="button" id="">登录</a></li>
				<li><a></a></li>
				<li><a href="regsiter.jsp" class="btn btn-primary btn-lg active" role="button">注册</a></li>
				<!-- <li><a href="contact.html">登录</a></li>
				<li><a href="contact.html">注册</a></li> -->
			</ul>
			<!-- /.nav -->
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container -->
</nav>
	<div class="container">
		<div class="header-table">
			<div class="header-wrapper">
				<h1 class="header-title">在线图像处理 我们是最专业的</h1>
				<p class="header-subtitle">since 2017</p>
			</div>
			<!-- /.header-wrapper -->
		</div>
	</div>
	<!-- /.container --> </section>
	<!-- /#header -->


	<!-- Our Services -->
	<section class="service" id="service">
	<div class="container">
		<div class="_section-wrapper">
			<h2 class="section-title black">我们提供的服务</h2>
			<!-- /.section-title -->
			<div class="underline purple"></div>
			<div class="row">
				<div class="">
					<img src="${PIC_PATH }/static/assets/images/service.png"
						alt="service" class="service-img img-responsive">
				</div>
				<div class="col-md-offset-4 col-md-8 col-sm-12 services">
					<div class="row">
						<div class="col-xs-6 col-sm-6">
							<div class="service-item">
								<h3 class="section-item-title">普通游客</h3>
								<p class="section-item-detail">普通的非登录游客用户可以访问我们的网站浏览我们网站以及我们提供的服务
									以及作品等相关信息</p>
							</div>
							<!-- /.service-item -->
						</div>
						<div class="col-xs-6 col-sm-6">
							<div class="service-item">
								<h3 class="section-item-title">摄影爱好者</h3>
								<p class="section-item-detail">摄影爱好者用户注册后登陆可以使用我们提供的灰度，锐化，滤镜，
									裁剪等基础图像处理服务。</p>
							</div>
							<!-- /.service-item -->
						</div>
						<div class="col-xs-6 col-sm-6">
							<div class="service-item">
								<h3 class="section-item-title">专业人员</h3>
								<p class="section-item-detail">从事图像处理的专业人员注册成功登陆后可以使用基础服务的基础上使用
									切割，边缘检测，基于霍夫变换的直线和圆形等目标的识别等服务。</p>
							</div>
							<!-- /.service-item -->
						</div>
						<div class="col-xs-6 col-sm-6">
							<div class="service-item">
								<h3 class="section-item-title">管理员</h3>
								<p class="section-item-detail">管理员拥有最高权限，登陆后进入后台可以查看用户的相关信息，以及对相关信息
									的处理。</p>
							</div>
							<!-- /.service-item -->
						</div>
					</div>
					<!-- /.row -->
				</div>
				<!-- /.col-md-6 -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.section-wrapper -->
	</div>
	<!-- /.container --> </section>
	<!-- /.service -->

	<!-- Portfolio -->
	<section class="portfolio" id="portfolio">
	<div class="container section-wrapper">
		<h2 class="section-title black">作品展示</h2>
		<!-- /.section-title -->
		<div class="underline purple"></div>
		<div class="row">
			<div class="col-sm-4 col-xs-6">
				<div class="portfolio-item">
					<div class="portfolio-img">
						<img src="${PIC_PATH }/static/assets/images/zp1.jpg" alt="port-1"
							class="port-item">
						<div class="portfolio-img-hover">
							<a href="#"><img
								src="${PIC_PATH }/static/assets/images/plus.png" alt="plus"
								class="plus"></a>
						</div>
						<!-- /.portfolio-img-hover -->
					</div>
					<!-- /.portfolio-img -->
					<div class="portfolio-item-details">
						<div class="portfolio-item-name">
							作品一 <br> <small>灰度处理</small>
						</div>
						<!-- /.portfolio-item-name -->
						<div class="port-heart">
							<i class="ion-ios-heart-outline"></i> 564
						</div>
						<!-- /.port-heart -->
					</div>
					<!-- /.portfolio-item-details -->
				</div>
				<!-- /.portfolio-item -->
			</div>
			<!-- /.col-md-4 -->
			<div class="col-sm-4 col-xs-6">
				<div class="portfolio-item">
					<div class="portfolio-img">
						<img src="${PIC_PATH }/static/assets/images/zp2.jpg" alt="port-2"
							class="port-item">
						<div class="portfolio-img-hover">
							<a href="#"><img
								src="${PIC_PATH }/static/assets/images/plus.png" alt="plus"
								class="plus"></a>
						</div>
						<!-- /.portfolio-img-hover -->
					</div>
					<!-- /.portfolio-img -->
					<div class="portfolio-item-details">
						<div class="portfolio-item-name">
							作品二 <br> <small>滤镜</small>
						</div>
						<!-- /.portfolio-item-name -->
						<div class="port-heart">
							<i class="ion-ios-heart-outline"></i> 564
						</div>
						<!-- /.port-heart -->
					</div>
					<!-- /.portfolio-item-details -->
				</div>
				<!-- /.portfolio-item -->
			</div>
			<!-- /.col-md-4 -->
			<div class="col-sm-4 col-xs-6">
				<div class="portfolio-item">
					<div class="portfolio-img">
						<img src="${PIC_PATH }/static/assets/images/zp3.jpg" alt="port-3"
							class="port-item">
						<div class="portfolio-img-hover">
							<a href="#"><img
								src="${PIC_PATH }/static/assets/images/plus.png" alt="plus"
								class="plus"></a>
						</div>
						<!-- /.portfolio-img-hover -->
					</div>
					<!-- /.portfolio-img -->
					<div class="portfolio-item-details">
						<div class="portfolio-item-name">
							作品三 <br> <small>锐化</small>
						</div>
						<!-- /.portfolio-item-name -->
						<div class="port-heart">
							<i class="ion-ios-heart-outline"></i> 564
						</div>
						<!-- /.port-heart -->
					</div>
					<!-- /.portfolio-item-details -->
				</div>
				<!-- /.portfolio-item -->
			</div>
			<!-- /.col-md-4 -->
			<div class="col-sm-4 col-xs-6">
				<div class="portfolio-item">
					<div class="portfolio-img">
						<img src="${PIC_PATH }/static/assets/images/zp4.jpg" alt="port-4"
							class="port-item">
						<div class="portfolio-img-hover">
							<a href="#"><img
								src="${PIC_PATH }/static/assets/images/plus.png" alt="plus"
								class="plus"></a>
						</div>
						<!-- /.portfolio-img-hover -->
					</div>
					<!-- /.portfolio-img -->
					<div class="portfolio-item-details">
						<div class="portfolio-item-name">
							作品4<br> <small>裁剪</small>
						</div>
						<!-- /.portfolio-item-name -->
						<div class="port-heart">
							<i class="ion-ios-heart-outline"></i> 564
						</div>
						<!-- /.port-heart -->
					</div>
					<!-- /.portfolio-item-details -->
				</div>
				<!-- /.portfolio-item -->
			</div>
			<!-- /.col-md-4 -->
			<div class="col-sm-4 col-xs-6">
				<div class="portfolio-item">
					<div class="portfolio-img">
						<img src="${PIC_PATH }/static/assets/images/zp5.jpg" alt="port-5"
							class="port-item">
						<div class="portfolio-img-hover">
							<a href="#"><img
								src="${PIC_PATH }/static/assets/images/plus.png" alt="plus"
								class="plus"></a>
						</div>
						<!-- /.portfolio-img-hover -->
					</div>
					<!-- /.portfolio-img -->
					<div class="portfolio-item-details">
						<div class="portfolio-item-name">
							作品五<br> <small>切割</small>
						</div>
						<!-- /.portfolio-item-name -->
						<div class="port-heart">
							<i class="ion-ios-heart-outline"></i> 564
						</div>
						<!-- /.port-heart -->
					</div>
					<!-- /.portfolio-item-details -->
				</div>
				<!-- /.portfolio-item -->
			</div>
			<!-- /.col-md-4 -->
			<div class="col-sm-4 col-xs-6">
				<div class="portfolio-item">
					<div class="portfolio-img">
						<img src="${PIC_PATH }/static/assets/images/zp6.jpg" alt="port-6"
							class="port-item">
						<div class="portfolio-img-hover">
							<a href="#"><img
								src="${PIC_PATH }/static/assets/images/plus.png" alt="plus"
								class="plus"></a>
						</div>
						<!-- /.portfolio-img-hover -->
					</div>
					<!-- /.portfolio-img -->
					<div class="portfolio-item-details">
						<div class="portfolio-item-name">
							作品6<br> <small>霍夫变换</small>
						</div>
						<!-- /.portfolio-item-name -->
						<div class="port-heart">
							<i class="ion-ios-heart-outline"></i> 564
						</div>
						<!-- /.port-heart -->
					</div>
					<!-- /.portfolio-item-details -->
				</div>
				<!-- /.portfolio-item -->
			</div>
			<!-- /.col-md-4 -->
		</div>
		<!-- /.row -->
	</div>
	<!-- /.container --> </section>
	<!-- /.portfolio -->
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
				<div class="copy">
					Contacts us <a href="" target="_blank" title="模板之家"></a> - Version
					<a href="" title="网页模板" target="_blank">1.0.0</a>
				</div>
			</div>
		</div>
		<!-- /.row -->
	</div>
	<!-- /.container --> </footer>
	<script src="${PIC_PATH }/static/assets/js/jquery-1.11.2.min.js"></script>
	<script src="${PIC_PATH }/static/assets/js/bootstrap.min.js"></script>
	<script src="${PIC_PATH }/static/assets/js/owl.carousel.min.js"></script>
	<script src="${PIC_PATH }/static/assets/js/contact.js"></script>
	<!-- // <script src="assets/js/smoothscroll.js"></script> -->
	<script src="${PIC_PATH }/static/assets/js/script.js"></script>
	<script>
		$(function() {
		});
	</script>
</body>
</html>