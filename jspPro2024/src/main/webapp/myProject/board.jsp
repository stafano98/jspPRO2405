<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>게시판</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #fff;
        }
        legend {
            font-weight: bold;
            font-size: 1.5em;
        }
        #container {
            max-width: 650px;
            margin: 20px auto;
            padding: 10px 20px 20px;
            border: 1px solid #ccc;
            border-radius: 8px;
        }
        #header {
            /* text-align: center; */
            margin-top: 0px;
            margin-bottom: 20px;
        }
        .logo {
            width: 150px;
            cursor: pointer;
            display: block;
            margin: 20px auto;
        }
        .post {
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 8px;
            padding: 5px 0 0 15px;
            margin-bottom: 20px;
            height: 120px;
            cursor: pointer;
        }
        .post:last-child {
            margin-bottom: 0;
        }
        .post-title {
            font-size: 1.5em;
            color: #333;
            margin-bottom: 5px;
        }
        .post-content {
            color: #666;
        }
        .search-bar {
            margin-bottom: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        input[type="text"] {
            width: calc(100% - 250px);
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-right: 10px;
        }
        #search-button {
            background-color: #008CBA;
            color: white;
            border: none;
            width: 90px;
            height: 35px;
            border-radius: 4px;
            cursor: pointer;
            margin-right: 10px;
        }
        #search-button:hover {
            background-color: #005f6b;
        }
        #write-button {
            background-color: #F7CA00;
            color: #000;
            border: none;
            border-radius: 4px;
            padding: 10px 20px;
            cursor: pointer;
            float: right;
        }
        #write-button:hover {
            background-color: #F3B500;
        }
        .post:hover {
            border: 1px solid #000;
            background-color: #e7e7e7;
        }
    </style>
</head>
<body>
    <a href="main.jsp"><img src="./img/Amazon_logo.png" alt="Amazon Logo" class="logo"></a>
    <fieldset id="container">
        <div id="header">
            <h1 style="font-size: 2em;">게시판</h1>
        </div>  
        <div class="post">
            <h2 class="post-title">게시물 제목</h2>
            <p class="post-content">게시물 내용이 여기에 들어갑니다.</p>
        </div>
        <div class="post">
            <h2 class="post-title">게시물 제목</h2>
            <p class="post-content">게시물 내용이 여기에 들어갑니다.</p>
        </div>
        <div class="post">
            <h2 class="post-title">게시물 제목</h2>
            <p class="post-content">게시물 내용이 여기에 들어갑니다.</p>
        </div>
        <!-- 추가적인 게시물들을 여기에 추가할 수 있습니다. -->
        <div class="search-bar">
            <input type="text" placeholder="검색어를 입력하세요...">
            <button id="search-button">검색</button>
            <button id="write-button">작성하기</button>
        </div>
    </fieldset>
</body>
</html>
