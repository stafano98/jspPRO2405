<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>Insert title here</title>
</head>
<body>
<%
	Class.forName("oracle.jdbc.OracleDriver");
	
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "kic24", "1234");
	
	PreparedStatement pstmt = conn.prepareStatement("select * from guestbook");
	
	ResultSet rs = pstmt.executeQuery();
	
	ResultSetMetaData rscol = rs.getMetaData(); //column name
%>
<table class ="w3-table-all">
	<tr>
		<% for(int i = 1; i <= rscol.getColumnCount(); i++) { %>
			<td><%= rscol.getColumnName(i) %> </td>
<% } %>
</tr>
<% while(rs.next()) { %>
	<tr>
		<% for(int i = 1; i <= rscol.getColumnCount(); i++) { %>
			<td><%= rs.getString(i) %> </td>
<% } %>
</tr>

<% } %>
</table>
</body>
</html>