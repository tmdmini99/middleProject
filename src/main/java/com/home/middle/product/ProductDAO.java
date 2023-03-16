package com.home.middle.product;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.home.middle.product.ProductDAO.";
	
			
	public int setProductAdd(ProductDTO productDTO) throws Exception {
		return sqlSession.insert(NAMESPACE + "setProductAdd", productDTO);
	}
	
	public int setProductFileAdd(ProductImgDTO productFileDTO) throws Exception {
		return sqlSession.insert(NAMESPACE + "setProductFileAdd", productFileDTO);
	}
	
	public List<ProductDTO> getProductList() throws Exception {
		return sqlSession.selectList(NAMESPACE + "getProductList");
	}
	
	
}
