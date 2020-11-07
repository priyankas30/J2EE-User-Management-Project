package com.usermng.dao;

import java.util.List;

import com.usermng.dto.MeetingRequest;
import com.usermng.dto.User;

public interface UserDao {

	void insertUser(User user);
	//void deleteUser(int userId);
	boolean loginUser(User user);
	void updateUser(User user);
	User selectUser(int id);
	List<User> selectAll();
	String forgotPassword(String userEmail);
	
	
}
