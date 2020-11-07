package com.usermng.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.usermng.dao.AdminDao;
import com.usermng.dto.Admin;
import com.usermng.dto.AdminRequest;
import com.usermng.dto.ProductLog;
import com.usermng.dto.User;

@Service
public class AdminServiceImple implements AdminService {

	@Autowired
	private AdminDao adminDao;
	
	
	@Override
	public void addUser(Admin admin) {
		adminDao.insertUser(admin);
		
	}

	@Override
	public boolean startUser(Admin admin) {
		return adminDao.loginUser(admin);
	}

	@Override
	public boolean removeClient(User user) {
		return adminDao.deleteAdmin(user);
	}

	@Override
	public void addMeeting(AdminRequest adminRequest) {
		adminDao.insertMeeting(adminRequest);
		
	}

	@Override
	public void addProductLog(ProductLog plog) {
		adminDao.insertProductLog(plog);
		
	}

	@Override
	public List<ProductLog> getLog(int id) {
		return adminDao.selectLog(id);
	}

	@Override
	public List<AdminRequest> getAll(int id) {
		// TODO Auto-generated method stub
		return adminDao.selectAll(id);
	}

	@Override
	public List<AdminRequest> CheckAllMeeting() {
		// TODO Auto-generated method stub
		return adminDao.AllMeetings();
	}

}
