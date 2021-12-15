<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <title>user_register.jsp</title>
    <link type="text/css" href="/project1982/resources/css/3_register.css" rel="stylesheet"/>
    <script type="text/javascript" src="/project1982/resources/js/jquery-1.7.1.js"></script>
	<script  src="/project1982/resources/js/js_userinput.js"></script>
</head>
<body>
      <form action="userInsert.do" method="get" name="userinput" id="login-form">
        <h1>1982 구직자 - 회원가입</h1>
        <div>
	        <input class="id_input" name="userid" type="text" placeholder="아이디를 입력하세요" />
	        <input type="submit" value="중복확인" />
        </div>
	        <input name="password" type="password" placeholder="비밀번호를 입력하세요" />
	        <input name="password" type="password" placeholder="비밀번호 확인" />
        <div>
	        <input class="id_input" name="phone" type="password" placeholder="핸드폰 번호를 입력하세요" />
	        <input type="submit" value="인증요청" />
        </div>
	        <input name="phoneid" type="password" placeholder="인증번호" />
	        <input name="email" type="password" placeholder="이메일" />
	        <input type="submit" value="가입" />
      </form>
</body>
</html>