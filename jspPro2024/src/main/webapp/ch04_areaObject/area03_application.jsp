<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
초기화파라미터목록
<ul>
<%
	Enumeration eNum = application.getInitParameterNames();
	while (eNum.hasMoreElements()) {
		String initParamName = (String)eNum.nextElement();
%>
<li><%=initParamName%> = <%=application.getInitParameter(initParamName)%>
	<%
	}
	%>

</ul>
</body>
</html>