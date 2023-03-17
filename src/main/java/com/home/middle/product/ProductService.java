package com.home.middle.product;

import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.home.middle.util.FileManager;
import com.home.middle.util.Pager;


@Service
public class ProductService {

	@Autowired
	private ProductDAO productDAO = new ProductDAO();
	
	@Autowired
	private ServletContext servletContext;
	
	@Autowired
	private FileManager fileManager;
	
	public List<ProductDTO> getProductList() throws Exception {
		List<ProductDTO> ar =  productDAO.getProductList();

		return ar;
	}
		
	public ProductDTO getProductDetail(ProductDTO productDTO) throws Exception {
		return productDAO.getProductDetail(productDTO);
		
	}
	

	
	///////////////////////////미리가 구현한 파트 ///////////////////////////////
	public int setProductAdd(ProductDTO productDTO, MultipartFile[] pic) throws Exception {
		
		int result =  productDAO.setProductAdd(productDTO);
		
		String realPath = servletContext.getRealPath("resources/upload/product");
		
		for(MultipartFile pics : pic) {
			if(pics.isEmpty()) {
				continue;
			}
			
			String fileName = fileManager.fileSave(pics, realPath);
			
			ProductImgDTO productImgDTO = new ProductImgDTO();
			
			productImgDTO.setFileName(fileName);
			productImgDTO.setOriName(pics.getOriginalFilename());
			productImgDTO.setProductNum(productDTO.getProductNum());
			
			result = productDAO.setProductFileAdd(productImgDTO);
			
		}
			
		
		return result;	
	}
	////////////////////여기까지 미리 파트 ////////////////////////////
	
	
}