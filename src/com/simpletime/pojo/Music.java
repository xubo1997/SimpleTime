package com.simpletime.pojo;

import java.util.Date;

public class Music {

	private String id;
	private String name;//歌名
	private String singer;//歌手
	private String lyric;//歌词
	private String photoUrl;
	private String downloadUrl;
	private float score;//评分
	private float price;//价格
	private String singerSynopsis;//歌手简介
	private String uploadUserId;//上传ID
	private Date buileTime;//创建时间
	private boolean valid = true;//是否上线
	private int countPraise;//赞的个数
    private int countComment;//评论个数
    private int countBuy;//购买人数
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
	public String getSinger() {
		return singer;
	}
	public void setSinger(String singer) {
		this.singer = singer;
	}
	public String getLyric() {
		return lyric;
	}
	public void setLyric(String lyric) {
		this.lyric = lyric;
	}
	public String getDownloadUrl() {
		return downloadUrl;
	}
	public void setDownloadUrl(String downloadUrl) {
		this.downloadUrl = downloadUrl;
	}
	public float getScore() {
		return score;
	}
	public void setScore(float score) {
		this.score = score;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public String getSingerSynopsis() {
		return singerSynopsis;
	}
	public void setSingerSynopsis(String singerSynopsis) {
		this.singerSynopsis = singerSynopsis;
	}
	public String getUploadUserId() {
		return uploadUserId;
	}
	public void setUploadUserId(String uploadUserId) {
		this.uploadUserId = uploadUserId;
	}
	public Date getBuileTime() {
		return buileTime;
	}
	public void setBuileTime(Date buileTime) {
		this.buileTime = buileTime;
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
	public int getCountBuy() {
		return countBuy;
	}
	public void setCountBuy(int countBuy) {
		this.countBuy = countBuy;
	}
	public String getPhotoUrl() {
		return photoUrl;
	}
	public void setPhotoUrl(String photoUrl) {
		this.photoUrl = photoUrl;
	}
    
}
