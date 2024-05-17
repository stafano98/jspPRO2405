<%@page import="ch08.MyMember"%>
<%@page import="ch08.MyMemberDAO"%>
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
String tel_or_email = request.getParameter("tel_or_email");
String pwd = request.getParameter("pwd");
String pwdck = request.getParameter("pwdck");

MyMemberDAO dao = new MyMemberDAO();
MyMember mym = new MyMember();
mym.setId(id);
mym.setTel_or_email(tel_or_email);
mym.setPwd(pwd);
mym.setPwdck(pwdck);

int num = dao.insertMember(mym);


String msg = "";
String url = "";

if (num>0) {
	msg = id + "님의 회원가입이 완료 되었습니다.";
	url = "login.jsp";
} else {
	msg = "회원가입이 실패하였습니다.";
	url = "join.jsp";
}

%>
<script>
alert("<%=msg%>");
location.href="<%=url%>"
</script>


<%=id %>
<%=tel_or_email %>
<%=pwd %>
<%=pwdck %>



</body>
</html>