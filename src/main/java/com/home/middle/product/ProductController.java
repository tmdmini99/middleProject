package com.home.middle.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.home.middle.util.Pager;



@Controller
@RequestMapping("/product/*")
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value="list" , method=RequestMethod.GET)
	public ModelAndView getProductList() throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<ProductDTO> ar = productService.getProductList();
	  
		mv.setViewName("product/productList");
		mv.addObject("list",ar);
		//mv.addObject("pager", pager);
		return mv;
	}
	
	
	
	
	
	
	
	
	
	
	
	

}
