package com.usermng.service;

import java.util.List;

import com.usermng.dto.Admin;
import com.usermng.dto.AdminRequest;
import com.usermng.dto.ProductLog;
import com.usermng.dto.User;

public interface AdminService {
	void addUser(Admin admin);
	void addMeeting(AdminRequest adminRequest);
	boolean startUser(Admin admin);
	boolean removeClient(User user);
	void addProductLog(ProductLog plog);
	List<ProductLog> getLog(int id);
	List<AdminRequest> getAll(int id);
	List<AdminRequest> CheckAllMeeting();
}
