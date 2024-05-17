<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% String msg = "includeDirectiveEx1.jsp 페이지의 msg 변수입니다."; %>
<h1> includeDirectiveEx1.jsp 페이지 입니다</h1>
<%@ include file = "sample.jsp" %>
<h2>include Directive(지시어)는 includeDirectiveEx1.jsp 페이지에서
includeDirectiveEx2.jsp 페이지의 내용을 합하여 결과를 출력합니다.<br>
includeDirectiveEx1.jsp 와 includeDirectiveEx2.jsp 페이지는 하나의
서블릿으로 변환됩니다. 즉 하나의 자바 파일로 만들어 지므로 변수 공유가 가능합니다.</h2>
</body>
</html>