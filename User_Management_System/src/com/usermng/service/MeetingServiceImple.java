package com.usermng.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.usermng.dao.MeetingDao;
import com.usermng.dto.MeetingRequest;


@Service
public class MeetingServiceImple implements MeetingService {

	
	
	@Autowired
	private MeetingDao meetingDao;
	@Override
	public boolean sendR(MeetingRequest m) {
		return meetingDao.sendRequest(m);
	}

	@Override
	public List<MeetingRequest> getAll(int id) {
		return meetingDao.selectAll(id);
	}

	@Override
	public List<MeetingRequest> getList() {
		// TODO Auto-generated method stub
		return meetingDao.Allmeeting();
	}

	@Override
	public void deleteMeeting(MeetingRequest m) {
		meetingDao.cancleMeeting(m);
		
	}

}
