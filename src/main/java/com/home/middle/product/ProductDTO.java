package com.home.middle.product;

public class ProductDTO {
	//product 테이블
	private Long  ProductNum;
	private String ProductName;
	private Long Discount;
	private Double DiscountPercent;
	
	///getters setters
	public Long getProductNum() {
		return ProductNum;
	}
	public void setProductNum(Long productNum) {
		ProductNum = productNum;
	}
	public String getProductName() {
		return ProductName;
	}
	public void setProductName(String productName) {
		ProductName = productName;
	}
	public Long getDiscount() {
		return Discount;
	}
	public void setDiscount(Long discount) {
		Discount = discount;
	}
	public Double getDiscountPercent() {
		return DiscountPercent;
	}
	public void setDiscountPercent(Double discountPercent) {
		DiscountPercent = discountPercent;
	}
	
  
	
	
	
	
}
