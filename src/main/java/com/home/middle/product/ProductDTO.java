package com.home.middle.product;

public class ProductDTO {
	//product 테이블
	private Long  productNum;
	private String productName;
	private Long discount;
	private Double discountPercent;
	private Long productSales;
	private Long categoryNum;
	private ProductOptionDTO productOptionDTO;
	private ProductImgDTO productImgDTO;
	
	public ProductOptionDTO getProductOptionDTO() {
		return productOptionDTO;
	}
	public void setProductOptionDTO(ProductOptionDTO productOptionDTO) {
		this.productOptionDTO = productOptionDTO;
	}
	public ProductImgDTO getProductImgDTO() {
		return productImgDTO;
	}
	public void setProductImgDTO(ProductImgDTO productImgDTO) {
		this.productImgDTO = productImgDTO;
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
	public Long getProductSales() {
		return productSales;
	}
	public void setProductSales(Long productSales) {
		this.productSales = productSales;
	}
	public Long getCategoryNum() {
		return categoryNum;
	}
	public void setCategoryNum(Long gategoryNum) {
		this.categoryNum = gategoryNum;
	}
	
	
	

	
	
}
