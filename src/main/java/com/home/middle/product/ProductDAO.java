package com.home.middle.product;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.home.middle.util.Pager;

@Repository
public class ProductDAO {
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.home.middle.product.ProductDAO.";
	
	public Long getProductNum() throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getProductNum");
	}
	
	public List<ProductDTO> getProductList()throws Exception{
		return sqlSession.selectList(NAMESPACE+"getProductList");
	}
	
	//1개는 selectOne으로 받기 검색하려면 변수가 필요하니깐 뒤에 추가로 매개변수 dto 선언 
	public ProductDTO getProductDetail(ProductDTO productDTO) throws Exception {		
		return sqlSession.selectOne(NAMESPACE+"getProductDetail", productDTO);
	}
	
	
	//////////////////////미리가 구현한 부분 ///////////////////////////
	public int setProductAdd(ProductDTO productDTO) throws Exception {
		return sqlSession.insert(NAMESPACE + "setProductAdd", productDTO);
	}
	
	public int setProductFileAdd(ProductImgDTO productFileDTO) throws Exception {
		return sqlSession.insert(NAMESPACE + "setProductFileAdd", productFileDTO);
	}
	//////////////////////////여기까지///////////////////////////////
	
}
