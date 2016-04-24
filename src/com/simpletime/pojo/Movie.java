package com.simpletime.pojo;

import java.util.Date;

public class Movie {

	private String id;
	private String name;
	private String contentSynopsis;//内容简介
	private String performer;//主演
	private String director;//导演
	private String screenwriter;//编剧
	private String area;//地区
	private Date showTime;//上映时间
	private String photoUrl;//
	private String otherName;
	private String type;
	private Date buileTime;//创建时间
	private float score;//评分
	private boolean valid;//是否上线
	private int countPraise;//赞的个数
    private int countComment;//评论个数
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContentSynopsis() {
		return contentSynopsis;
	}
	public void setContentSynopsis(String contentSynopsis) {
		this.contentSynopsis = contentSynopsis;
	}
	public String getPerformer() {
		return performer;
	}
	public void setPerformer(String performer) {
		this.performer = performer;
	}
	public String getDirector() {
		return director;
	}
	public void setDirector(String director) {
		this.director = director;
	}
	public String getScreenwriter() {
		return screenwriter;
	}
	public void setScreenwriter(String screenwriter) {
		this.screenwriter = screenwriter;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public Date getShowTime() {
		return showTime;
	}
	public void setShowTime(Date showTime) {
		this.showTime = showTime;
	}
	public String getOtherName() {
		return otherName;
	}
	public void setOtherName(String otherName) {
		this.otherName = otherName;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Date getBuileTime() {
		return buileTime;
	}
	public void setBuileTime(Date buileTime) {
		this.buileTime = buileTime;
	}
	public float getScore() {
		return score;
	}
	public void setScore(float score) {
		this.score = score;
	}
	public boolean isValid() {
		return valid;
	}
	public void setValid(boolean valid) {
		this.valid = valid;
	}
	public int getCountPraise() {
		return countPraise;
	}
	public void setCountPraise(int countPraise) {
		this.countPraise = countPraise;
	}
	public int getCountComment() {
		return countComment;
	}
	public void setCountComment(int countComment) {
		this.countComment = countComment;
	}
	public String getPhotoUrl() {
		return photoUrl;
	}
	public void setPhotoUrl(String photoUrl) {
		this.photoUrl = photoUrl;
	}
    
}
