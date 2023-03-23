package com.home.middle.product;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.home.middle.util.Pager;

@Repository
public class ProductDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.home.middle.product.ProductDAO.";
	
	public Long getTotalCount(Pager pager) throws Exception {
		Long l= sqlSession.selectOne(NAMESPACE + "getTotalCount", pager);
		return l;
	}
			
	public int setProductAdd(ProductDTO productDTO) throws Exception {
		return sqlSession.insert(NAMESPACE + "setProductAdd", productDTO);
	}
	
	public int setProductFileAdd(ProductImgDTO productImgDTO) throws Exception {
		return sqlSession.insert(NAMESPACE + "setProductFileAdd", productImgDTO);
	}
	
	public List<ProductDTO> getProductList(Pager pager) throws Exception {
		List<ProductDTO> ar = sqlSession.selectList(NAMESPACE + "getProductList", pager);
		return ar;
	}
	
	public ProductDTO getProductDetail(ProductDTO productDTO) throws Exception { 
		productDTO =  sqlSession.selectOne(NAMESPACE + "getProductDetail", productDTO);
	    return productDTO;
	}  
	
	public int setProductUpdate(ProductDTO productDTO) throws Exception {
		return sqlSession.update(NAMESPACE + "setProductUpdate", productDTO);
	}
	
	public int setProductFileDelete(Long fileNum) throws Exception {
		return sqlSession.delete(NAMESPACE + "setProductFileDelete", fileNum);
	}
	
	public List<ProductImgDTO> getProductFileList(ProductDTO productDTO) throws Exception {
		return sqlSession.selectList(NAMESPACE + "getProductFileList", productDTO);
	}
	
	public int setProductDelete(ProductDTO productDTO) throws Exception {
		return sqlSession.delete(NAMESPACE + "setProductDelete", productDTO);
	}
	
}
