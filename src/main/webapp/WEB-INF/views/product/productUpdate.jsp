<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/common_css.jsp"></c:import>
</head>
<body>
	<form action="./update" method="post" enctype="multipart/form-data">
		<div class="fw-bold fs-5 col-12">>
			<p>상품종류</p>
			<select name="categoryNum" class="form-select form-select-sm" aria-label=".form-select-sm example"><br>
				<option value="1" ${dto.categoryNum eq '1' ? 'selected' : ''} >컴퓨터</option>
				<option value="2" ${dto.categoryNum eq'2' ? 'selected' : ''} >노트북</option>
				<option value="3" ${dto.categoryNum eq'3' ? 'selected' : ''}>모니터</option>
				<option value="4" ${dto.categoryNum eq'4' ? 'selected' : ''}>휴대폰</option>
				<option value="5" ${dto.categoryNum eq'5' ? 'selected' : ''}>TV</option>
				<option value="6" ${dto.categoryNum eq'6' ? 'selected' : ''}>냉장고</option>
				<option value="7" ${dto.categoryNum eq'7' ? 'selected' : ''}>에어컨</option>
				<option value="8" ${dto.categoryNum eq'8' ? 'selected' : ''}>공기청정기</option>
			</select>
		</div>	
		<div class="fw-bold fs-5 col-12">
			<p>상품명</p>
			<input type="text" name="productName" value="${dto.productName }"><br>
		</div>
		상품옵션 : <br>
		
		<div class="fw-bold fs-5 col-12">
			<p>할인율</p>
			<input type="text" name="discountPercent" value="${dto.discountPercent}"><br>
		</div>
		<div class="fw-bold fs-5 col-12">
			<p>할인가격</p>
			<input type="text" name="discount" value="${dto.discount }"><br>
		</div> 
		 <fieldset class="mb-4">
            <legend class="fw-bold fs-5">판매 여부</legend>
            <div class="form-check form-check-inline">
               <label for="bs1" class="form-check-labyyel" id="inlineRadio1">판매</label>
               <input id="bs1" type="radio" name="productSales" value= ${dto.productSales eq '1'? 'checked':'' } checked class="form-check-input" for="inlineRadio1">
            </div>
            <div class="form-check form-check-inline">
               <label for="bs2" class="form-check-label" id="inlineRadio2">판매 중지</label>
               <input id="bs2" type="radio" name="productSales" value="${dto.productSales eq '0' ? 'checked':'' }" class="form-check-input" for="inlineRadio2">
            </div>
         </fieldset>
		
		<div class="input-group" id="fileUpdate">
		</div>

		<button type="button" class="btn btn-danger " id="addBtn2">+</button>
		<button type="submit" class="btn btn-primary" id="submit2">상품등록</button>
		
	</form>
	<script type="text/javascript" src="../resources/productUpdate.js"></script>
</body>
</html>