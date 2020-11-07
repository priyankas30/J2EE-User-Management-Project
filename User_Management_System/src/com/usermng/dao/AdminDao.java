package com.usermng.dao;

import java.util.List;

import com.usermng.dto.Admin;
import com.usermng.dto.AdminRequest;
import com.usermng.dto.ProductLog;
import com.usermng.dto.User;


public interface AdminDao {

	void insertMeeting(AdminRequest adminRequest);
	void insertUser(Admin admin);
	boolean loginUser(Admin admin);
	boolean deleteAdmin(User user);
	void insertProductLog(ProductLog plog);
	List<ProductLog> selectLog(int id);
	List<AdminRequest> selectAll(int id);
	List<AdminRequest> AllMeetings();
}
