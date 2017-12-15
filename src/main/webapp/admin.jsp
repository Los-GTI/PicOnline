<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%
	pageContext.setAttribute("PIC_PATH", request.getContextPath());
%>
<script src="js/jquery-3.2.1.min.js"></script>
<link
	href="${PIC_PATH}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="${PIC_PATH}/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<title>在线图像处理网站后台管理</title>
</head>
<body>
	<!-- 用户新增的模态框 -->
	<div class="modal fade" id="user_add_modal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">用户新增</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal">
						<div class="form-group">
							<label for="userName" class="col-sm-2 control-label">用户名</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="userNameInput"
									name="username" placeholder="Lisa"> <span
									id="helpBlock1" class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label for="passwordInput" class="col-sm-2 control-label">密码</label>
							<div class="col-sm-10">
								<input type="password" class="form-control" id="passwordInput"
									name="password" placeholder="111111"> <span
									id="helpBlock2" class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label for="emailInput" class="col-sm-2 control-label">邮箱</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="emailInput"
									name="email" placeholder="email@qq.com"> <span
									id="helpBlock2" class="help-block"></span>
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" id="userSave">提交</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 搭建页面 -->
	<div class="container">
		<!-- 标题 -->
		<div class=row>
			<div class="col-md-12">
				<h1>用户管理</h1>
			</div>
		</div>
		<!-- 按钮 -->
		<div class=row>
			<div class="col-md-4 col-md-offset-10">
				<button type="button" class="btn btn-primary" id="user_add">新增</button>
				<button type="button" class="btn btn-danger">删除</button>
				<!--<button type="button" class="btn btn-primary" id="baidu">百度</button>-->
			</div>
		</div>
		<!-- 显示表格数据 -->
		<div class=row>
			<div class="col-md-12">
				<table class="table table-hover" id="table_users">
					<thead>
						<tr>
							<th>id</th>
							<th>username</th>
							<th>password</th>
							<th>email</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
					</tbody>
				</table>
			</div>
		</div>
		<!-- 显示分页信息 -->
		<div class=row>
			<!-- 分页文字信息 -->
			<div class="col-md-6" id="page_info_area"></div>
			<!-- 分页条信息 -->
			<div class="col-md-6" id="page_nav_area"></div>
		</div>
	</div>
	<script type="text/javascript">
	var totalRecords;
	$(function() {
		//去首页
		toPage(1);
	});
	function toPage(pn) {
		$.ajax({
			url : "${PIC_PATH}/users",
			data : "pn=" + pn,
			type : "GET",
			success : function(result) {
				/**
				接收服务器返回的json数据用js将json数据解析出来显示在页面
				1.显示用户信息 2.显示分页信息3.显示分页条信息
				 */
				build_users_table(result);
				build_page_info(result);
				build_page_nav(result);
			}
		});
	}
	function build_users_table(result) {
		$("#table_users tbody").empty();
		var users = result.extend.pageInfo.list;
		$.each(users, function(index, item) {
			var userIdTd = $("<td></td>").append(item.id);
			var userNameTd = $("<td></td>").append(item.username);
			var password = $("<td></td>").append(item.password);
			var emailTd = $("<td></td>").append(item.email);
			var editBtnTd = $("<button></button>").addClass(
					"btn btn-primary btn-sm").append("<span></span>")
					.addClass("glyphicon glyphicon-pencil").append("编辑");
			var delBtnTd = $("<button></button>").addClass(
					"btn btn-danger btn-sm").append("<span></span>")
					.addClass("glyphicon glyphicon-remove").append("删除");
			var btnTd = $("<td></td>").append(editBtnTd).append(" ")
					.append(delBtnTd);
			$("<tr></tr>").append(userIdTd).append(userNameTd).append(
					password).append(emailTd).append(btnTd).appendTo("#table_users tbody");
		});
	}
     //显示分页信息
	function build_page_info(result) {
		$("#page_info_area").empty();
		var page = result.extend.pageInfo;
		$("#page_info_area").append(
				"当前" + page.pageNum + "页，总" + page.pages + "页，总"
						+ page.total + "条记录。");
		totalRecords = page.total;
	}
	//显示分页条信息
	function build_page_nav(result) {
		$("#page_nav_area").empty();
		var ul = $("<ul></ul>").addClass("pagination");
		var firstPageLi = $("<li></li>").append(
				$("<a></a>").append("首页").attr("href", "#"));
		var laststPageLi = $("<li></li>").append(
				$("<a></a>").append("末页").attr("href", "#"));
		var prePageLi = $("<li></li>").append(
				$("<a></a>").append("&laquo;"));
		if (result.extend.pageInfo.hasPreviousPage == false) {
			firstPageLi.addClass("disabled");
			prePageLi.addClass("disabled");
		} else {
			firstPageLi.click(function() {
				toPage(1);
			});
			prePageLi.click(function() {
				toPage(result.extend.pageInfo.pageNum - 1);
			});
		}
		var nextPageLi = $("<li></li>").append(
				$("<a></a>").append("&raquo;"));
		if (result.extend.pageInfo.hasNextPage == false) {
			nextPageLi.addClass("disabled");
			laststPageLi.addClass("disabled");
		} else {
			nextPageLi.click(function() {
				toPage(result.extend.pageInfo.pageNum + 1);
			});
			laststPageLi.click(function() {
				toPage(result.extend.pageInfo.pages);
			});
		}
		ul.append(firstPageLi).append(prePageLi);
		$.each(result.extend.pageInfo.navigatepageNums, function(index,
				item) {
			var numLi = $("<li></li>").append($("<a></a>").append(item));
			if (result.extend.pageInfo.pageNum == item) {
				numLi.addClass("active");
			}
			numLi.click(function() {
				toPage(item);
			});
			ul.append(numLi);
		});
		ul.append(nextPageLi).append(laststPageLi);
		var nav = $("<nav></nav>");
		nav.append(ul);
		$("#page_nav_area").append(nav);
	}
	function reset_form(ele){
		//清除表单内容
		$(ele)[0].reset();
		//清空表单样式
		$(ele).removeClass("has-error has-success");
		$(ele).find(".help-block").text("");
	}
	//点击新增按钮弹出模态框
	$("#user_add").click(
			function() {
				reset_form("#user_add_modal form");
				$('#user_add_modal').modal({
					backdrop : 'static'
				});
			});
	//表单校验
	function validate_add_form() {
		//校验姓名
		var userName = $("#userNameInput").val();
		var validateUserName = /(^[a-zA-Z0-9_-]{6,16}$)|(^[\u2E80-\u9FFF]{2,5})/;
		if (!validateUserName.test(userName)) {
			//alert("用户名可以说2-5位中文或者6-16位数字字母组合");
			//$("#empNameInput").parent().addClass("has-error");
			//$("#empNameInput").next("span").text("用户名可以说2-5位中文或者6-16位数字字母组合!");
			validate_msg("#userNameInput","fail","用户名可以是2-5位中文或者6-16位数字字母组合!");
			return false;
		}else{
			//$("#empNameInput").parent().addClass("has-success");
			//$("#empNameInput").next("span").text("");
			validate_msg("#userNameInput","success","");
		}
		//校验邮箱
		var email = $("#emailInput").val();
		var validateEmail = /^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/;
		if (!validateEmail.test(email)) {
			//alert("邮箱格式不正确！");
			//$("#emailInput").parent().addClass("has-error");
			//$("#emailInput").next("span").text("邮箱格式不正确！");
			validate_msg("#emailInput","fail","邮箱格式不正确,请重新输入");
			return false;
		}else {
			//$("#emailInput").parent().addClass("has-success");
			//$("#emailInput").next("span").text("");
			validate_msg("#emailInput","success","");
				} 
		return true;
	}
	function validate_msg(ele,status,msg){
		$(ele).parent().removeClass("has-success has-error");
		$(ele).next("span").text("");
		if(status=="success"){
			$(ele).parent().addClass("has-success");
			$(ele).next("span").text(msg);
		}else{
			$(ele).parent().addClass("has-error");
			$(ele).next("span").text(msg);
		}
	}
	$("#userSave").click(function() {
		//校验表单中的数据
		if (!validate_add_form()) {
			return false;
		}
		//1.判断之前的ajax用户名校验是否成功
		if($("#userNameInput").attr("ajax-valite")=="fail"){s
			return false;
		}
		$.ajax({
			url : "${APP_PATH}/user",
			type : "POST",
			data : $("#user_add_modal form").serialize(),
			success : function(result) {
				//alert(result.msg);
				//保存成功之后要关闭模态框并且跳到查询页面的最后一页
				//alert($("#emp_add_modal form").serialize());
				if(result.code==100){
				     $("#user_add_modal").modal('hide');
				     toPage(totalRecords);
				}else{
					 //console.log(result);
					 //哪个字段错误就显示哪个信息
					 if(undefined!=result.extend.errorFields.email){
						 //显示邮箱错误信息
						 validate_msg("#emailInput","fail","邮箱格式不正确,请重新输入");
					 }
					 if(undefined!=result.extend.errorFields.userName){
						 //显示用户名错误信息
						 validate_msg("#userNameInput","fail","用户名必须是2-5位中文或者6-16位数字字母组合!");
					 }
				}
			}
		});
	});
	//检验数据库中是否存在此姓名检验用户名是否可用
	$("#userNameInput").change(function(){
		var userName=this.value;
		$.ajax({
			url:"${APP_PATH}/checkUser",
			type:"POST",
			data:"userName="+userName,
			success:function(result){
				if(result.code==100){
					validate_msg("#userNameInput","success","用户名可用");
					$("#userNameInput").attr("ajax-valite","success");
				}else{
					validate_msg("#userNameInput","fail",result.extend.va_msg);
					$("#userNameInput").attr("ajax-valite","fail");
				}
			}
		});
	});
	</script>
</body>
</html>