package com.usermng.service;

import java.util.List;

import com.usermng.dto.MeetingRequest;
import com.usermng.dto.User;


public interface UserService {

	void addUser(User user);
	//void deleteUser(int userId);
	boolean findUser(User user);
	void modifyUser(User user);
	User catchUser(int id);
	List<User> getClientList();
	String forgotPassword(String userEmail);
	
}
