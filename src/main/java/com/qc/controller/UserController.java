/**
 * 
 */
package com.qc.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.qc.bean.Msg;
import com.qc.bean.User;
import com.qc.service.UserService;

/**
 * @author qinc
 * @date 2017��12��6�� ����2:32:36
 */
@Controller
public class UserController {
	
	@Autowired
	UserService userService;
	
	/*
	 * 查询用户信息，分页
	 * */
	@RequestMapping("/users")
	@ResponseBody
	public Msg getUsersWithJson(@RequestParam(value="pn",defaultValue="1") Integer pn){
		// 这不是一个分页查询
	    // 引入pageHelper插件,查询之前传入页码和每页显示的记录数
		PageHelper.startPage(pn,5);
		// startPage后面紧跟的查询就是分页查询
		List<User> users=userService.getAll();
		// 使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了，里面封装了详细的分页信息，包括查询出来的数据
		PageInfo page=new PageInfo(users,5);
		return Msg.success().add("pageInfo", page);
	}
	
	/*
	 * JSR303后端校验
	 * 员工保存方法
	 */
	@RequestMapping(value = "/user", method = RequestMethod.POST)
	@ResponseBody
	public Msg getUsers(@Valid User user,BindingResult result) {
		if(result.hasErrors()){
			Map<String, Object> map =  new HashMap<>();
			List<FieldError> errors=result.getFieldErrors();
			for(FieldError fieldError:errors){
				System.out.println("错误的字段名："+fieldError.getField());
				System.out.println("错误信息："+fieldError.getDefaultMessage());
				map.put(fieldError.getField(),fieldError.getDefaultMessage());
			}
			return Msg.fail().add("errorFields", map);
		}else{
			userService.userSave(user);
			return Msg.success();
		}
	}
	
	@RequestMapping(value="/login" , method = RequestMethod.POST)
	@ResponseBody
	public Msg login(User user){
		boolean b=userService.checkUser(user.getUsername(),user.getPassword());
		if(b){
			return Msg.success();
		}else{
			return Msg.fail();
		}
	}
	
	@RequestMapping(value="/register",method=RequestMethod.POST)
	@ResponseBody
	public Msg register(User user){
		userService.userRegister(user);
		return Msg.success();
	}
	
	/*
	 * 检查用户名是否可用
	 * */
	@RequestMapping(value="/checkUser" ,method=RequestMethod.POST)
	@ResponseBody
	public Msg checkuser(@RequestParam("userName") String userName) {
		//先判断用户名是不是合法的表达式
		String regx="(^[a-zA-Z0-9_-]{6,16}$)|(^[\u2E80-\u9FFF]{2,5})";
		if(!userName.matches(regx)){
			return Msg.fail().add("va_msg", "用户名必须是6-16位数字和字母组合或者2-5位中文");
		}
		//数据库用户名重复校验
		boolean bool = userService.checkuser(userName);
		if (bool) {
			return Msg.success();
		} else {
			return Msg.fail().add("va_msg", "用户名已存在请重新输入");
		}
	}
}
