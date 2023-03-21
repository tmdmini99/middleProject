package com.home.middle.product;

import java.util.List;

public class ProductDTO {
	private Long r;
	private Long productNum;
	private String productName;
	private Long discount;
	private Double discountPercent;
	private Integer productSales;
	private Long categoryNum;
	private List<ProductOptionDTO> productOptionDTOs;
	private List<ProductImgDTO> productImgDTOs;
	
	
	public Long getR() {
		return r;
	}
	public void setR(Long r) {
		this.r = r;
	}
	public Long getProductNum() {
		return productNum;
	}
	public void setProductNum(Long productNum) {
		this.productNum = productNum;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public Long getDiscount() {
		return discount;
	}
	public void setDiscount(Long discount) {
		this.discount = discount;
	}
	public Double getDiscountPercent() {
		return discountPercent;
	}
	public void setDiscountPercent(Double discountPercent) {
		this.discountPercent = discountPercent;
		
	}
	public Integer getProductSales() {
		return productSales;
	}
	public void setProductSales(Integer productSales) {
		this.productSales = productSales;
	}

	public Long getCategoryNum() {
		return categoryNum;
	}
	public void setCategoryNum(Long categoryNum) {
		this.categoryNum = categoryNum;
	}
	public List<ProductOptionDTO> getProductOptionDTOs() {
		return productOptionDTOs;
	}
	public void setProductOptionDTOs(List<ProductOptionDTO> productOptionDTOs) {
		this.productOptionDTOs = productOptionDTOs;
	}
	public List<ProductImgDTO> getProductImgDTOs() {
		return productImgDTOs;
	}
	public void setProductImgDTOs(List<ProductImgDTO> productImgDTOs) {
		this.productImgDTOs = productImgDTOs;
	}
	
	
	
	
	
	
	
	
	
}
