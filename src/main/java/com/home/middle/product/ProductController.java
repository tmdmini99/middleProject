package com.home.middle.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
	
	@RequestMapping(value="detail")
	public String getProductDetail(ProductDTO productDTO, Model model) throws Exception{
		//파라미터 이름과 setter의 이름과 같아야함 
		
		System.out.println("Product detail");
		
		productDTO = productService.getProductDetail(productDTO);
		
		System.out.println(productDTO!=null);
		
		model.addAttribute("dto",productDTO);
		
		return "product/productDetail";
	}
	
	

	
	
	
	
	
	
	
	
	
	
	

}
