<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원수정</title>
</head>
<body>
<c:import url="../template/common_css.jsp"></c:import>
	<form action="./adminMemberUpdate" method="post" id="frm2">
		회원 아이디 <input type="text" name="id" value="${dto.id}"><br>
		이름 : <input type="text" name="name" value="${dto.name}"><br>
		비밀번호: <input type="password" name="pw"  readonly="readonly" value="${dto.pw}"><br>
		주소 : <input type="text" name="address" value="${dto.address}"><br>
		전화번호 : <input type="text" name="phone" value="${dto.phone}"><br>
		전화번호 : <input type="text" name="email" value="${dto.eamil}"><br>
		
		<select name="roleNum">
			<option value="2">판매자</option>
			<option value="3">일반회원</option>
		</select>
		
		<button type="submit">확인</button>
	</form>
</body>
</html>