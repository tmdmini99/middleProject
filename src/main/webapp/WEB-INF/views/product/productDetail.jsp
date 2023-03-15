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
	<% ProductDTO productDTO = (ProductDTO)request.getAttribute("dto"); %>
	
	<h3><%= productDTO.getProductName() %> </h3>
	<h3><%= productDTO.getProductNum() %></h3>
	
	<hr>
	<h3>${requestScope.dto.productName}</h3>
	<h3>${dto.getProductNum()}</h3>
			<!-- 싹싹싹 긁어온 부분  -->
			 	<div class="col-lg-6 col-md-12 col-12">
			        <div class="product-images">
			            <main id="gallery">
			                    <div class="main-img">
									<img src="https://demo.graygrids.com/themes/shopgrids/assets/images/product-details/x01.jpg.pagespeed.ic.dzfilwUWdG.webp" id="current" alt="#" data-pagespeed-url-hash="4064215021" onload="pagespeed.CriticalImages.checkImageForCriticality(this);">
			                    </div>
			                    <div class="images">
			                    <img src="assets/images/product-details/x01.jpg.pagespeed.ic.dzfilwUWdG.webp" class="img" alt="#" data-pagespeed-url-hash="4064215021" onload="pagespeed.CriticalImages.checkImageForCriticality(this);" style="opacity: 0.6;">
			                    <img src="assets/images/product-details/x02.jpg.pagespeed.ic.DfOtEWLJTK.webp" class="img" alt="#" data-pagespeed-url-hash="63747646" onload="pagespeed.CriticalImages.checkImageForCriticality(this);" style="opacity: 1;">
			                    <img src="assets/images/product-details/x03.jpg.pagespeed.ic.34ELmg8Ko8.webp" class="img" alt="#" data-pagespeed-url-hash="358247567" onload="pagespeed.CriticalImages.checkImageForCriticality(this);" style="opacity: 1;">
			                    <img src="assets/images/product-details/x04.jpg.pagespeed.ic.xTI-mpWzZ4.webp" class="img" alt="#" data-pagespeed-url-hash="652747488" onload="pagespeed.CriticalImages.checkImageForCriticality(this);" style="opacity: 1;">
			                    <img src="assets/images/product-details/x05.jpg.pagespeed.ic.4akyUDrzmC.webp" class="img" alt="#" data-pagespeed-url-hash="947247409" onload="pagespeed.CriticalImages.checkImageForCriticality(this);" style="opacity: 1;">
			                    </div>
			            </main>
			        </div>
			    </div>
			<c:import url="../template/common_js.jsp"></c:import>
	</body>
</html>