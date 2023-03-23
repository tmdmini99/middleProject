package com.home.middle.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
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
	

	
	//@RequestMapping(value="detail",method=RequestMethod.GET)
	@RequestMapping(value="detail",method=RequestMethod.GET)
	public ModelAndView getProductDetail(ProductDTO productDTO, Model model) throws Exception{
		//파라미터 이름과 setter의 이름과 같아야함 
		
		System.out.println("Product detail");
		ModelAndView mv = new ModelAndView();
		productDTO = productService.getProductDetail(productDTO);
		
		System.out.println(productDTO!=null);
		
		 mv.setViewName("/product/productDetail");
		 mv.addObject("dto",productDTO);
		
		return mv;
		
	}
	
	
	
	//////////////////미리가 구현한 부분 DB 테스트 후 삭제 예정   /////////////////
	
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
	
	//////////////////미리가 구현한 부분 DB 테스트 후 삭제 예정   /////////////////

	
	
	
	
	
	
	
	
	
	
	

}
