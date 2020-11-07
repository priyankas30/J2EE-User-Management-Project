package com.usermng.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.usermng.dao.UserDao;
import com.usermng.dto.MeetingRequest;
import com.usermng.dto.User;

@Service
public class UserServiceImple implements UserService {

	@Autowired
	private UserDao userDao;
	@Override
	public void addUser(User user) {
		userDao.insertUser(user);
		
	}

	@Override
	public boolean findUser(User user) {
		// TODO Auto-generated method stub
		return userDao.loginUser(user);
	}

	@Override
	public void modifyUser(User user) {
		userDao.updateUser(user);
		
	}

	@Override
	public User catchUser(int id) {
		// TODO Auto-generated method stub
		return userDao.selectUser(id);
	}

	@Override
	public List<User> getClientList() {
		
		return userDao.selectAll();
	}

	@Override
	public String forgotPassword(String userEmail) {
		// TODO Auto-generated method stub
		return userDao.forgotPassword(userEmail);
	}

	

}
