/**
 * 
 */
package com.qc.service;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qc.bean.User;
import com.qc.bean.UserExample;
import com.qc.bean.UserExample.Criteria;
import com.qc.dao.UserMapper;

/**
 * @author qinc
 * @date 2017��12��7�� ����11:33:35
 */
@Service
public class UserService {
    
	@Autowired
	UserMapper userMapper;

	/**
	 * @param username
	 * @param password
	 * ����true��ʾ�û���������ȷ
	 */
	public boolean checkUser(String username, String password) {
		// TODO Auto-generated method stub
		UserExample example=new UserExample();
		Criteria criteria=example.createCriteria();
		criteria.andUsernameEqualTo(username);
		criteria.andPasswordEqualTo(password);
		long count=userMapper.countByExample(example);
		return count==1;
	}

	public void userRegister(User user) {
		// TODO Auto-generated method stub
		userMapper.insert(user);
	}

	public List<User> getAll() {
		// TODO Auto-generated method stub
		return userMapper.selectByExample(null);
	}
	
	/*
	 * 检验用户名是否可用
	 * @param userName
	 * @return true:代表可用s
	 * */
	public boolean checkuser(String userName) {
		// TODO Auto-generated method stub
		UserExample example=new UserExample();
		Criteria criteria=example.createCriteria();
		criteria.andUsernameEqualTo(userName);
		long count=userMapper.countByExample(example);
		return count==0;
	}

	public void userSave(@Valid User user) {
		// TODO Auto-generated method stub
		userMapper.insertSelective(user);
	}
}
