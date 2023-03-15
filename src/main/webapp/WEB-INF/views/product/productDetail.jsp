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
                    <div class="col-md-6"><img class="card-img-top mb-5 mb-md-0" src="https://dummyimage.com/600x700/dee2e6/6c757d.jpg" alt="..." /></div>
                    <div class="col-md-6">
                        <div class="small mb-1">업로드 날짜 : ${dto.productOptionDTO.productDate}</div>
                        <h1 class="display-5 fw-bolder">${dto.productName}</h1>
                        <div class="fs-5 mb-5">
                            <span class="text-decoration-line-through">${dto.productOptionDTO.productPrice}원</span>
                            <span>${dto.productOptionDTO.productPrice}원</span>
                        </div>
                        <p class="lead">옵션명 : ${dto.productOptionDTO.optionName} 옵션종류 :${dto.productOptionDTO.optionValue}</p>
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
			<c:import url="../template/common_js.jsp"></c:import>
	</body>
</html>