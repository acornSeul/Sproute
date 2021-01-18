package com.example.sproute.domain;

import java.util.Date;

public class Account {
	private int id;
	private String userId;
	private String password;
	private String email;
	private String name;
	private String address;
	private String zipCode;
	private String detailAddress;
	private String phone;
	private String sex;
	private String birth;
	private String totalAddress;
	
	public String getTotalAddress() {
		return (address + detailAddress);
	}

	public Account() {
	}

	public String getZipCode() {
		return zipCode;
	}

	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

	public Account(String userId, String password, String email, String name, String address, String phone, String sex,
			String birth, String zipCode, String detailAddress) {
		this.userId = userId;
		this.password = password;
		this.email = email;
		this.name = name;
		this.zipCode = zipCode;
		this.address = address;
		this.phone = phone;
		this.sex = sex;
		this.birth = birth;
		this.detailAddress = detailAddress;
	}
	
	public String getDetailAddress() {
		return detailAddress;
	}

	public void setDetailAddress(String detailAddress) {
		this.detailAddress = detailAddress;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}

}
