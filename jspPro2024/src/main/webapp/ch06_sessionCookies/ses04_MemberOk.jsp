<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String id = request.getParameter("id");
String passwd = request.getParameter("password");
if(id.equals(passwd)) {
	Cookie cookie = new Cookie("id", id);
	cookie.setMaxAge(2*60);
	response.addCookie(cookie);
	response.sendRedirect("ses05_confirm.jsp");
} else {
%>
<script>
alert("아이디와 비밀번호가 맞지 않습니다.");
history.go(-1);
</script>
<% } %>
<%= id %>:
<%= passwd %>
</body>
</html>