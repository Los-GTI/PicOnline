/**
 * 
 */
package com.qc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
}
