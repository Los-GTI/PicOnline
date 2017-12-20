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
<link rel="stylesheet" href="${PIC_PATH}/static/assets/css/portfolio.css">
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
				<li class="profile.jsp"><a href="portfolio.html">作品展示</a></li>
				<li><a href="contact.jsp">联系我们</a></li>
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
			<li class="active">&nbsp;作品展示</li>
		</ol>
	</div>
	<!-- /.container --> </section>
	<!-- /.section-background -->


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
						<img src="${PIC_PATH}/static/assets/images/port-1.png" alt="port-1" class="port-item">
						<div class="portfolio-img-hover">
							<a href="#"><img src="${PIC_PATH}/static/assets/images/plus.png" alt="plus"
								class="plus"></a>
						</div>
						<!-- /.portfolio-img-hover -->
					</div>
					<!-- /.portfolio-img -->
					<div class="portfolio-item-details">
						<div class="portfolio-item-name">
							Olivera Note <br>
							<small>Fashion</small>
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
						<img src="${PIC_PATH}/static/assets/images/port-2.png" alt="port-2" class="port-item">
						<div class="portfolio-img-hover">
							<a href="#"><img src="${PIC_PATH}/static/assets/images/plus.png" alt="plus"
								class="plus"></a>
						</div>
						<!-- /.portfolio-img-hover -->
					</div>
					<!-- /.portfolio-img -->
					<div class="portfolio-item-details">
						<div class="portfolio-item-name">
							Shift Magazine <br>
							<small>Photography</small>
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
						<img src="${PIC_PATH}/static/assets/images/port-3.png" alt="port-3" class="port-item">
						<div class="portfolio-img-hover">
							<a href="#"><img src="${PIC_PATH}/static/assets/images/plus.png" alt="plus"
								class="plus"></a>
						</div>
						<!-- /.portfolio-img-hover -->
					</div>
					<!-- /.portfolio-img -->
					<div class="portfolio-item-details">
						<div class="portfolio-item-name">
							Camp Pine Tree <br>
							<small>Web Design</small>
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
						<img src="${PIC_PATH}/static/assets/images/port-4.png" alt="port-4" class="port-item">
						<div class="portfolio-img-hover">
							<a href="#"><img src="${PIC_PATH}/static/assets/images/plus.png" alt="plus"
								class="plus"></a>
						</div>
						<!-- /.portfolio-img-hover -->
					</div>
					<!-- /.portfolio-img -->
					<div class="portfolio-item-details">
						<div class="portfolio-item-name">
							Freeart App Design <br>
							<small>Photography</small>
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
						<img src="${PIC_PATH}/static/assets/images/port-5.png" alt="port-5" class="port-item">
						<div class="portfolio-img-hover">
							<a href="#"><img src="${PIC_PATH}/static/assets/images/plus.png" alt="plus"
								class="plus"></a>
						</div>
						<!-- /.portfolio-img-hover -->
					</div>
					<!-- /.portfolio-img -->
					<div class="portfolio-item-details">
						<div class="portfolio-item-name">
							Large Poster Set <br>
							<small>Marketing</small>
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
						<img src="${PIC_PATH}/static/assets/images/port-6.png" alt="port-6" class="port-item">
						<div class="portfolio-img-hover">
							<a href="#"><img src="${PIC_PATH}/static/assets/images/plus.png" alt="plus"
								class="plus"></a>
						</div>
						<!-- /.portfolio-img-hover -->
					</div>
					<!-- /.portfolio-img -->
					<div class="portfolio-item-details">
						<div class="portfolio-item-name">
							Skilet Album Cover <br>
							<small>Business</small>
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