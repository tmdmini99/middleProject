package com.home.middle.cart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/cart/*")
public class CartController {
	
	@Autowired
	private CartService cartService;
	
	
	@GetMapping("cartList")
	public ModelAndView getCartList() throws Exception{
		//member 연동해서 아이디에 따른 장바구니 가져오기
		ModelAndView mv = new ModelAndView();
		//임시 아이디 설정
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setId("test");
		
		List<CartDTO> ar = cartService.getCartList(memberDTO);
		System.out.println(ar.size());
		mv.addObject("list", ar);
		
		return mv;
		
	}
	
	@GetMapping("cartAdd")
	public ModelAndView setCartAdd() throws Exception{
		
		ModelAndView mv = new ModelAndView();
		//임시 아이디 설정
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setId("test");
		ProductDTO productDTO = new ProductDTO();
		productDTO.setProductNum(17L);//임시 수정
		productDTO = cartService.getProductDetail(productDTO);
		
		mv.addObject("mDTO", memberDTO);
		mv.addObject("pDTO", productDTO);
		mv.setViewName("/cart/cartAdd");
		return mv;
		
	}
	
	@PostMapping("cartAdd")
	public ModelAndView setCartAdd(CartDTO cartDTO, ProductDTO productDTO) throws Exception{
		
		ModelAndView mv = new ModelAndView();
		cartDTO.setProductDTO(productDTO);
		int result = cartService.setCartAdd(cartDTO);
		
		//mv.addObject("result", result);
		mv.setViewName("redirect:./cartList");
		
		return mv;
		
	}
	
	@PostMapping("cartDelete")
	public ModelAndView setCartDelete(CartDTO cartDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		int result = cartService.setCartDelete(cartDTO);
		
		
		mv.setViewName("redirect:../cart/cartList");
		
		return mv;
	}
	
	@PostMapping("cartClear")
	public ModelAndView setCartClear(CartDTO cartDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		int result = cartService.setCartClear(cartDTO);
		
		//mv.addObject("result", result);
		mv.setViewName("redirect:./cartList");
		
		return mv;
	}
	
	@GetMapping("cartPayment")
	public ModelAndView setCartPayment() throws Exception{
		ModelAndView mv = new ModelAndView();
		
		//임시 아이디 설정
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setId("TEST2");
		List<CartDTO> ar = cartService.getCartList(memberDTO);
		
		mv.addObject("list", ar);
		mv.setViewName("/cart/cartPayment");
		
		return mv;
	}
	
	@PostMapping("cartPayment")
	public ModelAndView setCartPayment(CartDTO cartDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		int result = cartService.setCartPayment(cartDTO);
		
		//mv.addObject("result", result);
		mv.setViewName("redirect:./cartPayment");
		
		return mv;
	}
	
	@PostMapping("cartPaymentCancel")
	public ModelAndView setCartPaymentCancel(CartDTO cartDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		int result = cartService.setCartPaymentCancel(cartDTO);
		
		//mv.addObject("result", result);
		mv.setViewName("redirect:./cartPayment");
		
		return mv;
	}
	
	@PostMapping("cartPaymentDetail")
	public ModelAndView getCartPaymentDetail(CartDTO cartDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		cartDTO = cartService.getCartPaymentDetail(cartDTO);
		
		
		mv.addObject("dto", cartDTO);
		mv.setViewName("/cart/cartPaymentDetail");
		
		return mv;
	}
	
	@PostMapping("cartUpdate")
	public ModelAndView getCartUpdate(CartDTO cartDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		int result = cartService.getCartUpdate(cartDTO);
		
		mv.addObject("result", result);
		mv.setViewName("/common/result_1");
		
		return mv;
	}
}
