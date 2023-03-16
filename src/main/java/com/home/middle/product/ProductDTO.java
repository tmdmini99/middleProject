package com.home.middle.product;

public class ProductDTO {
	private Long productNum;
	private String productName;
	private Long discount;
	private Double discountPercent;
	private Integer productSales;
	private Long categoryNum;
	private ProductOptionDTO productOptionDTO;
	private ProductImgDTO productImgDTO;
	
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
	
	
	
	
	
	
	
	
	
}
