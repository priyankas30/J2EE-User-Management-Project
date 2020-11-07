package com.usermng.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="productLog")
public class ProductLog {

	@Id
	@GeneratedValue
	private int logId;
	
	@Column
	private String date;
	
	@Column
	private String productStatus;

	@Column
	private int userId;
	
	public ProductLog() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getLogId() {
		return logId;
	}

	public void setLogId(int logId) {
		this.logId = logId;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getProductStatus() {
		return productStatus;
	}

	public void setProductStatus(String productStatus) {
		this.productStatus = productStatus;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	@Override
	public String toString() {
		return "ProductLog [logId=" + logId + ", date=" + date + ", productStatus=" + productStatus + ", userId="
				+ userId + "]";
	}
	
	
	
	
}
