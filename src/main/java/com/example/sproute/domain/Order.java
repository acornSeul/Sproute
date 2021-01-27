package com.example.sproute.domain;

import java.util.Date;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;

import com.example.sproute.controller.OrderForm;

public class Order {
	String orderId;
	String userId;
	String orderDate;
	String shipAddress;
	String shipZipCode;
	String shipAddrDetail;
	String shipTotalAddress;
	@NotBlank
	String address;
	String zipCode;
	String addrDetail;
	String totalAddress;
	int totalPrice;
	String cardType;
	@NotBlank
	@Pattern(regexp = "^\\d{3}\\s\\d{4}\\s\\d{4}\\s\\d{4}$")
	String cardNumber;
	@NotBlank
	@Pattern(regexp = "^\\d{2}/\\d{2}$")
	String expireDate;
	@NotBlank
	String userName; // 회원이름
	int quantity;
	
	
	public String getTotalAddress() {
		return totalAddress;
	}

	public String getShipTotalAddress() {
		return (shipAddress + " " + shipAddrDetail + " (" + shipZipCode + ")");
	}

	public String getShipZipCode() {
		return shipZipCode;
	}

	public void setShipZipCode(String shipZipCode) {
		this.shipZipCode = shipZipCode;
	}

	public String getShipAddrDetail() {
		return shipAddrDetail;
	}

	public void setShipAddrDetail(String shipAddrDetail) {
		this.shipAddrDetail = shipAddrDetail;
	}
	
	public String getZipCode() {
		return zipCode;
	}

	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

	public String getAddrDetail() {
		return addrDetail;
	}

	public void setAddrDetail(String addrDetail) {
		this.addrDetail = addrDetail;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}

	public String getShipAddress() {
		return shipAddress;
	}

	public void setShipAddress(String shipAddress) {
		this.shipAddress = shipAddress;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}

	public String getCardType() {
		return cardType;
	}

	public void setCardType(String cardType) {
		this.cardType = cardType;
	}

	public String getCardNumber() {
		return cardNumber;
	}

	public void setCardNumber(String cardNumber) {
		this.cardNumber = cardNumber;
	}

	public String getExpireDate() {
		return expireDate;
	}

	public void setExpireDate(String expireDate) {
		this.expireDate = expireDate;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public void initOrder(Account account) {
		userName = account.getName();
		orderDate = new String();
		userId = account.getUserId();

		shipAddress = "";
		shipZipCode = "";
		shipAddrDetail = "";
		
		address = account.getAddress();
		zipCode = account.getZipCode();
		addrDetail = account.getDetailAddress();
		totalAddress = account.getTotalAddress();
		

		cardNumber = "999 9999 9999 9999";
		expireDate = "21/01";
		cardType = "Visa";
	}

	@Override
	public String toString() {
		return "Order [orderId=" + orderId + ", userId=" + userId + ", orderDate=" + orderDate + ", shipAddress="
				+ shipAddress + ", address=" + address + ", totalPrice=" + totalPrice + ", cardType=" + cardType
				+ ", cardNumber=" + cardNumber + ", expireDate=" + expireDate + ", userName=" + userName + ", quantity="
				+ quantity + "]";
	}

	

}