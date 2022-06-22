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
<h3 class="h3">회원 정보 조회</h3>
<br>
<br>
<table border="1" class="tab1">
<tr>
<th>id</th>
<th>성명</th>
<th>패스워드</th>
<th>성별</th>
<th>생년월일</th>
<th>이메일</th>
<th>휴대폰</th>
<th>주 소</th>
<th>닉네임</th>
</tr>
<%
try{
	String sql="select * from member0621";
	pstmt=conn.prepareStatement(sql);
	rs=pstmt.executeQuery();
	while(rs.next()){
	   String id=rs.getString(1);
	   String password=rs.getString(2);
	   String name=rs.getString(3);
	   String gender=rs.getString(4);
	   String birth=rs.getString(5);
	   String mail=rs.getString(6);
	   String phone=rs.getString(7);
	   String address=rs.getString(8);
	   String nickname=rs.getString(9);
	

%>
<tr>
<td class="td1"><%=id %></td>
<td class="td1"><%=name %></td>
<td class="td1"><%=password %></td>
<td class="td1"><%=gender %></td>
<td class="td1"><%=birth %></td>
<td class="td1"><%=mail %></td>
<td class="td1"><%=phone %></td>
<td class="td1"><%=address %></td>
<td class="td1"><%=nickname %></td>
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