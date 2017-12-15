<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords"
	content="Flat Dark Web Login Form Responsive Templates, Iphone Widget Template, Smartphone login forms,Login form, Widget Template, Responsive Templates, a Ipad 404 Templates, Flat Responsive Templates" />
<%
	pageContext.setAttribute("PIC_PATH", request.getContextPath());
%>
<script src="${PIC_PATH}/js/jquery-3.2.1.min.js"></script>
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<script
	src="${PIC_PATH}/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script
	src="${PIC_PATH}/layer-v3.1.1/layer/layer.js"></script>
<link
	href="${PIC_PATH}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${PIC_PATH }/static/assets/css/loginstyle.css"
	rel='stylesheet' type='text/css' />
<!--webfonts-->
<!-- <link
	href='http://fonts.useso.com/css?family=PT+Sans:400,700,400italic,700italic|Oswald:400,300,700'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Exo+2' rel='stylesheet'
	type='text/css'> -->
<!--//webfonts-->
</head>
<body>
	<!--SIGN UP-->
	<h1>用户登录</h1>
	<div class="login-form">
		<div class="head-info">
			<label class="lbl-1"> </label> <label class="lbl-2"> </label> <label
				class="lbl-3"> </label>
		</div>
		<div class="clear"></div>
		<div class="avtar">
			<img src="${PIC_PATH }/static/assets/images/avtar.png" />
		</div>
		<form id="loginForm">
			<input type="text" class="text" value="username" name="username"
				id="userName" onfocus="this.value = '';"
				onblur="if (this.value == '') {this.value = 'Username';}">
			<div class="key">
				<input type="password" value="password" name="password"
					id="password" onfocus="this.value = '';"
					onblur="if (this.value == '') {this.value = 'Password';}">
			</div>
		</form>
		<div class="signin">
			<input type="submit" value="Login" id="submitBtn">
		</div>
	</div>
	<div class="copy-rights">
		<p>Copyright &copy; 2017.WHU CS All rights reserved.</p>
	</div>
	<script type="text/javascript">
		/* $(document).ready(function(c) {
		 $('.close').on('click', function(c){
		 $('.login-form').fadeOut('slow', function(c){
		 $('.login-form').remove();
		 });
		 });	  
		 }); */
		$("#submitBtn").click(function() {
			$.ajax({
				url : "${PIC_PATH}/login",
				type : "POST",
				data : $("#loginForm").serialize(),
				success : function(result) {
					if (result.code == 100) {
						if($("#userName").val()=="admin"){
							window.location.href="admin.jsp";
						}else{
							window.location.href="http://www.webglaxy.com";
						}
					} else {
						layer.msg('用户名或密码不正确，请重新输入', {icon: 5});
					}
				}
			});
		});
	</script>
</body>
</html>