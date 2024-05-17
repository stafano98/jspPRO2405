<%@page import="ch08.MyMemberDAO"%>
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
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
String id = request.getParameter("id");
String pwd= request.getParameter("pwd");

MyMemberDAO dao = new MyMemberDAO();



String msg = id + "님이 로그인 하셨습니다.";
String url = "main.jsp";

String dpwd = dao.getMember(id);

if (dpwd!=null) {
	if (pwd.equals(dpwd)) {
		session.setAttribute("id", id);
	} else {
		msg = "비밀번호가 맞지 않습니다";
		url = "login.jsp";
	}
} else {
	msg = "id를 확인 하세요";
	url = "login.jsp";
}
%>

<script>
alert("<%=msg%>");
location.href="<%=url %>";
</script>

<%=id %>
<%=pwd %>
</body>
</html>