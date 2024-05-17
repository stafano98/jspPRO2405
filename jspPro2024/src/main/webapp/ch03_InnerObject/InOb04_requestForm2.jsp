<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title> 
<script>
	function calcsum(k, f) {
		f.kind.value = k;
		f.submit();
	}
	// onsubmit = <input type="submit"> 입력시에 적용된다
	// function인 f.submit();일대는 적용 안된다
</script>
</head>
<body>
<form action="request2.jsp" method="post" onsubmit="prompt('확인')">
	<input type="hidden" name = "kind" value="0">
	<input type="text" name = "num"> 까지의 합 구하기
	 <input type="submit" value = "합계구하기">
	 <input type="button" value = "짝수합구하기" onclick = "calcsum(2,this.form)">
	 <input type="button" value = "홀수합구하기" onclick = "calcsum(1,this.form)">
</form>
</body>
</html>
