<%@page import="ch08.KicMember"%>
<%@page import="ch08.KicMemberDAO"%>
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
String id = (String)session.getAttribute("id");
String pass = request.getParameter("pass");
String chgpass = request.getParameter("chgpass");

KicMemberDAO dao = new KicMemberDAO();
KicMember memdb = dao.getMember(id);

String msg = "";
String url = "memberPassForm.jsp";


if (memdb != null) {
    // 현재 비밀번호가 입력한 비밀번호와 동일하지 않을 때
    if (!memdb.getPass().equals(chgpass)) {
        // 현재 비밀번호가 데이터베이스에 저장된 비밀번호와 일치할 때
        if (memdb.getPass().equals(pass)) {
            msg = "비밀번호를 변경하였습니다.";
            session.invalidate();  // 세션 무효화
            dao.chgPassMember(id, chgpass);  // 비밀번호 변경
            url = "login.jsp";
        } else {
            msg = "비밀번호가 틀렸습니다.";
        }
    } else {
        msg = "새로운 비밀번호를 입력해주세요.";
    }
} else {
    msg = "비밀번호를 변경할 수 없습니다.";
}
%>
<script>
alert("<%=msg%>");
location.href="<%=url%>";
</script>
</body>
</html>