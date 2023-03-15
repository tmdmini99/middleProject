package com.home.middle.product;

import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.home.middle.util.Pager;


@Service
public class ProductService {

	@Autowired
	private ProductDAO productDAO = new ProductDAO();
	
	@Autowired
	private ServletContext servletContext;
	
	public List<ProductDTO> getProductList() throws Exception {
		List<ProductDTO> ar =  productDAO.getProductList();

		return ar;
	}
		
	public ProductDTO getProductDetail(ProductDTO productDTO) throws Exception {
		return productDAO.getProductDetail(productDTO);
		
	}
	

	
	
}