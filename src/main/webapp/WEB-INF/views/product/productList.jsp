<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Product List</h1>
	<table border="1">
		<tr>
			<th>상품명</th>
			<th>할인가</th>
			<th>할인율</th>
			<th>판매여부</th>
		</tr>
	<c:forEach items="${list}" var="dto">
		<tr>
			<td>${dto.productName}</td>
			<td>${dto.discount }</td>
			<td>${dto.discountPercent }</td>
			<td>${dto.productSales}</td>
		</tr>
	</c:forEach>
	</table>
</body>
</html>