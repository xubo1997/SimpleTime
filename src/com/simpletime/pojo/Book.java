package com.simpletime.pojo;

import java.io.Serializable;
import java.util.Date;

public class Book implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String id;
	private String name;
	private String contentSynopsis;//内容简介
	private String author;
	private String downloadUrl;
	private String photoUrl;
	private String tryReadContent;
	private String authorSynopsis;//作者简介
	private float price;//价格
	private float score;//评分
	private String uploadUserId;//上传者ID
	private Date buileTime;//创建时间
	private boolean valid = true;//是否上线
	private int countPraise;//赞的个数
    private int countComment;//评论个数
    private int countBuy;//购买人数
    private String isbn;//国际标准书号
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
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getDownloadUrl() {
		return downloadUrl;
	}
	public void setDownloadUrl(String downloadUrl) {
		this.downloadUrl = downloadUrl;
	}
	public String getAuthorSynopsis() {
		return authorSynopsis;
	}
	public void setAuthorSynopsis(String authorSynopsis) {
		this.authorSynopsis = authorSynopsis;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public float getScore() {
		return score;
	}
	public void setScore(float score) {
		this.score = score;
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
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public String getTryReadContent() {
		return tryReadContent;
	}
	public void setTryReadContent(String tryReadContent) {
		this.tryReadContent = tryReadContent;
	}
	public String getPhotoUrl() {
		return photoUrl;
	}
	public void setPhotoUrl(String photoUrl) {
		this.photoUrl = photoUrl;
	}
	
}
