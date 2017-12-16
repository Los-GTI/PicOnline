<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Register</title>
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
<script src="${PIC_PATH}/layer-v3.1.1/layer/layer.js"></script>
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
	<h1>用户注册</h1>
	<div class="login-form">
		<div class="head-info">
			<label class="lbl-1"> </label> <label class="lbl-2"> </label> <label
				class="lbl-3"> </label>
		</div>
		<div class="clear"></div>
		<div class="avtar">
			<img src="${PIC_PATH }/static/assets/images/avtar.png" />
		</div>
		<form id="registerForm">
			<input type="text" class="text" value="username" name="username"
				id="username" onfocus="this.value = '';"
				onblur="if (this.value == '') {this.value = 'Username';}"> 
			<input type="text" class="" value="email" name="email" id="email"
				onfocus="this.value = '';"
				onblur="if (this.value == '') {this.value = 'email';}">
		    <input type="password" value="password" name="password" id="password"
			onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}">
		</form>
		<div class="signin">
			<input type="submit" value="Register" id="submitBtn">
		</div>
	</div>
	<div class="copy-rights">
		<p>Copyright &copy; 2017.WHU CS All rights reserved.</p>
	</div>
	<script type="text/javascript">
	$("#submitBtn").click(function(){
		$.ajax({
			url:"${PIC_PATH}/register",
			type:"POST",
			data:$("#registerForm").serialize(),
			success:function(result){
				//console.log(result);
				layer.msg('注册成功即将跳转到登录页面，请稍后。。。', {icon: 5});
				window.location.href="login.jsp";
			}
		});
	});
	//表单校验用户名
	$("#username").change(function(){
		var username=$("#username").val();
		var validateUserName = /(^[a-zA-Z0-9_-]{5,16}$)|(^[\u2E80-\u9FFF]{2,5})/;
		if(!validateUserName.test(username)){
			layer.msg('用户名不合法，用户名可以是2-5中文或者5-16位英文数字组合', {icon: 5});
		}else{
			$.ajax({
				url:"${PIC_PATH}/checkUser",
				type:"POST",
				data:"userName="+username,
				success:function(result){
					if(result.code==100){
						layer.msg('用户名可用',{icon:5});
					}else{
						layer.msg('用户名已存在，请重新输入', {icon: 5});
					}
				}
			});
		}
	});
	//表单校验邮箱
	$("#email").change(function(){
		var email=$("#email").val();
		var validateEmail=/^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/;
		if(!validateEmail.test(email)){
			layer.msg('邮箱格式不正确请重新输入', {icon: 5});
		}else{
			layer.msg('邮箱可用', {icon: 5});
		}
	});
	</script>
</body>
</html>