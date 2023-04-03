package com.home.middle.product;

import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.home.middle.util.FileManager;
import com.home.middle.util.Pager;

@Service
public class ProductService {
	
	@Autowired
	private ProductDAO productDAO;
	@Autowired
	private FileManager fileManager;
	@Autowired
	//저장관리는 os가 존재하는데, os와 통신하는 과정을 하는 역할
	private ServletContext servletContext;
	
	
	public int setProductAdd(ProductDTO productDTO, MultipartFile[] pic, HttpSession session) throws Exception {
		
		int result =  productDAO.setProductAdd(productDTO);
		
		System.out.println(result);
		
		String realPath = session.getServletContext().getRealPath("resources/upload/product");
		
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
	
	public List<ProductDTO> getMemberProductList(Pager pager) throws Exception {
		pager.makeRow();
		
		pager.makeNum(productDAO.getTotalCount(pager));
		
		List<ProductDTO> ar = productDAO.getMemberProductList(pager);
		
		return ar;
	}
	
	
    public ProductDTO getProductDetail(ProductDTO productDTO) throws Exception {
    	
    	productDTO =  productDAO.getProductDetail(productDTO);
    	
	    return productDTO;
	      
   }
    
	public int setProductUpdate(ProductDTO productDTO, MultipartFile[] pic, Long[] fileNums, HttpSession session) throws Exception {
		int result =  productDAO.setProductUpdate(productDTO);
		
		if(fileNums != null) {
			for(Long fileNum : fileNums) {
				productDAO.setProductFileDelete(fileNum);
			}
			
			//파일 다시 add
			String realPath = session.getServletContext().getRealPath("resources/upload/product/");
			
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
		}
		//파일삭제
		
		
		return result;
		
	}
	
	public int setProductDelete(HttpSession session, ProductDTO productDTO) throws Exception {
		List<ProductImgDTO> ar = productDAO.getProductFileList(productDTO);
		
		int result =  productDAO.setProductDelete(productDTO);
		
		if(result > 0) {
			String realPath = session.getServletContext().getRealPath("resources/upload/product/");
			
			for(ProductImgDTO productImgDTO : ar) {
				
				boolean check =  fileManager.fileDelete(realPath, productImgDTO.getFileName());
			}
			
			
		}
		
		return result;
	}

}
