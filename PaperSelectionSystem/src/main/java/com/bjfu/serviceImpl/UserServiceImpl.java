package com.bjfu.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bjfu.mapper.UserMapper;
import com.bjfu.po.User;
import com.bjfu.service.UserService;

@Service
public class UserServiceImpl implements UserService{
	@Autowired
	private UserMapper userDao;
	@Override
	public User getUser(User u) {
		return userDao.selectUser(u);
	}
	@Override
	public Boolean addUser(User u) {
		userDao.insertUser(u);
		return true;
	}
}
