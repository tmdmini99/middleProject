<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/common_css.jsp"></c:import>
</head>
<body>

<h1>Product List</h1>

	<table>
		
		<tr>
			<th></th>
			<th>번호</th>
			<th>상품명</th>
			<th>할인가</th>
			<th>할인율</th>
			<th>판매여부</th>
		
		</tr>
	<c:forEach items="${list}" var="dto">
		<tr>
			<td>
				<input type="checkbox" name="chkList" value="${dto.productNum }">
			</td>
			<td>${dto.r}</td>
			<td><a href="./detail?productNum=${dto.productNum}"> ${dto.productName}</a></td>
			<td>${dto.discount }</td>
			<td>${dto.discountPercent }</td>
			<td>${dto.productSales}</td>
		</tr>
	</c:forEach>
	</table>
		<button type="button" class="btn btn-primary" id="add"><a href="./add">상품등록</a></button>
		<button type="button" class="btn btn-danger" onclick="deleteValue()">상품삭제</button>
<script src="../resources/productList.js"></script>
<c:import url="../template/common_js.jsp"></c:import>	
</body>
</html>