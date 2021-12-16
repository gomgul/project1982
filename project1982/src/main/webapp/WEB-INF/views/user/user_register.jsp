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
      <form action="userInsert.do" method="post" name="userinput" id="userinput" class="login-form">
        <h1>1982 구직자 - 회원가입</h1>
        <div>
	        <input class="id_input" id="userid" name="userid" type="text" placeholder="아이디를 입력하세요" />
	        <span id="idCheckResult" style="width:150px;color:red"></span>
        </div>
	        <input name="userpass" id="userpass" type="password" placeholder="비밀번호를 입력하세요" />
	        <input name="userpass2" id="userpass2" type="password" placeholder="비밀번호 확인" />
        <div>
       		<input class="username" name="username" id ="username" type="text" placeholder="이름을 입력하세요" />
       		<input class="userbirth" name="userbirth" type="text" placeholder="생년월일을 입력하세요" />
	        <input class="id_input" name="userpn" type="text" placeholder="핸드폰 번호를 입력하세요" />
	        <input type="submit" value="인증요청" />
        </div>
	        <input name="userpn" type="text" placeholder="인증번호" />
	        <input name="usermail" type="text" placeholder="이메일" />
	        <input type="submit" name="confirm" id="confirm" value="가입" />
      </form>
</body>
</html>