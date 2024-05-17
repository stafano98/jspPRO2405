<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #fff;
        }
        #container {
            width: 400px;
            margin: 20px auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 8px;
            background-color: #fff;
        }
        #header {
            margin-bottom: 20px;
        }
        .logo {
            width: 150px;
            cursor: pointer;
            display: block;
            margin: 20px auto 20px;
        }
        fieldset {
            border: none;
            margin: 0 auto;
            padding: 0;
            
        }
        legend {
            font-weight: bold;
            font-size: 1.2em;
            margin-bottom: 10px;
                        
        }
        ul {
            padding: 0;
            list-style-type: none;
            margin: 0 auto;
            
        }
        li {
            margin-bottom: 10px;
            
        }
        label {
            font-weight: bold;
            font-size: 0.9em;
        }
        input[type="text"],
        input[type="password"],
        button {
            width: calc(100% - 22px);
            padding: 10px;
            border: none;
            border-radius: 4px;
            box-sizing: border-box;
            margin-bottom: 10px;
            
        }
        input[type="text"],
        input[type="password"] {
            height: 40px;
            border: 1px solid #ccc;
            
        }
        #pp {
            font-size: 0.8em;
            color: #888;
            margin-top: 5px;
        }
        #p_to_join{
            text-decoration-line: none;
            color: #000;
            background-color: #88888877;
            border-radius: 4px;
            padding: 4px;
        }
        #btn {
            background-color: #F7CA00;
            color: #000;
            cursor: pointer;
            font-weight: bold;
            border-radius: 4px;
        }
        #btn:hover {
            background-color: #F3B500;
        }
        #p_to_join:hover{
            background-color: #888888;
            /* color: #ccc; */
        }
    </style>
</head>
<body>
    <a href="main.jsp"><img src="./img/Amazon_logo.png" alt="Amazon Logo" class="logo"></a>
    <div id="container">
        <div id="header">
            <h2>계정 생성</h2>
        </div>  
        <form action="joinPro.jsp"   method="post">
            <fieldset>
                <ul>
                    <li>
                        <label for="id">사용자 이름</label><br>
                        <input type="text" id="id" autofocus required placeholder="이름 및 성" name="id">
                    </li>
                    <li>
                        <label for="email">휴대폰 번호 또는 이메일</label><br>
                        <input type="text" id="email" required name="tel_or_email">
                    </li>
                    <li>
                        <label for="pwd1">비밀번호</label><br>
                        <input type="password" id="pwd1" required minlength="5" placeholder="최소 6자" name="pwd">
                        <p id="pp">비밀번호는 6자 이상이어야 합니다.</p>
                    </li>
                    <li>
                        <label for="pwd2">비밀번호 다시 입력</label><br>
                        <input type="password" id="pwd2" name="pwdck" required>
                    </li>
                    <li>
                        <button id="btn">계속</button>
                    </li>
                    <li>
                        <p id="pp">이미 계정이 있으신가요? <a href="login.jsp" id="p_to_join">로그인하러가기</a></p>
                    </li>
                </ul>
            </fieldset>
        </form>
    </div>
</body>
</html>
