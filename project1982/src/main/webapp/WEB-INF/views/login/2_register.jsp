<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
    <title>Document</title>
    <link type="text/css" href="/project1982/resources/css/2_register.css" rel="stylesheet"/>
    <script type="text/javascript" src="/project1982/resources/js/jquery-1.7.1.js"></script>
	<script  src="/project1982/resources/js/js_userinput.js"></script>
</head>
<body>
    <form action="userInsert.do" method="get" name="userinput" id="login-form">
        <input name="userid" id="userid" type="text" placeholder="아이디를 입력해주세요" />
        <input type="submit" value="중복확인" />
        <input name="userpass" id="userpass" type="password" placeholder="비밀번호를 입력하세요" />
        <!-- <input name="userpass2" id="userpass2" type="password" placeholder="비밀번호 확인" /> -->
        <input name="usernick" id="usernick" type="text" placeholder="이름을 입력하세요" />
        <input name="usercode" id="usercode"  type="text" placeholder="주민등록번호를 입력하세요" />
        <input name="usergender" id="usergender" type="text" placeholder="성별" />
        <input name="userpn" id="userpn" type="text" placeholder="핸드폰 번호를 입력하세요" />
        <input type="submit" value="인증요청" />
        <input name="userpn" type="password" placeholder="인증번호" />
        <input name="useraddr" id="useraddr" type="text" placeholder="주소" />
        <input name="email" id="email" type="text" placeholder="이메일" />
        <input name="userimg" id="userimg" type="text" placeholder="사용할 이미지를 저장해주세요" />
        
        

        <input type="submit" name="confirm" id="confirm" value="가입하기" />
        <input type="submit" name ="reset" value="취 소" />
        <a href="../main.do">1982</a>
      </form>
</body>
</html>