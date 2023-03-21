package com.home.middle.product;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/product/*")
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	@GetMapping("list")
	public ModelAndView getProductList() throws Exception {
		ModelAndView mv = new ModelAndView();
		List<ProductDTO> ar =  productService.getProductList();
		
		mv.setViewName("product/productList");
		mv.addObject("list", ar);
		
		return mv;
	}
	
	@GetMapping("add")
	public ModelAndView setProductAdd() throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("product/productAdd");
		return mv;
	}
	
	@PostMapping("add")
	public ModelAndView setProductAdd(ProductDTO productDTO, MultipartFile[] pics) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		int result =  productService.setProductAdd(productDTO, pics);
		String message = "등록 실패";
		
		if(result > 0) {
			message = "글이 등록되었습니다";
		}
		
		mv.addObject("result", message);
		mv.setViewName("common/result");
		mv.addObject("url", "./list");
		return mv;
	}
	
   @RequestMapping(value="detail",method=RequestMethod.GET)
   public ModelAndView getProductDetail(ProductDTO productDTO, Model model) throws Exception{
      //파라미터 이름과 setter의 이름과 같아야함 
      ModelAndView mv = new ModelAndView();
     
      productDTO = productService.getProductDetail(productDTO);     

       mv.setViewName("product/productDetail");
       
       mv.addObject("dto",productDTO);
      
      return mv;
      
   }

	@GetMapping("update")
	public ModelAndView setProductUpdate(ProductDTO productDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		productDTO=  productService.getProductDetail(productDTO);
		
		mv.addObject("dto", productDTO);
		
		mv.setViewName("product/productUpdate");
		
		return mv;
		
	}
	
	@PostMapping("update")
	public ModelAndView setProductUpdate(ProductDTO productDTO, HttpSession session, MultipartFile[] pics, Long[] fileNum) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		int result =  productService.setProductUpdate(productDTO, pics, fileNum, session);
		
		mv.setViewName("redirect:./list");
		
		return mv;
	}
	
	@PostMapping("delete")
	public ModelAndView setProductDelete(ProductDTO productDTO, HttpSession session, ProductImgDTO productImgDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		int result = productService.setProductDelete(productDTO, session, productImgDTO) ;
		
		
		mv.setViewName("redirect:./list");
		
		return mv;
	}
	
}
