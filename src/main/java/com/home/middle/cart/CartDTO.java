package com.home.middle.cart;

import java.sql.Date;

public class CartDTO {
	private Long orderNum;
	private Long productNum;
	private String id;
	private Long totalPrice;
	private Long productEa;
	private Date date;
	private Long buyCheck;
	
	public Long getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(Long orderNum) {
		this.orderNum = orderNum;
	}
	public Long getProductNum() {
		return productNum;
	}
	public void setProductNum(Long productNum) {
		this.productNum = productNum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Long getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(Long totalPrice) {
		this.totalPrice = totalPrice;
	}
	public Long getProductEa() {
		return productEa;
	}
	public void setProductEa(Long productEa) {
		this.productEa = productEa;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public Long getBuyCheck() {
		return buyCheck;
	}
	public void setBuyCheck(Long buyCheck) {
		this.buyCheck = buyCheck;
	}
}
