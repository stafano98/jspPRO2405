<%@page import="java.net.URLEncoder"%>
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
String cookieName = "id";
Cookie cookie = new Cookie(cookieName, "hongkd");
cookie.setMaxAge(60*2);
// cookie.setValue("kimid");
cookie.setValue(URLEncoder.encode("홍아이디","utf-8"));
response.addCookie(cookie);
%>
<h2>쿠키를 생성하는 예제</h2>
<p>
"<%= cookieName %>" 쿠키가 생성되었습니다. <br>
<input type="button" value= "쿠키의 내용확인" onclick="javascript:window.location='ses02_useCookie.jsp'">
</p>
</body>
</html>