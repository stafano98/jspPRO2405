<%@page import="java.util.Map.Entry"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Map"%>
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
<%
request.setCharacterEncoding("utf-8"); // method = "post"
String name = request.getParameter("name");
String age = request.getParameter("age");
String gender = request.getParameter("gender");
String hobby = request.getParameter("hobby");
String year = request.getParameter("year");
String test = request.getParameter("test");
%>
<h2>1. get.Parameter("age")</h2>
<h2>2. get.ParameterValues("hobby")</h2>
<h2>3. get.Parameternames()</h2>
<h2>4. get.ParameterMap()</h2>
<hr>
<h2>
이름: <%= name %><br>
나이: <%=age %><br>
성별: <%= gender.equals("1") ? "남" : "여" %><br>
취미: <%= hobby %><br>
년도: <%= year %><br>
test: <%= test %><br>
</h2>
<h2>요청 파라미터에 저장된 모든 값 조회하기</h2>
   <h3>취미 : </h3>
   <%
   String[]hobbies = request.getParameterValues("hobby");
   for (String h : hobbies) {%>
   <%=h %>
   <%} %><br>
   
   <table>
   <tr><th> 파라미터이름(Enumeration)</th><th>파라미터값</th></tr>
   <%  //Iterator의 구버전 : 반족자
   Enumeration e = request.getParameterNames();
   while(e.hasMoreElements()) {
	   String paramName = (String)e.nextElement();
	   String[] paramValues = request.getParameterValues(paramName); 
   %>
   <tr><td><%= paramName %></td>
   <td><%for(String v : paramValues) {%>
   <%= v %>&nbsp;&nbsp;&nbsp; <%} %></td>
   </tr><%    }    %>
   </table>
   
   <table>
   <tr><th>Map</th><th>파라미터값</th></tr>
   <%
   Map <String, String[]> map = request.getParameterMap();
   Iterator<Map.Entry<String, String[]>> it = map.entrySet().iterator();
   while(it.hasNext()) {
   Entry<String, String[]> en = it.next();
   %>
   <tr><td><%=en.getKey() %></td>
   <td><% for(String v : en.getValue()) {%>
   <%=v%>&nbsp;&nbsp;&nbsp; <%} %></td>
   </tr><%} %>
   
   </table>

</body>
</html>