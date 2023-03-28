package com.home.middle.product;

import java.io.Console;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
	////////////////테스트 해봤던것 /////////////////////////////////////////////////
	@RequestMapping(value ="option" , method=RequestMethod.GET)
	public ModelAndView getOptionPk(ProductOptionDTO productOptionDTO)throws Exception {
		System.out.println("getoptionpk");
		System.out.println(productOptionDTO.getOptionNum());
		ModelAndView mv = new ModelAndView();
		productOptionDTO = productService.getOptionPk(productOptionDTO);
	    mv.setViewName("/product/productDetail");
	    mv.addObject("option",productOptionDTO);
	    return mv;
		
	}	
	
	////////////////디테일 페이지에서 받아온 옵션의 벨류값을 저장 ///////////////////////////
	@PostMapping("detail")
	public List<ProductOptionDTO> doGetOption(String optionValue,String optionValue1, String optionValue2 ,Long productNum)  throws Exception {
	
		System.out.println(optionValue);
		System.out.println(optionValue1);
		System.out.println(optionValue2);
		System.out.println(productNum);
		//요청처리 db에 sql 문 실행
		
		ProductOptionDTO productOptionDTO = new ProductOptionDTO();
		
		
		List<ProductOptionDTO> ar = null;
		
		if(optionValue!=null && optionValue1 == null) {
			productOptionDTO.setOptionValue(optionValue);
			productOptionDTO.setDepth(1L);
	        productOptionDTO.setProductNum(productNum);
			ar = productService.doGetOption(productOptionDTO);
	        
		}

		//list로 받아온 ar배열의 별명 opval 
		
		
		   return ar;
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
