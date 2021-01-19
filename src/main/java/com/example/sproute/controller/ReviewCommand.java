package com.example.sproute.controller;

import java.util.Date;

public class ReviewCommand {
	private int reviewId;
	private String userId;
	private double rating;
	private String content;
	private String title;
	private String itemId;
	private String regDate;
	
	public ReviewCommand() {
		
	}
	
	public ReviewCommand(int reviewId, String userId, double rating, String content, String title, String itemId, String regDate) {
		this.reviewId = reviewId;
		this.userId = userId;
		this.rating = rating;
		this.content = content;
		this.title = title;
		this.itemId = itemId;
		this.regDate = regDate;
	}
	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public int getReviewId() {
		return reviewId;
	}
	public void setReviewId(int reviewId) {
		this.reviewId = reviewId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public double getRating() {
		return rating;
	}
	public void setRating(double rating) {
		this.rating = rating;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getItemId() {
		return itemId;
	}
	public void setItemId(String itemId) {
		this.itemId = itemId;
	}
	
	
}
