<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="DBConn.jsp" %>


<script>
function check() {
	var doc=document.form;
	if(doc.productId.value==""){
		alert("상품번호을 입력하세요");
		doc.productId.focus();
	}else if(doc.productName.value==""){
		alert("상품명을 입력하세요");
		doc.productName.focus();
	}else{
		doc.submit();
	}
}


</script>
</head>
<body>
<%@include file="header.jsp" %> 
<%@include file="nav.jsp" %>
<section class="sec1">
<h3 class="h3">상품정보 등록 화면</h3>
<hr>
<form name="form" method="post" action="insert_productProcess.jsp">
<table border="1" class="tab1">
<tr>
<th>상품코드</th>
<td colspan="3">
	<input type="text" name="productId" >
</td>
</tr>
<tr>
<th>상품명</th>
<td colspan="3">
<input type="text" name="productName" >
</td>
</tr>
<tr>
<th>가격</th>
<td colspan="3">
<input type="text" name="unitprice">
</td>
</tr>
<tr>
<th>상세정보</th>
<td colspan="3">
<input type="text" name="description" >
</td>
</tr>
<tr>
<th>제조사</th>
<td colspan="3">
<input type="text" name="manufacturer" >
</td>
</tr>
<tr>
<th>분류</th>
<td>
<input type="text" name="category">
</td>
<th>재고수</th>
<td>
<input type="text" name="unitsInstock">
</td>
</tr>
<tr>
<th>상태</th>
<td colspan="3">
<input type="radio" name="condition" value="신규제품">신규제품
<input type="radio" name="condition" value="중고제품">중고제품
<input type="radio" name="condition" value="재생제품">재생제품
</td>
<tr>
<td colspan="4" class="td1">
<input type="button" value="상품등록" onclick="check()">
<input type="reset" value="다시작성">
</td>
</tr>
</table>




</form>
</section>
<%@include file="footer.jsp" %>  
</body>
</html>