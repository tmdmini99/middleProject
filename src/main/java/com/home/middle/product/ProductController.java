package com.home.middle.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/product/**")
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
		
	    mv.setViewName("redirect:./list");
		
		return mv;
	}
	
	
}
