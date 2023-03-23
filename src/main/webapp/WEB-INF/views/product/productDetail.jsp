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
      <c:forEach items="${dto.productOptionDTOs}" var="productOptionDTO">
        <section class="py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="row gx-4 gx-lg-5 align-items-center">	
                    <div class="col-md-6"><img class="card-img-top mb-5 mb-md-0" src="https://dummyimage.com/600x700/dee2e6/6c757d.jpg" alt="..." /></div>
                    <div class="col-md-6">
                        <div class="small mb-1">업로드 날짜 :</div>
                        <h1 class="display-5 fw-bolder">${dto.productName}</h1>
                        <div class="fs-5 mb-5">
                            <span class="text-decoration-line-through"}>${dto.discount }원</span>
                            <span>${dto.discount}원</span>
                        </div>
                        <p class="lead">옵션명 : ${productOptionDTO.optionName} ${productOptionDTO.optionValue}
                       </p>
                        <div class="d-flex">
                            <input class="form-control text-center me-3" id="inputQuantity" type="num" value="1" style="max-width: 3rem" />
                            <button class="btn btn-outline-dark flex-shrink-0" type="button">
                                <i class="bi-cart-fill me-1"></i>
                                Add to cart
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <c:if test="${member.roleDTO.roleName eq 'ADMIN' or member.id eq dto.id}">
	        <div class="col text-center">
		        <a href="./update?productNum=${dto.productNum}"><button type="button" style="color : white;" class="btn btn-primary">상품수정</button></a>
		        <button type="button" class="btn btn-danger" id="del2">상품삭제</button>
		    </div>    
	    </c:if>    
	    
	    <script type="text/javascript">
	    
		$("#del2").click(function()  {
	    $.ajax( {
	        type : 'POST',
	        url : './delete',
	        data : {
	            productNum : ${dto.productNum}

	        },
	        success : function(jdata) {
	            alert("삭제성공")
	            location.replace("./list")
	        }
	    })
	})
		</script> 
           </c:forEach>
         <c:import url="../template/common_js.jsp"></c:import>
	
	    
	
   </body>
</html>