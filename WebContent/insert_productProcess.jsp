<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="DBConn.jsp" %>
<%


try{
	String sql="insert into product0621 values(?,?,?,?,?,?,?,?)";
	pstmt=conn.prepareStatement(sql);
	pstmt.setString(1, request.getParameter("productId"));
	pstmt.setString(2, request.getParameter("productName"));
	pstmt.setString(3, request.getParameter("unitprice"));
	pstmt.setString(4, request.getParameter("description"));
	pstmt.setString(5, request.getParameter("category"));
	pstmt.setString(6, request.getParameter("manufacturer"));
	pstmt.setString(7, request.getParameter("unitsInstock"));
	pstmt.setString(8, request.getParameter("condition"));
	pstmt.executeUpdate();
	System.out.println("등록성공");
}catch(SQLException e){
	e.printStackTrace();
	System.out.println("등록실패");
}



%>
</body>
</html>