<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="header.jsp" %>
<%@ include file="nav.jsp" %>
<%@ include file="DBConn.jsp" %>
<section class="sec1">
<br>
<br>

<h3 class="h3">상품 목록</h3>


<%
int ma=0;
try{
	String sql="select count(*) from order0621";
	pstmt=conn.prepareStatement(sql);
	rs=pstmt.executeQuery();
	if(rs.next()){
		ma=rs.getInt(1);
	}
}catch(SQLException e){
	e.printStackTrace();
}


%>
총 <%=ma %>개의 상품이 있습니다.
<hr>
<table border="1" class="tab1">
<tr>
<th>상품코드</th>
<th>주문자이름</th>
<th>주문날짜</th>
<th>배달주소</th>
<th>전화번호</th>
<th>결제방법</th>
<th>카드번호</th>
<th>주문상품수</th>
<th>판매가격</th>
<th>총금액</th>
</tr>
<%

try{
	String sql="select o.id,o.name,o.orderdate,o.addr,o.tel,o.pay,o.cardno,o.prodcount,p.unitprice,o.total from order0621 o,product0621 p where o.id=p.productId";
	pstmt=conn.prepareStatement(sql);
	rs=pstmt.executeQuery();
	while(rs.next()){
		String id=rs.getString(1);
		String name=rs.getString(2);
		String orderdate=rs.getString(3);
		String addr=rs.getString(4);
		String tel=rs.getString(5);
		String pay=rs.getString(6);
		String cardno=rs.getString(7);
		String prodcount=rs.getString(8);
		String unitprice=rs.getString(9);
		String total=rs.getString(10);
		
	
%>
<tr>
<td><%=id %></td>
<td><%=name %></td>
<td><%=orderdate %></td>
<td><%=addr %></td>
<td><%=tel %></td>
<td><%=pay %></td>
<td><%=cardno %></td>
<td><%=prodcount %></td>
<td><%=unitprice %></td>
<td><%=total %></td>
</tr>
<%
	}
	}catch(Exception e){
		e.printStackTrace();
	}

%>
</table>
<div style="text-align: center"><input type="button" value="작성" onclick="location.href='insert_order.jsp'"></div>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>