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
	
	public int setProductFileAdd(ProductImgDTO productImgDTO) throws Exception {
		return sqlSession.insert(NAMESPACE + "setProductFileAdd", productImgDTO);
	}
	
	public List<ProductDTO> getProductList() throws Exception {
		return sqlSession.selectList(NAMESPACE + "getProductList");
	}
	
	public int setProductUpdate(ProductDTO productDTO) throws Exception {
		return sqlSession.update(NAMESPACE + "setProductUpdate", productDTO);
	}
	
	public int setProductFileDelete(Long fileNum) throws Exception {
		return sqlSession.delete(NAMESPACE + "setProductFileDelete", fileNum);
	}
}
