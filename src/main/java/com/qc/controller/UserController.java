/**
 * 
 */
package com.qc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.qc.bean.Msg;
import com.qc.bean.User;
import com.qc.service.UserService;

/**
 * @author qinc
 * @date 2017年12月6日 下午2:32:36
 */
@Controller
public class UserController {
	
	@Autowired
	UserService userService;
	
	
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
}
