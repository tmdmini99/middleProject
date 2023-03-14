<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/common_css.jsp"></c:import>
</head>
<body>
	
	<div class="container-fluid">
		<div class="row col-md-10 mx-auto my-5">
			<table class="table table-hover">
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