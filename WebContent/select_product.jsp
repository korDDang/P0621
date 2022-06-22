<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>main화면</title>
</head>
<body>
<%@ include file="header.jsp" %>
<%@ include file="nav.jsp" %>
<section class="sec1">
<%@ include file="DBConn.jsp" %>
<h3 class="h3">상품 정보 조회</h3>
<br>
<br>
<table border="1" class="tab1">
<tr>
<th>no</th>
<th>상품코드</th>
<th>상품명</th>
<th>가격</th>
<th>상세정보</th>
<th>분류</th>
<th>제조사</th>
<th>재고수</th>
<th>상태</th>
</tr>
<%
int no=0;
try{
	String sql="select * from product0621";
	pstmt=conn.prepareStatement(sql);
	rs=pstmt.executeQuery();
	while(rs.next()){
	   String productId=rs.getString(1);
	   String productName=rs.getString(2);
	   String unitprice=rs.getString(3);
	   String description=rs.getString(4);
	   String category=rs.getString(5);
	   String manufacturer=rs.getString(6);
	   String unitsInstock=rs.getString(7);
	   String condition=rs.getString(8);
	    no++;
	

%>
<tr>
<td class="td1"><%=no %></td>
<td class="td1"><%=productId %></td>
<td class="td1"><%=productName %></td>
<td class="td1"><%=unitprice %></td>
<td class="td1"><%=description %></td>
<td class="td1"><%=category %></td>
<td class="td1"><%=manufacturer %></td>
<td class="td1"><%=unitsInstock %></td>
<td class="td1"><%=condition %></td>

</tr>
<%

	}
}catch(SQLException e){
	e.printStackTrace();
}

%>
</table>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>