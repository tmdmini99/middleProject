<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
	<a href="/cart/cartAdd" type="button" class="btn btn-primary" id="add">cartAdd</a>
	<a href="/cart/cartList" type="button" class="btn btn-primary" id="list">cartList</a>
	
	
<h1>
ok
	Hello world!  
</h1>

	<c:choose>
		<c:when test="${empty member}">
			<a href="./member/memberLogin">로그인</a>
			<a href="./member/memberAgree">회원가입</a>
		</c:when>
		<c:otherwise>
			<a href="./member/memberLogout">로그아웃</a>
			<a href="./member/memberDetail">정보</a>
		</c:otherwise>
	</c:choose>

<P>  The time on the server is ${serverTime}. </P>
<a href="./product/add">ProductAdd</a>

</body>
</html>
