package com.simpletime.pojo;

import java.util.Date;

/**
 * 签到表 
 */
public class Sign {

	private String id;
	private String userId;
	private Date signTime;//签到时间
	private int integral;//该次签到获取的积分
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public Date getSignTime() {
		return signTime;
	}
	public void setSignTime(Date signTime) {
		this.signTime = signTime;
	}
	public int getIntegral() {
		return integral;
	}
	public void setIntegral(int integral) {
		this.integral = integral;
	}
	
}
