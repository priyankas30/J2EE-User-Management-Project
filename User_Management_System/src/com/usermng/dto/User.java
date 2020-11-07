package com.usermng.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="user")
public class User {
	
	@Id
	@GeneratedValue
	@Column(name="user_id")
	private int userId;
	
	@Column(name="user_pass")
	private String userPass;
	
	
	@Column(name="user_fname")
	private String userFname;
	
	@Column(name="user_lname")
	private String userLname;
	
	@Column(name="user_email")
	private String userEmail;
	
	@Column(name="user_mob")
	private String userMob;
	
	@Column(name="gender")
	private String gender;
	
	

	@Column(name="city")
	private String city;
	
	@Column(name="state")
	private String state;
	
	@Column(name="product_name")
	private String productName;
	
	
	@Column(name="requirement")
	private String requirement;
	
	@Column(name="product_summery")
	private String productSummery;
	
	
	@Column(name="duration")
	private String duration;
	
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	
	public String getUserPass() {
		return userPass;
	}
	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}
	public String getUserFname() {
		return userFname;
	}
	public void setUserFname(String userFname) {
		this.userFname = userFname;
	}
	public String getUserLname() {
		return userLname;
	}
	public void setUserLname(String userLname) {
		this.userLname = userLname;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserMob() {
		return userMob;
	}
	public void setUserMob(String userMob) {
		this.userMob = userMob;
	}
	
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getRequirement() {
		return requirement;
	}
	public void setRequirement(String requirement) {
		this.requirement = requirement;
	}
	public String getProductSummery() {
		return productSummery;
	}
	public void setProductSummery(String productSummery) {
		this.productSummery = productSummery;
	}
	public String getDuration() {
		return duration;
	}
	public void setDuration(String duration) {
		this.duration = duration;
	}
	@Override
	public String toString() {
		return "User [userId=" + userId + ", userPass=" + userPass + ", userFname=" + userFname + ", userLname="
				+ userLname + ", userEmail=" + userEmail + ", userMob=" + userMob + ", gender=" + gender + ", city="
				+ city + ", state=" + state + ", productName=" + productName + ", requirement=" + requirement
				+ ", productSummery=" + productSummery + ", duration=" + duration + "]";
	}

	

	
	
	
	

}
