<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/common_css.jsp"></c:import>
<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="/resources/lib/css/nivo-slider.css">
<link rel="stylesheet" href="/resources/css/core.css">
<link rel="stylesheet" href="/resources/css/shortcode/shortcodes.css">
<link rel="stylesheet" href="/resources/style.css">
<link rel="stylesheet" href="/resources/css/responsive.css">
<link rel="stylesheet" href="/resources/css/custom.css">
<link rel="stylesheet" href="/resources/css/style-customizer.css">
<script src="/resources/js/vendor/modernizr-3.11.2.min.js"></script>
<link href="#" data-style="styles" rel="stylesheet">
</head>
<body>
	
	<div class="container-fluid">
		<div class="col-lg-10">
                            <!-- Tab panes -->
                            <div class="tab-content">
                                <!-- shopping-cart start -->
                                <div class="tab-pane active" id="shopping-cart" role="tabpanel">
                                    <div class="shopping-cart-content">
                                            <div class="table-content table-responsive mb-50">
                                                <table class="text-center">
                                                    <thead>
                                                        <tr>
                                                            <th class="product-thumbnail">product</th>
                                                            <th class="product-price">price</th>
                                                            <th class="product-quantity">Quantity</th>
                                                            <th class="product-subtotal">total</th>
                                                            <th class="product-remove">remove</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <c:forEach items="${list}" var="dto" varStatus="i" >
                                                        	<tr>
	                                                            <td class="product-thumbnail orderNum" id="orderNum-${i.count}">
	                                                               	${dto.orderNum}
	                                                               	${dto.productDTO.productName}
																	<input type="hidden" value="${dto.productDTO.productPrice}" id="price-${i.count}">
	                                                            </td>
	                                                            <td class="product-price">${dto.productDTO.productPrice}</td>
	                                                            <td class="product-quantity">
	                                                                <div class="cart-plus-minus f-left"><div class="dec qtybutton">-</div>
	                                                                    <input type="text" value="${dto.productEa}" name="qtybutton" class="cart-plus-minus-box">
	                                                                <div class="inc qtybutton">+</div></div> 
	                                                            </td>
	                                                            <td class="product-subtotal totalPrice" id="totalPrice-${i.count}" data-all-idx="${i.count}">${dto.totalPrice}</td>
	                                                            <td class="product-remove buttons">
	                                                                <c:if test="${dto.buyCheck == 0}">
																		<form action="./cartUpdate" method="POST" id="frm">
																			<input type="hidden" name="orderNum" value="${dto.orderNum}">
																			<button type="button" class="btn btn-danger delete" id="delete-${i.count}">Delete</button>
																		</form>		
																	</c:if>
	                                                            </td>
	                                                        </tr>
                                                        </c:forEach>
                                                        <tr>
                                                            <td class="product-thumbnail">
                                                                <div class="pro-thumbnail-img">
                                                                    <img src="img/cart/1.jpg" alt="">
                                                                </div>
                                                                <div class="pro-thumbnail-info text-start">
                                                                    <h6 class="product-title-2">
                                                                        <a href="#">dummy product name</a>
                                                                    </h6>
                                                                    <p>Brand: Brand Name</p>
                                                                    <p>Model: Grand s2</p>
                                                                    <p> Color: Black, White</p>
                                                                </div>
                                                            </td>
                                                            <td class="product-price">$560.00</td>
                                                            <td class="product-quantity" id="productEa-${i.count}">
                                                                <div class="cart-plus-minus f-left"><div class="dec qtybutton">-</div>
                                                                    <input type="text" value="" name="qtybutton" class="cart-plus-minus-box">
                                                                <div class="inc qtybutton">+</div></div> 
                                                            </td>
                                                            <td class="product-subtotal">$1020.00</td>
                                                            <td class="product-remove">
                                                                
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                    </div>
                                </div>
                                <!-- shopping-cart end -->
                            </div>
                        </div>
		<div class="row col-md-10 mx-auto my-5">
			<table class="table table-hover text-center">
				<thead>
					<tr>
						<th>orderNum</th><th>ProductNumber</th><th>ProductEA</th><th>TotalPrice</th><th>OrderDate</th><th>button</th>
					</tr>
				</thead>
					<tbody id="list">
						<c:forEach items="${list}" var="dto" varStatus="i" >
							<tr>
								<td class="orderNum" id="orderNum-${i.count}">
									${dto.orderNum}
								</td>
								<td>
									${dto.productDTO.productName}
									<input type="hidden" value="${dto.productDTO.productPrice}" id="price-${i.count}">
								</td>
								<td class="productEa" id="productEa-${i.count}">
									${dto.productEa}
								</td>
								<td class="totalPrice" id="totalPrice-${i.count}" data-all-idx="${i.count}">
									${dto.totalPrice}
								</td>
								<td>
									${dto.orderDate}
								</td>
								<td class="buttons" id="buttons-${i.count}" data-all-idx="${i.count}">
									
									<c:if test="${dto.buyCheck == 0}">
										
										<form action="./cartUpdate" method="POST" id="frm">
											<input type="hidden" name="orderNum" value="${dto.orderNum}">
											<button type="button" class="btn btn-primary update" id="update-${i.count}">Update</button>
											<button type="button" class="btn btn-danger delete" id="delete-${i.count}">Delete</button>
										</form>		
									</c:if>
								</td>
							</tr>				
						</c:forEach>
					</tbody>
			</table>
			<a href="/cart/cartPayment" type="button" class="btn btn-primary float-end" id="list">cartPayment</a>
		</div>
	</div>
	
	<script src="/resources/js/cartUpdate.js"></script>
	<c:import url="../template/common_js.jsp"></c:import>
</body>
</html>