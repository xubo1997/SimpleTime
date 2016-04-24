package com.simpletime.pojo;

import java.util.Date;

public class User {
    private String id;
    private String nickName;
    private int sex;//性别，1：男，2：女
    private String email;
    private String phone;
    private String password;//MD5加密后
    private Date joinTime;
    private String photoUrl;
    private int integral;//用户积分
    private Date lastSignTime;//最后登录时间
    private int countContinuityLogin;//连续登录天数
    public User() {
	}
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    public String getNickName() {
        return nickName;
    }
    public void setNickName(String nickName) {
        this.nickName = nickName;
    }
    public int getSex() {
        return sex;
    }
    public void setSex(int sex) {
        this.sex = sex;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getPhone() {
        return phone;
    }
    public void setPhone(String phone) {
        this.phone = phone;
    }
    public Date getJoinTime() {
        return joinTime;
    }
    public void setJoinTime(Date joinTime) {
        this.joinTime = joinTime;
    }
    public String getPhotoUrl(){
        return photoUrl;
    }
    public void setPhotoUrl(String photoUrl){
        this.photoUrl = photoUrl;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
	public int getIntegral() {
		return integral;
	}
	public void setIntegral(int integral) {
		this.integral = integral;
	}
	public Date getLastSignTime() {
		return lastSignTime;
	}
	public void setLastSignTime(Date lastSignTime) {
		this.lastSignTime = lastSignTime;
	}
	public int getCountContinuityLogin() {
		return countContinuityLogin;
	}
	public void setCountContinuityLogin(int countContinuityLogin) {
		this.countContinuityLogin = countContinuityLogin;
	}
}
