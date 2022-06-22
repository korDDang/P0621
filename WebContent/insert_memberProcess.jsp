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


String phone=request.getParameter("phone")+"-"+request.getParameter("phone1")+"-"+request.getParameter("phone2");
String mail=request.getParameter("email1")+"@"+request.getParameter("email");
try{
	String sql="insert into member0621 values(?,?,?,?,?,?,?,?,?)";
	pstmt=conn.prepareStatement(sql);
	pstmt.setString(1, request.getParameter("id"));
	pstmt.setString(2, request.getParameter("password"));
	pstmt.setString(3, request.getParameter("name"));
	pstmt.setString(4, request.getParameter("gender"));
	pstmt.setString(5, request.getParameter("birth"));
	pstmt.setString(6, mail);
	pstmt.setString(7, phone);
	pstmt.setString(8, request.getParameter("address"));
	pstmt.setString(9, request.getParameter("nickname"));
	pstmt.executeUpdate();
	System.out.println("등록성공");
}catch(SQLException e){
	e.printStackTrace();
	System.out.println("등록실패");
}



%>
</body>
</html>