package com.usermng.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="meeting")
public class MeetingRequest {

	@Id
	@GeneratedValue
	@Column(name="meeting_id")
	private int meetingId;
	
	@Column(name="date")
	private String date;
	
	@Column(name="time")
	private String time;
	
	@Column(name="location")
	private String location;
	
	@Column(name="meeting_Reason")
	private String meetingReason;
	
	@Column(name="cancle_Reason")
	private String cancleReason;
	
	@Column(name="user_id")
	private int userId;
	
	
	
	public int getUserId() {
		return userId;
	}
	
	
	public int getMeetingId() {
		return meetingId;
	}


	public void setMeetingId(int meetingId) {
		this.meetingId = meetingId;
	}
	
	


	public void setUserId(int userId) {
		this.userId = userId;
	}
	public MeetingRequest() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getMeetingReason() {
		return meetingReason;
	}
	public void setMeetingReason(String meetingReason) {
		this.meetingReason = meetingReason;
	}


	public String getCancleReason() {
		return cancleReason;
	}


	public void setCancleReason(String cancleReason) {
		this.cancleReason = cancleReason;
	}

	

	
	
	
}
