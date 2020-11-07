package com.usermng.service;

import java.util.List;

import com.usermng.dto.MeetingRequest;

public interface MeetingService {

	
	boolean sendR(MeetingRequest m);
	List<MeetingRequest> getAll(int id);
	List<MeetingRequest> getList();
	void deleteMeeting(MeetingRequest m);
}
