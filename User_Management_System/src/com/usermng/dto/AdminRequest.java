package com.usermng.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="adminmeeting")
public class AdminRequest {

	
	@Id
	@GeneratedValue
	@Column
	private int amId;
	
	@Column(name="date")
	private String date;
	
	
	@Column(name="time")
	private String time;
	
	@Column(name="location")
	private String location;
	
	@Column(name="meeting_Reason")
	private String meetingReason;
	
	
	@Column(name="user_id")
	private int userId;
	
	


	public AdminRequest() {
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


	public int getUserId() {
		return userId;
	}


	public void setUserId(int userId) {
		this.userId = userId;
	}


	public int getAmId() {
		return amId;
	}


	public void setAmId(int amId) {
		this.amId = amId;
	}

	

	
	


	


	
	
}
