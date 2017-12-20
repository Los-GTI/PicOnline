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
<meta name="viewport"
	content="width=device-width, initial-scale = 1.0, maximum-scale=1.0, user-scalable=no" />
<title>OnlinePic</title>

<link rel="stylesheet"
	href="${PIC_PATH}/static/assets/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${PIC_PATH}/static/assets/css/ionicons.min.css">
<link rel="stylesheet"
	href="${PIC_PATH}/static/assets/css/owl.carousel.css">
<link rel="stylesheet"
	href="${PIC_PATH}/static/assets/css/owl.theme.css">
<link rel="stylesheet" href="${PIC_PATH}/static/assets/css/main.css">
<link rel="stylesheet" href="${PIC_PATH}/static/assets/css/section.css">
<link rel="stylesheet" href="${PIC_PATH}/static/assets/css/about.css">
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
		class="navbar navbar-default">
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
				<li class="about.jsp"><a href="about.html">关于我们</a></li>
				<li><a href="profile.jsp">作品展示</a></li>
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
			<li class="active">&nbsp;关于我们</li>
		</ol>
	</div>
	<!-- /.container --> </section>
	<!-- /.section-background -->


	<!-- About Us -->
	<section class="about" id="about">
	<div class="container section-wrapper">
		<h2 class="section-title black">关于我们</h2>
		<!-- /.section-title -->
		<div class="underline purple"></div>
		<div class="row">
			<div class="col-md-3 col-sm-6">
				<img src="${PIC_PATH}/static/assets/images/about-1.png" alt="about" class="about-img">
			</div>
			<!-- /.col-md-3 -->
			<div class="col-md-3 col-sm-6">
				<img src="${PIC_PATH}/static/assets/images/about-2.png" alt="about" class="about-img">
			</div>
			<!-- /.col-md-3 -->

			<div class="col-md-6 col-sm-12">
				<p class="about-detail">我们的团队是一群充满青春活力以及智慧的武汉大学计算机学院研究生，我们制作本网站
				的初衷只是为了完成高级软件工程课后实践，因为我们团队有两个成员是研究图像处理这一块，有两个成员精通于写网站，所以我们
				萌发了制作一个图像处理网站的想法，随着工作的一步一步推进，我们的网站渐渐成型，成果也一点一点的向大家展示出来，以后我们
				还会继续开发维护我们的网站。</p>
				<!-- /.about-detail -->
			</div>
			<!-- /.col-md-6 -->

		</div>
		<!-- /.row -->

	</div>
	<!-- /.container --> </section>
	<!-- /.about -->


	<!-- Our Team -->
	<section class="team">
	<div class="container section-wrapper">
		<h2 class="section-title black">我们的团队</h2>
		<!-- /.section-title -->
		<div class="underline purple"></div>
		<div class="row">
			<div class="col-sm-3 col-xs-6">
				<div class="team-item">
					<img src="${PIC_PATH}/static/assets/images/team-1.png" alt="team-image"
						class="team-img">
					<h4 class="team-item-name">QIN SUN</h4>
					<p class="team-item-id">founder</p>
				</div>
				<!-- /.team-item -->
			</div>
			<!-- /.col-md-3 -->

			<div class="col-sm-3 col-xs-6">
				<div class="team-item">
					<img src="${PIC_PATH}/static/assets/images/team-2.png" alt="team-image"
						class="team-img">
					<h4 class="team-item-name">CHONG QIN</h4>
					<p class="team-item-id">founder</p>
				</div>
				<!-- /.team-item -->
			</div>
			<!-- /.col-md-3 -->
			<div class="col-sm-3 col-xs-6">
				<div class="team-item">
					<img src="${PIC_PATH}/static/assets/images/team-3.png" alt="team-image"
						class="team-img">
					<h4 class="team-item-name">YUANHAO YUE</h4>
					<p class="team-item-id">founder</p>
				</div>
				<!-- /.team-item -->
			</div>
			<!-- /.col-md-3 -->
			<div class="col-sm-3 col-xs-6">
				<div class="team-item">
					<img src="${PIC_PATH}/static/assets/images/team-4.png" alt="team-image"
						class="team-img">
					<h4 class="team-item-name">CHENYU FAN</h4>
					<p class="team-item-id">founder</p>
				</div>
				<!-- /.team-item -->
			</div>
			<!-- /.col-md-3 --								
		</div>
		<!-- /.row -->
	</div>
	<!-- /.container --> </section>
	<!-- /.team -->


	<!-- Testimonial -->
	<section class="testimonial">
	<div class="container section-wrapper">
		<div class="section-title">testmonials</div>
		<!-- /.section-title -->
		<div class="underline white"></div>
		<div class="owl-carousel testimonial-owl">
			<div class="item">
				<p class="testimonial-detail">The Department of Computer Science
					and Engineering, Islamic University of Technology(IUT), is one of
					the</p>
				<div class="test-name">
					<strong>Mohoshin Ahmed</strong> <br> ROX THEME
				</div>
			</div>
			<!-- /.item -->
			<div class="item">
				<p class="testimonial-detail">The Department of Computer Science
					and Engineering, Islamic University of Technology(IUT), is one of
					the</p>
				<div class="test-name">
					<strong>Mohoshin Ahmed</strong> <br> ROX THEME
				</div>
			</div>
			<!-- /.item -->
			<div class="item">
				<p class="testimonial-detail">The Department of Computer Science
					and Engineering, Islamic University of Technology(IUT), is one of
					the</p>
				<div class="test-name">
					<strong>Mohoshin Ahmed</strong> <br> ROX THEME
				</div>
			</div>
			<!-- /.item -->
		</div>
		<!-- /.owl-carousel -->
	</div>
	<!-- /.container --> </section>
	<!-- /.testimonial -->


	<!-- Add -->
	<section class="section-wrapper add container">
	<div class="owl-carousel add-owl">
		<div class="item">
			<img src="${PIC_PATH}/static/assets/images/add-1.png" alt="add" class="add-item">
		</div>
		<!-- /.item -->
		<div class="item">
			<img src="${PIC_PATH}/static/assets/images/add-2.png" alt="add" class="add-item">
		</div>
		<!-- /.item -->
		<div class="item">
			<img src="${PIC_PATH}/static/assets/images/add-3.png" alt="add" class="add-item">
		</div>
		<!-- /.item -->
		<div class="item">
			<img src="${PIC_PATH}/static/assets/images/add-4.png" alt="add" class="add-item">
		</div>
		<!-- /.item -->
		<div class="item">
			<img src="${PIC_PATH}/static/assets/images/add-1.png" alt="add" class="add-item">
		</div>
		<!-- /.item -->
		<div class="item">
			<img src="${PIC_PATH}/static/assets/images/add-2.png" alt="add" class="add-item">
		</div>
		<!-- /.item -->
		<div class="item">
			<img src="${PIC_PATH}/static/assets/images/add-3.png" alt="add" class="add-item">
		</div>
		<!-- /.item -->
		<div class="item">
			<img src="${PIC_PATH}/static/assets/images/add-4.png" alt="add" class="add-item">
		</div>
		<!-- /.item -->
	</div>
	<!-- /.owl-carousel --> </section>


	<!-- Footer -->
	<footer>
	<div class="container">
		<div class="row">
			<div class="col-sm-4">
				<div class="copy">Copyright &copy; 2015 Your Company</div>
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
					More Templates <a href="http://www.cssmoban.com/" target="_blank"
						title="模板之家">模板之家</a> - Collect from <a
						href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>
				</div>
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