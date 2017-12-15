

$(function () {
    // 验证码
    $("#captcha").click(function() {
        var $this = $(this);
        var url = $this.data("src") + new Date().getTime();
        $this.attr("src", url);
    });
});




$(document).ready(function() {
    if ($.cookie("savePwd") == "true") {
        $("#savePwd").attr("checked", true);
        $("#username").val($.cookie("username"));
        $("#password").val($.cookie("password"));
    }
});
 function login(){
 	var userName=$("#username").val();
 	var passWord=$("#password").val();
 	var captcha=$("#captchax").val();
 	if(document.getElementById("savePwd").checked){
        $.cookie("savePwd", "true", { expires: 20 }); // 存储一个带20天期限的 cookie
        $.cookie("username", userName, { expires: 20 }); // 存储一个带20天期限的 cookie
        $.cookie("password", passWord, { expires: 20 }); // 存储一个带20天期限的 cookie
    } else {
        $.cookie("savePwd", "false", { expires: -1 });        // 删除 cookie
        $.cookie("username", '', { expires: -1 });
        $.cookie("password", '', { expires: -1 });
    }
 	if(userName == "用户名" || userName == null || userName == ""){
		Showbo.Msg.alert("请输入用户名");
		return;
	}else if(passWord == "Password" || passWord == null || passWord == ""){
		Showbo.Msg.alert("请输入密码");
		return;
	}else if(captcha == "请输入验证码" || captcha == null || captcha == ""){
		Showbo.Msg.alert("请输入验证码");
		return;
	}
	var indexLayer = layer.msg(
			'正在登录系统...', {
				icon : 16,
				shade : 0.01,
				time : 0
			});
 
 	$.ajax({
 		url:"login.json",
 		type:"POST",
 		data:{
 			"username" : userName,
 			"password" : passWord,
 			"captcha"	:captcha
 		},
 		dataType : "json",
		success : function(data){
			layer.close(indexLayer);
			var result = eval(data);
			var url;
			if(result.success == true){
				url = "index";
				location.href = url;
			}else{ 
				var msg = result.msg;
				
				if(result.errors.unLogout != null){
					//msg=result.errors.unLogout
					msg="检测到本电脑已经登录其他用户<br>请先退出本电脑其他用户的登录<br>或先关闭浏览器强制退出其他登录用户！";
				}
				Showbo.Msg.alert(msg);
				 $("#captcha")[0].click();
			}
		},
		error : function (XMLHttpRequest, textStatus, errorThrown) {
			layer.close(indexLayer);
			Showbo.Msg.alert("登录失败,请稍后再试！");
 			 this; // the options for this ajax request
		}
 	});
 }
 
	

