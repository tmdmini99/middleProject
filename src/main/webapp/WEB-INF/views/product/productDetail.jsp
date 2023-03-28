<%@page import="com.home.middle.product.ProductDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품보여주는 페이지 오늘안에 끝낸다 진짜로 </title>
<c:import url="../template/common_css.jsp"></c:import>
</head>
	<body>
	
	<h1>Detail Page</h1>
	<!-- Product section-->
		
        <section class="py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="row gx-4 gx-lg-5 align-items-center">
              
                    <div class="col-md-6">
                     <c:forEach items="${dto.productImgDTOs}" var="productImgDTO">
                   		<img class="card-img-top mb-5 mb-md-0" src= "../resources/upload/product/${productImgDTO.fileName}" /> 
                    </c:forEach>
                    </div>
                    
                       		
                    	<div class="col-md-6">
                    	<c:set var="loop_flag" value="false" />


                        <c:forEach items="${dto.productOptionDTOs}" var="productOptionDTO">
                        <c:if test="${not loop_flag }">
                        <div class="small mb-1">업로드 날짜 : ${productOptionDTO.productDate}</div>
                            <h1 class="display-5 fw-bolder">${dto.productName}</h1>
                          	<div class="fs-5 mb-5">
                            <span class="text-decoration-line-through">${productOptionDTO.productPrice}원</span>
                            <span>원</span>
                       	</div>
                       		 
      -
                       		 
                       		 <!-- 옵션 창 띄워주는 부분 -->

	                   		 <select class="form-select" aria-label="Default select example" id ="optionValueform" > 
	                       		 <c:if test="${productOptionDTO.depth eq 0}">
	                       		 <option selected id="optionName">${productOptionDTO.optionName}</option>  
	                      		</c:if>
	                      		<c:forEach items="${dto.productOptionDTOs}" var="productOptionDTO">
								<c:if test="${productOptionDTO.depth eq 0}">
							 	<option value="${productOptionDTO.optionValue}" id ="optionValue" >${productOptionDTO.optionValue}</option>  
								 </c:if> 
								 </c:forEach>
								</select>
							<div id= "one">
							<select class="form-select" aria-label="Default select example" id ="optionValueform1"> 
	                      		<c:forEach items="${opval.productOptionDTO}" var="productOptionDTO">
							
							 	<option value="${productOptionDTO.optionValue}" id ="optionValue1">${productOptionDTO.optionValue}</option>  
								
								 </c:forEach>
								</select> 
				             </div>
							 <select class="form-select" aria-label="Default select example" id ="optionValueform2"> 
	                      		<c:forEach items="${dto.productOptionDTOs}" var="productOptionDTO">
								<c:if test="${productOptionDTO.depth eq 2}">
							 	<option value="${productOptionDTO.optionValue}" id ="optionValue2">${productOptionDTO.optionValue}</option>  
								 </c:if> 
								 </c:forEach>
								</select>
						
						<button id= "btn1">버튼입니다 </button>
						<label id ="output1"> 여기다 뿌려줘 </label>
                         <c:set var="loop_flag" value="true" />
                        </c:if>
                        </c:forEach>

                        <div class="d-flex">
                            <input class="form-control text-center me-3" id="inputQuantity" type="num" value="1" style="max-width: 3rem" />
                            <button class="btn btn-outline-dark flex-shrink-0" type="button" id="btn">
                                <i class="bi-cart-fill me-1"></i>
                                Add to cart
                            </button>
                        </div>
                    </div>        
                </div>
            </div>
        </section>
                          
                          <div>  </div>
                   <div class="row">
						<a href="../../review/add?productNum=${dto.productNum}" class="btn btn-primary">리뷰작성</a>
						<a href="./add" class="btn btn-primary">상품추가</a>
					</div>
					
					
			<script>
			$(function(){
				$("#btn1").click(function(){
					$.ajax({
						type : "POST" ,
						url : "./detail?productNum=${dto.productNum}",
						data : {optionValue : $("#optionValueform option:checked").val(),
							optionValue1 : $("#optionValueform1 option:checked").val(),
							optionValue2 : $("#optionValueform2 option:checked").val(),
							productNum : ${dto.productNum}
						       },
						
						success:function(){ //매개변수의  goget 컨트롤러에서 돌아오는 응답데이터가 담길거임
							console.log("ajax통신성공");
						   
							$("#optionValueform1").load(window.location.href + "#optionValueform1");
							
						},
					   error:function(){
						   console.log("ajax통신실패");
					   },
					   complete:function(){
						   console.log("실행은 되는것 같음");
					   }
					});
				})
				
			});
		   </script>
			
        	<!-- <script src="../resources/js/productDetail.js"></script> -->
			<c:import url="../template/common_js.jsp"></c:import>
	</body>
</html>