package com.usermng.dao;

import java.util.List;

import com.usermng.dto.MeetingRequest;

public interface MeetingDao {

	
	boolean sendRequest(MeetingRequest m);
	List<MeetingRequest> selectAll(int id);
	List<MeetingRequest> Allmeeting();
	void cancleMeeting(MeetingRequest m);

}
