<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>메인</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f2f2f2;
        }
        #header {
            background-color: #fff;
            color: #fff;
            padding: 10px;
            text-align: center;
        }
        #container {
            width: 700px;
            margin: 20px auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 8px;
            background-color: #fff;
        }
        .logo-container {
            background-color: #fff;
            text-align: center;
            padding: 10px;
            margin-bottom: 20px;
        }
        .logo {
            width: 150px;
            cursor: pointer;
        }
        nav {
            text-align: center;
            margin-bottom: 20px;
        }
        nav ul {
            list-style-type: none;
            padding: 0;
        }
        nav ul li {
            display: inline-block;
            margin-right: 20px;
        }
        nav ul li a {
            text-decoration: none;
            color: #333;
            font-weight: bold;
            padding: 5px 10px;
            border-radius: 5px;
            transition: background-color 0.3s;
        }
        nav ul li a:hover {
            background-color: #ddd;
        }
        #user-links {
            text-align: center;
            padding-left: 600px;
        }
        #user-links a {
            color: #333;
            text-decoration: none;
            margin-left: 10px;
        }
        #container>div {
            display: inline-block;
        }
        #container>div>img{
            width: 200px;
            height: 200px;
            padding: 5px;
            background-color: #ccc;
            cursor: pointer;
            margin: 0px auto;
        }
        #container>div>img:hover{
            background-color: #999;
        }
        .box {
            position: absolute; /* 절대 위치로 설정 */
            top: 0; /* 이미지 상단에 정렬 */
            left: 0; /* 이미지 왼쪽에 정렬 */
            width: 210px;
            height: 210px;
            background-color: #000;
            opacity: 0;
            transition: opacity 0.2s ease-in-out;
            color: #fff;
            font-size: xx-large;
            font-weight: 700;
            text-align: center;
            line-height: 190px;
        }
        #container>div {
            position: relative; /* 부모 요소를 상대 위치로 설정 */
            display: inline-block;
            margin: 10px;
        }
        #container>div:hover .box { /* 부모 요소가 호버될 때 상자를 보이게 함 */
            opacity: 0.8;
        }
    </style>
</head>
<body>
    <div id="header">
        <div class="logo-container">
            <a href="main.jsp"><img src="./img/Amazon_logo.png" alt="Amazon Logo" class="logo"></a>
        </div>
        <div id="user-links">
        <% if(session.getAttribute("id") == null) { %>
            <a href="login.jsp">로그인</a>
            <a href="join.jsp">회원가입</a>
            <% } else { %>
            <a href="login.jsp">로그인</a>
            <a href="join.jsp">회원정보[<%=session.getAttribute("id") %>]</a>
            <% } %>
            <a href="login_mypage.jsp">마이페이지</a>
            <a href="board.jsp">게시판</a>
        </div>
    </div>
    <div id="container">
        <nav>
            <ul>
                <li><a href="#">홈</a></li>
                <li><a href="#">제품</a></li>
                <li><a href="#">카테고리</a></li>
                <li><a href="#">할인</a></li>
                <li><a href="#">고객센터</a></li>
            </ul>
        </nav>
        <div>
            <img src="./img/product1.jpg">
            <div class="box">전자제품</div>
        </div>
        <div>
            <img src="./img/product2.jpg">
            <div class="box">욕실용품</div>
        </div>      
        <div>
            <img src="./img/product3.jpg">
            <div class="box">주방용품</div>
        </div>      
        <div>
            <img src="./img/product4.jpg">
            <div class="box">식재료</div>
        </div>      
        <div>
            <img src="./img/product5.jpg">
            <div class="box">패션잡화</div>
        </div>      
        <div>
            <img src="./img/product6.jpg">
            <div class="box">도서</div>
        </div>      
    </div>
</body>
</html>
