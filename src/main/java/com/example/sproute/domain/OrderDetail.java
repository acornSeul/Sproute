package com.example.sproute.domain;

public class OrderDetail {
	String detailId;
	String orderId;
	String itemId;
	String title;
	int price;
	int quantity;
	
	public OrderDetail(String orderId, String itemId, String title, int price, int quantity) {
		this.orderId = orderId;
		this.itemId = itemId;
		this.title = title;
		this.price = price;
		this.quantity = quantity;
	}
	
	public OrderDetail(String orderId, String itemId, int price, int quantity) {
		this.orderId = orderId;
		this.itemId = itemId;
		this.price = price;
		this.quantity = quantity;
	}
	
	public String getDetailId() {
		return detailId;
	}
	public void setDetailId(String detailId) {
		this.detailId = detailId;
	}
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public String getItemId() {
		return itemId;
	}
	public void setItemId(String itemId) {
		this.itemId = itemId;
	}
	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	@Override
	public String toString() {
		return "OrderDetail [detailId=" + detailId + ", orderId=" + orderId + ", itemId=" + itemId + ", itemTitle="
				+ title + ", price=" + price + ", quantity=" + quantity + "]";
	}
	
	
	
	
}
