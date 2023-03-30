<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/common_css.jsp"></c:import>
</head>
<body>
	<form action="./add" method="post" enctype="multipart/form-data">	
		상품종류: <select name="categoryNum"><br>
			<option value="1" selected>TV</option>
			<option value="2">모니터</option>
			<option value="3">냉장고</option>
			<option value="4">휴대폰</option>
			<option value="5">가전제품</option>
			<option value="6">에어컨</option>
		</select>
		상품명 : <input type="text" name="productName"><br>
		상품옵션 : <br>
		
		할인율 : 
		<input type="text" name="discountPercent"><br>
		할인가격 : 
		<input type="text" name="discount"><br>
		판매여부 : 
		<select name="productSales">
			<option selected>판매여부</option>
			<option value="1">판매중</option>
			<option value="0">판매중단</option>
		</select><br>
		
		<div id="fileList">
			<input type="file" class="form control" name="pics" id="files">
		</div><br>
		<div id="fileList">
			<input type="file" class="form control" name="pics" id="files">
		</div><br>
		<div id="fileList">
			<input type="file" class="form control" name="pics" id="files">
		</div><br>
		
		
		<button type="submit">등록</button><br>
	</form>
	
<c:import url="../template/common_js.jsp"></c:import>	
/
</body>
</html>